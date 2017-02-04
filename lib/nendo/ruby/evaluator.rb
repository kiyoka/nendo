#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# evaluator.rb  -  "evaluator for nendo"
#
#   Copyright (c) 2009-2010  Kiyoka Nishiyama  <kiyoka@sumibi.org>
#
#   Redistribution and use in source and binary forms, with or without
#   modification, are permitted provided that the following conditions
#   are met:
#
#   1. Redistributions of source code must retain the above copyright
#      notice, this list of conditions and the following disclaimer.
#
#   2. Redistributions in binary form must reproduce the above copyright
#      notice, this list of conditions and the following disclaimer in the
#      documentation and/or other materials provided with the distribution.
#
#   3. Neither the name of the authors nor the names of its contributors
#      may be used to endorse or promote products derived from this
#      software without specific prior written permission.
#
#   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
#   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
#   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
#   A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
#   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
#   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
#   TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
#   PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
#   LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
#   NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
#   SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
module Nendo

  # Translate S expression to Ruby expression and Evaluation
  class Evaluator
    include BuiltinFunctions
    EXEC_TYPE_NORMAL    = 1
    EXEC_TYPE_ANONYMOUS = 2
    EXEC_TYPE_TAILCALL  = 3
    LINENO_TIMES = 50

    attr_accessor :runtimeCheck

    def initialize( core, debug = false )
      @compiledLineno = 5 # header comment of compiled code
      @compiledLinenoStack = []
      @core    = core
      @indent  = "  "
      @binding = binding
      @debug   = debug
      @trace_debug = false
      @lexicalVars = []
      @syntaxHash = {}
      @optimize_level = 2
      @runtimeCheck = true
      @backtrace = []
      @backtrace_last = ""
      @displayErrorsFlag = true;
      @char_table_lisp_to_ruby = {
        # list     (! $ % & * + - . / : < = > ? @ ^ _ ~ ...)
        '!'   => '_EXMARK',
        '$'   => '_DOMARK',
        '%'   => '_PAMARK',
        '&'   => '_ANMARK',
        '*'   => '_ASMARK',
        '+'   => '_PLMARK',
        '-'   => '_MIMARK',
        # '.'
        '/'   => '_SLMARK',
        ':'   => '_COMARK',
        '<'   => '_LTMARK',
        '='   => '_EQMARK',
        '>'   => '_GTMARK',
        '?'   => '_QUMARK',
        '@'   => '_ATMARK',
        '^'   => '_NKMARK',
        # '_'
        '~'   => '_CHMARK',
        '...' => '_DOTDOTDOT',
      }
      @char_table_ruby_to_lisp = @char_table_lisp_to_ruby.invert

      @core_syntax_list = [ :quote, :"syntax-quote", :if , :begin , :lambda , :macro , :"&block" , :"%let" , :letrec , :define, :set!, :error, :"%syntax", :"define-syntax", :"let-syntax", :"%guard" ]
      @core_syntax_hash = Hash.new
      @core_syntax_list.each { |x|
        renamed = ("/nendo/core/" + x.to_s).intern
        @core_syntax_hash[ x ] = renamed
      }

      # toplevel binding
      @global_lisp_binding = Hash.new

      # initialize builtin functions as Proc objects
      rubyExp = self.methods.select { |x|
        x.to_s.match( /^_/ )
      }.map { |name|
        [
         defMethodStr( name, false ),
         sprintf( "@%s                        = self.method( :%s        ).to_proc", name, name ),
         sprintf( "@global_lisp_binding['%s'] = self.method( :%s_METHOD ).to_proc", name, name ),
        ].join( " ; " )
      }.join( " ; " )
      eval( rubyExp, @binding )

      # initialize builtin syntax as LispCoreSyntax
      rubyExp = @core_syntax_hash.map { |k,v|
        name1 = toRubySymbol( k )
        name2 = toRubySymbol( v )
        [ sprintf( "@%s                        = LispCoreSyntax.new( :\"%s\" ) ", name1, k ),
          sprintf( "@global_lisp_binding['%s'] = @%s ", name1, name1 ),
          sprintf( "@%s                        = @%s ", name2, name1 ),
          sprintf( "@global_lisp_binding['%s'] = @%s ", name1, name2 ) ].join( " ; " )
      }.join( " ; " )
      eval( rubyExp, @binding )

      # reset gensym counter
      @gensym_counter = 0

      # call depth counter
      @call_depth     = 0
      @call_counters  = Hash.new

      # compiled ruby code
      #  { 'filename1' => [ 'code1' 'code2' ... ],
      #    'filename2' => [ 'code1' 'code2' ... ], ... }
      @compiled_code    = Hash.new
      @source_info_hash = Hash.new

      global_lisp_define( toRubySymbol( "%compile-phase-functions" ), Cell.new())
      load_path = $LOAD_PATH + [ File.dirname(__FILE__) ]
      global_lisp_define( toRubySymbol( "*load-path*"     ), load_path.to_list )
      global_lisp_define( toRubySymbol( "*nendo-version*" ), Nendo::Core.version )
    end

    def global_lisp_define( rubySymbol, val )
      @___tmp = val
      eval( sprintf( "@%s = @___tmp;", rubySymbol ), @binding )
      eval( sprintf( "@global_lisp_binding['%s'] = @___tmp;", rubySymbol ), @binding )
    end

    def setArgv( argv )
      self.global_lisp_define( toRubySymbol( "*argv*"), argv.to_list )
    end

    def setOptimizeLevel( level )
      @optimize_level = level
    end

    def getOptimizeLevel
      @optimize_level
    end

    def setDisplayErrors( flag )
      @displayErrorsFlag = flag
    end

    def lispMethodEntry( name, _log )
      @call_depth += 1
      if @trace_debug and _log
        puts " " * @call_depth + "ENTRY: " + name
      end
    end
    def lispMethodExit( name, _log )
      if @trace_debug and _log
        puts " " * @call_depth + "exit:  " + name
      end
      @call_depth -= 1
    end

    def defMethodStr( name, _log )
      [ "def self." + name.to_s + "_METHOD( origname, pred, args ) ",
        "  lispMethodEntry( origname, " + _log.to_s + " ) ; ",
        "  ret = callProcedure( '" + name.to_s + "', origname, pred, args ) ;",
        "  lispMethodExit( origname,  " + _log.to_s + " ) ; ",
        "  return ret ",
        "end" ].join
    end

    def _gensym( )
      @gensym_counter += 1
      filename = if @lastSourcefile.is_a? String
                   Digest::SHA1.hexdigest( @lastSourcefile )
                 else
                   ""
                 end
      sprintf( "__gensym__%s_%d", filename, @gensym_counter ).intern
    end

    def forward_gensym_counter( )
      @gensym_counter += 10000
    end

    def toRubyValue( val )
      if NilClass == val.class
        "nil"
      elsif TrueClass == val.class
        val.to_s
      elsif FalseClass == val.class
        val.to_s
      else
        val.to_s
      end
    end

    def toRubySymbol( name )
      if SyntacticClosure == name.class
        "_" + name.to_s
      else
        name = name.to_s   if Symbol == name.class
        name = name.to_s   if ParsedSymbol == name.class
        if 0 == name.length
          ""
        else
          name.gsub!( Regexp.new( Regexp.escape( '...' )), @char_table_lisp_to_ruby[ '...' ] )
          arr = name.gsub( /["]/, '' ).split( /[.]/ )
          tmp = arr[0]
          tmp.gsub!( /[:][:]/, "  " ) # save '::'
          @char_table_lisp_to_ruby.each_pair { |key,val|
            tmp.gsub!( Regexp.new( Regexp.escape( key )), val )
          }
          arr[0] = tmp.gsub( /[ ][ ]/, "::" )
          if arr[0].match( /^[A-Z]/ )
            # nothing to do
          elsif arr[0] == ""
            arr[0] = 'Kernel'
          else
            arr[0] = '_' + arr[0]
          end
          arr.join( "." )
        end
      end
    end

    def isRubyInterface( name )
      name.to_s.match( /[.]/ )
    end

    def toLispSymbol( name )
      name = name.to_s   if Symbol == name.class
      name = name.to_s   if ParsedSymbol == name.class
      raise ArgumentError, sprintf( "Error: `%s' is not a lisp symbol", name ) if not ('_' == name[0])
      name = name[1..-1]
      @char_table_ruby_to_lisp.each_pair { |key,val|
        name = name.gsub( Regexp.new( key ), val )
      }
      name
    end

    def errorMessageOf_toRubyArgument( origname, no, req, got )
      sprintf( "Error: [%s] wrong number of arguments for closure `%s' (requires %d, but got %d)", no, origname, req, got )
    end

    def toRubyArgument( origname, pred, args )
      len = args.length
      num = pred.arity
      if 0 == num
        raise ArgumentError, errorMessageOf_toRubyArgument( origname, 1, num, len ) if 0 != len
        []
      elsif 0 < num
        if 0 == len
          raise ArgumentError, errorMessageOf_toRubyArgument( origname, 4, num, len )
        else
          raise ArgumentError, errorMessageOf_toRubyArgument( origname, 2, num, len ) if num != len
          args
        end
      else
        num = num.abs( )-1
        raise ArgumentError, errorMessageOf_toRubyArgument( origname, 3, num, len ) if num > len
        params = []
        rest = []
        args.each_with_index { |x,i|
          if i < num
            params << x
          else
            rest   << x
          end
        }
        result = []
        if 0 < params.length
          result = params
        end
        if 0 == rest.length
          result << Cell.new
        else
          result << rest.to_list
        end
        result
      end
    end

    def trampCall( result )
      while result.class == DelayedCallPacket
        result = __send__( result.rubysym + "_METHOD", result.origname, result.pred, result.args )
      end
      result
    end

    def method_missing( name, *args )
      if @global_lisp_binding[name].is_a? Proc
        @global_lisp_binding[name].call( args[0], args[1], args[2] )
      else
        callProcedure( name, args[0], args[1], args[2] )
      end
    end

    def delayCall( rubysym, origname, pred, args )
      case @optimize_level
      when 0 # no optimize
        callProcedure( rubysym, origname, pred, args )
      else # tail call optimization
        DelayedCallPacket.new( rubysym, origname, pred, args )
      end
    end

    def callProcedure( rubysym, origname, pred, args )
      if pred.nil?
        raise RuntimeError, sprintf( "Error: function `%s' is undefined.", origname )
      end

      if @runtimeCheck
        if @call_counters.has_key?( origname )
          @call_counters[ origname ] += 1
        else
          @call_counters[ origname ]  = 1
        end
      end

      result = pred.call( *toRubyArgument( origname, pred, args ))

      if @runtimeCheck
        @call_counters[ origname ]   -= 1
      end

      result
    end

    # for code generation of Ruby's argument values
    # in case:  str = ","
    # [1,"2",3] => [
    #                [ 1,  ","]
    #                ["2", ","]
    #                [ 3 ]
    #              ]
    def separateWith( arr, str )
      seps = []
      (arr.length-1).times {|n| seps << str }
      arr.zip( seps ).map{ |x|
        x.select { |elem| elem }
      }
    end

    def isDefines( sym )
      sym = castParsedSymbol( sym )
      result = [ :define, :set!, :"define-syntax", @core_syntax_hash[ :define ], @core_syntax_hash[ :set! ], @core_syntax_hash[ :"define-syntax" ] ].include?( sym )
      return result
    end

    def embedBacktraceInfo( sourcefile, lineno )
      str = sourcefile + ":" + lineno.to_s
      if @backtrace_last != str
        @backtrace << str
        if ( 10 < @backtrace.size )
          @backtrace.shift
        end
        #p @backtrace
      end
      @backtrace_last = str
    end

    def generateEmbedBacktraceInfo( sourcefile, lineno, arr )
      if sourcefile and lineno
        if @runtimeCheck
          ["begin",
           [
             sprintf( 'embedBacktraceInfo( "%s", %s );', sourcefile, lineno ),
             arr],
           "end"
          ]
        else
          [arr]
        end
      else
        arr
      end
    end

    def execFunc( funcname, args, sourcefile, lineno, locals, sourceInfo, execType )
      funcname = castParsedSymbol( funcname )
      if isDefines( funcname )
        ar = args.cdr.map { |x| x.car }
        variable_sym = toRubySymbol( args.car.to_s.sub( /^:/, "" ))
        global_cap = locals.flatten.include?( variable_sym.split( /[.]/ )[0] ) ? nil : "@"
        if global_cap and sourceInfo
          sourceInfo.setVarname( toLispSymbol( variable_sym ))
        end
        [ "begin ",
          makeComment("#execFunc"),
          [
           if global_cap
             [
              defMethodStr( variable_sym, true ),
              sprintf( "@global_lisp_binding['%s'] = self.method( :%s_METHOD )", variable_sym, variable_sym )
             ]
           else
             ""
           end,
           makeComment(sprintf("#execFunc(funcname=%s)",funcname)),
           sprintf( "%s%s = ", global_cap, variable_sym ),
           "trampCall(", [ ar ], ")"],
          "end"
        ]
      elsif :error == funcname or  @core_syntax_hash[ :error ] == funcname
        arr = if args.length < 2
                args.car
              else
                [ args.car + " ' ' + ",
                  "_write_MIMARKto_MIMARKstring(",
                  args.cdr.car,
                  ")" ]
              end
        [
         'begin raise RuntimeError, ',
         arr,
         "rescue => __e ",
         sprintf( "  __e.set_backtrace( [\"%s:%d\"] + __e.backtrace )", sourcefile, lineno ),
         "  raise __e",
         "end"]
      else
        if (EXEC_TYPE_ANONYMOUS != execType) and isRubyInterface( funcname )
          # Ruby method
          #   1) convert arguments
          translatedArr  = args.map { |x| x.car }
          #   2) generate caller code part
          lispSymbolReference( toRubySymbol( funcname ), locals, translatedArr, sourcefile, lineno )
        else
          # Nendo function
          arr = separateWith( args.map { |x| x.car }, "," )
          origname = funcname.to_s
          sym   = toRubySymbol( origname )
          if EXEC_TYPE_ANONYMOUS == execType
            [sprintf( "trampCall( callProcedure( nil, 'anonymouse', " ),
              [ funcname ] + [ "," ],
              "[", arr, "]",
              "          ))"]
          else
            result = false
            if (execType == EXEC_TYPE_NORMAL) and (not locals.flatten.include?( sym ))
              if 1 < @optimize_level
                result = optimizedFunc( origname, sym, arr )
              end
            end
            if result
#              puts "result:"
#              pp result
              generateEmbedBacktraceInfo( sourcefile, lineno, result )
            else
              _call = case execType
                      when EXEC_TYPE_NORMAL
                        if locals.flatten.include?( sym )
                          [          "trampCall( callProcedure(  '" + sym + "', ", "))" ] # local function
                        else
                          [ sprintf( "trampCall( self.%s_METHOD( ", sym ), "))" ]         # toplevel function
                        end
                      when EXEC_TYPE_TAILCALL
                        [ sprintf( "delayCall( '%s', ", sym ),  ")"  ]
                      end

              temp = [
                sprintf( "%s '%s',", _call[0], origname ),
                [lispSymbolReference( sym, locals, nil, sourcefile, lineno )] + [","],
                "[", arr, "]",
                sprintf( "             %s", _call[1] )]
              generateEmbedBacktraceInfo( sourcefile, lineno, temp )
            end
          end
        end
      end
    end

    def makeComment( commentStr )
      [ commentStr ]
    end
    
    def makeSetVariable( car, cdr, locals, sourceInfo )
      cdr.cdr.each { |x|
        if Cell == x.class
          x.car = translate( x.car, locals, sourceInfo )
        end
      }
      execFunc( car, cdr, car.sourcefile, car.lineno, locals, sourceInfo, EXEC_TYPE_ANONYMOUS )
    end

    def makeBegin( args, locals )
      ar = args.map { |e|
        translate( e.car, locals )
      }
      if ar.size < 2
        ar
      else
        ["begin ", makeComment("#makeBegin"), ar, "end"]
      end
    end

    # returns [ argsyms[], string ]
    def toRubyParameter( argform )
      argsyms = []
      locals = []
      rest = false
      if _symbol_QUMARK( argform )
        rest       = argform
      else
        argsyms    = argform.map { |x|  toRubySymbol( x.car ) }
        locals     = argsyms.clone
        if argform.lastAtom
          rest = argform.getLastAtom
        end
      end
      if rest
        rest       = toRubySymbol( rest )
        locals     << rest
        argsyms    << "*__rest__"
        [ locals, sprintf( "|%s| %s = __rest__[0] ; ", argsyms.join( "," ), rest ) ]
      else
        [ locals, sprintf( "|%s|",                     argsyms.join( "," ))        ]
      end
    end

    def makeClosure( sym, args, locals )
      first = args.car
      rest  = args.cdr
      ( _locals, argStr ) = toRubyParameter( first )
      str = case sym
            when :macro
              sprintf( "LispMacro.new { %s ", argStr )
            when :lambda
              sprintf( "Proc.new { %s ", argStr )
            when :"%syntax"
              sprintf( "LispSyntax.new { %s ", argStr )
            when :"&block"
              sprintf( "&Proc.new { %s ", argStr )
            else
              raise "Error: makeClosure: unknown symbol type " + sym
            end
      ar = rest.map { |e|
        translate( e.car, locals.clone + [_locals])
      }
      [ str, ar, "}" ]
    end

    def makeIf( args, locals )
      _condition = translate( args.car,         locals )
      _then      = translate( args.cdr.car,     locals )
      _else      = nil
      if 2 < args.length
        _else    = translate( args.cdr.cdr.car, locals )
      end
      if _else
        ["if ( ", _condition, " ) then",
         [ _then ],
         "else",
         [ _else ],
         "end"]
      else
        ["if ( ", _condition, " ) then",
         [ _then ],
         "end"]
      end
    end

    def makeLet( args, locals )
      _name = "___lambda"
      argvals = []
      rest = args.cdr
      if _null_QUMARK( args.car )
        # nothing to do
        lambda_head = sprintf( "%s = lambda { || ", _name )
      else
        argsyms = args.car.map { |x|
          toRubySymbol( x.car.car.to_s )
        }
        argvals = args.car.map.with_index { |x,i|
          translate( x.car.cdr.car, locals )
        }
        lambda_head = sprintf( "%s = lambda { |%s| ", _name, argsyms.join( "," ))
      end
      ["begin",
       makeComment("#makeLet"),
       [lambda_head,
        rest.map { |e|  translate( e.car, locals.clone + [argsyms] ) },
        sprintf( "} ; %s.call(", _name ),
        separateWith( argvals, "," ),
        sprintf( "           )")],
       "end"]
    end

    def makeLetrec( args, locals )
      _name = "___lambda"
      argvals = []
      argsyms = []
      rest = args.cdr
      if _null_QUMARK( args.car )
        # nothing to do
        lambda_head = sprintf( "%s = lambda { || ", _name )
      else
        argsyms = args.car.map { |x|
          toRubySymbol( x.car.car.to_s )
        }
        argvals = args.car.map { |x|
          translate( x.car.cdr.car, locals.clone + [argsyms] )
        }
        lambda_head = sprintf( "%s = lambda { |%s| ", _name, argsyms.join( "," ))
      end
      ["begin ",
       makeComment("#makeLetrec"),
       [lambda_head,
        argsyms.zip( argvals ).map { |x| [ x[0], " = ", x[1] ] },
        rest.map { |e|  translate( e.car, locals.clone + [argsyms] ) },
        sprintf( "} ; %s.call(", _name ),
        argsyms.map { |x| "nil" }.join( "," ),
        sprintf( "           )")],
       "end"]
    end

    def makeGuard( args, locals )
      _var        = toRubySymbol( args.car )
      _locals     = locals.clone + [_var]
      _case       = translate( args.cdr.car,         _locals )
      _thunk      = translate( args.cdr.cdr.car,     _locals )
      ["begin ",
       makeComment("#makeGuard"),
       [ _thunk ],
       "rescue => " + _var,
       [ _case ],
       "end" ]
    end

    def apply( car, cdr, sourcefile, lineno, locals, sourceInfo, execType )
      cdr.each { |x|
        if Cell == x.class
          x.car = translate( x.car, locals, sourceInfo )
        end
      }
      execFunc( car, cdr, sourcefile, lineno, locals, sourceInfo, execType )
    end

    def genQuote( sexp, str = "" )
      origStr = str
      case sexp
      when Cell
        if sexp.isNull
          str += "Cell.new()"
        else
          arr = sexp.map { |x| genQuote( x.car ) }
          str += "Cell.new("
          str += arr.join( ",Cell.new(" )
          str += "," + genQuote( sexp.getLastAtom )  if sexp.lastAtom
          str += arr.map{ |e| ")" }.join
        end
      when Array
        arr = sexp.map { |x| genQuote( x ) }
        str += "[" +  arr.join(",") + "]"
      when Symbol
        str += sprintf( ":\"%s\"", sexp.to_s )
      when ParsedSymbol
        str += sprintf( ":\"%s\"", sexp.to_s )
      when String, LispString
        str += sprintf( "\"%s\"", LispString.escape( sexp ))
      when LispKeyword
        str += sprintf( "LispKeyword.new( \"%s\" )", sexp.key.to_s )
      when TrueClass, FalseClass, NilClass  # reserved symbols
        str += toRubyValue( sexp )
      when SyntacticClosure
        str += sprintf( ":\"%s\"", sexp.originalSymbol.to_s )
      when Nil
        str += "Cell.new()"
      else
        str += sprintf( "%s", sexp )
      end
      str
    end

    def trampCallCap( sym )
      if isRubyInterface( sym )
        arr = sym.split( /[.]/ )
        arr[0] = sprintf( "trampCall(%s)", arr[0] )
        arr.join( "." )
      else
        "trampCall(" + sym + ")"
      end
    end

    def lispSymbolReference( sym, locals, translatedArr, sourcefile, lineno )
      variable_sym = sym.split( /[.]/ )[0]
      global_cap = if variable_sym.match( /^[A-Z]/ )
                     nil
                   else
                     locals.flatten.include?( variable_sym ) ? nil : "@"
                   end
      expression = if translatedArr
                     [trampCallCap( sprintf( "%s%s(", global_cap, sym )),
                      separateWith( translatedArr, "," ),
                      sprintf( "  )" )]
                   else
                     [trampCallCap( sprintf( "%s%s", global_cap, sym ))]
                   end
      if global_cap
        if @runtimeCheck
          ["begin",
           [sprintf( "if @global_lisp_binding.has_key?('%s') then", variable_sym ),
            expression,
            sprintf( 'else raise NameError.new( "%s:%d: Error: undefined variable %s", "%s" ) end', sourcefile, lineno, toLispSymbol( variable_sym ), toLispSymbol( variable_sym )),
            sprintf( 'rescue => __e ; __e.set_backtrace( ["%s:%d"] + __e.backtrace ) ; raise __e',  sourcefile, lineno  )],
           "end"]
        else
          expression
        end
      else
        if @runtimeCheck
          ["begin",
           [expression,
            sprintf( 'rescue => __e ; __e.set_backtrace( ["%s:%d"] + __e.backtrace ) ; raise __e', sourcefile, lineno )],
           "end"]
        else
          expression
        end
      end
    end

    # Lisp->Ruby translater
    #    - locals is array of closure's local variable list
    #      when S-expression is
    #      (let ((a 1)
    #            (b 2))
    #        (let ((c 3))
    #            (print (+ a b c))))
    #         => locals must be  [["_a" "_b"]["_c"]] value.
    def translate( sexpArg, locals, sourceInfo = nil )
      sexp = castParsedSymbol( sexpArg )
      case sexp
      when Cell
        inv = @core_syntax_hash.invert
#        if sexp.car.to_s.match( /begin/ ) and sexp.car.to_s.match( /core/ )
#          p inv
#          p inv.keys
#          p sexp.car.class
#          p castParsedSymbol( sexp.car ).intern, inv.has_key?( castParsedSymbol( sexp.car ).intern )
#          p inv[ castParsedSymbol( sexp.car ).intern ]
#        end
        if ParsedSymbol == sexp.car.class or Symbol == sexp.car.class
          car = if inv.has_key?( castParsedSymbol( sexp.car ).intern )
                  inv[ castParsedSymbol( sexp.car ).intern ]
                else
                  castParsedSymbol( sexp.car )
                end
        else
          car = sexp.car
        end
        car = castParsedSymbol( car )

        if :quote == car
          genQuote( sexp.second )
        elsif :"syntax-quote" == car
          [ "Cell.new(:\"syntax-quote\", ", genQuote( sexp.cdr ), ")" ]
        elsif sexp.isDotted
          raise NameError, "Error: can't eval dotted pair."
        elsif sexp.isNull
          [ "Cell.new()" ]
        elsif isDefines( car )
          self.makeSetVariable( car, sexp.cdr, locals, sourceInfo )
        elsif :begin == car
          self.makeBegin( sexp.cdr, locals )
        elsif :lambda == car
          self.makeClosure( :lambda, sexp.cdr, locals )
        elsif :macro == car
          self.makeClosure( :macro, sexp.cdr, locals )
        elsif :"%syntax" == car
          self.makeClosure( :"%syntax", sexp.cdr, locals )
        elsif :"&block" == car
          self.makeClosure( :"&block", sexp.cdr, locals )
        elsif :if == car
          self.makeIf( sexp.cdr,    locals )
        elsif :"%let" == car
          self.makeLet( sexp.cdr,   locals )
        elsif :letrec == car
          self.makeLetrec( sexp.cdr,   locals )
        elsif :"%guard" == car
          self.makeGuard( sexp.cdr,   locals )
        elsif :"%tailcall" == car
          if sexp.cdr.car.is_a? Cell
            sexp = sexp.cdr.car
            if isDefines( sexp.car )
              translate( sexp, locals, sourceInfo )
            else
              if sexp.car.is_a? Cell
                self.apply( translate( sexp.car, locals, sourceInfo ), sexp.cdr, sexp.car.car.sourcefile, sexp.car.car.lineno, locals, sourceInfo, EXEC_TYPE_ANONYMOUS )
              else
                self.apply( sexp.car, sexp.cdr, sexp.car.sourcefile, sexp.car.lineno, locals, sourceInfo, EXEC_TYPE_TAILCALL )
              end
            end
          else
            raise RuntimeError, "Error: special form tailcall expects function call expression."
          end
        elsif Cell == sexp.car.class
          self.apply( translate( sexp.car, locals, sourceInfo ), sexp.cdr, sexp.car.car.sourcefile, sexp.car.car.lineno, locals, sourceInfo, EXEC_TYPE_ANONYMOUS )
        else
          self.apply( sexp.car, sexp.cdr, sexp.car.sourcefile, sexp.car.lineno, locals, sourceInfo, EXEC_TYPE_NORMAL )
        end
      when Array
        raise RuntimeError, "Error: can't eval unquoted vector."
      else
        case sexpArg
        when Symbol
          sym = sexp.to_s
          sym = toRubySymbol( sym )
          lispSymbolReference( sym, locals, nil, sexp.sourcefile, sexp.lineno )
        when ParsedSymbol
          sym = sexp.to_s
          sym = toRubySymbol( sym )
          lispSymbolReference( sym, locals, nil, sexpArg.sourcefile, sexpArg.lineno )
        when 1.class
          sexp.to_s
        when String, LispString
          sprintf( "\"%s\"", LispString.escape( sexp ))
        when LispRegexp
          if sexp.ignoreCase
            sprintf( "Regexp.new( \"%s\", Regexp::IGNORECASE)", sexp.escape )
          else
            sprintf( "Regexp.new( \"%s\")", sexp.escape )
          end
        when LispKeyword
          sprintf( "LispKeyword.new( \"%s\" )", sexp.key )
        when Nil
          "Nil.new"
        when TrueClass, FalseClass, NilClass  # reserved symbols
          toRubyValue( sexp )
        when SyntacticClosure
          toRubySymbol( sexp )
        else
          sexp.to_s
        end
      end
    end


    # warp sexp by lexicalVars
    def __wrapNestedLet( sexp, lexicalVars )
      if 0 == lexicalVars.size
        sexp
      else
        elem  = lexicalVars.shift
        Cell.new( :"%let",
             Cell.new(
                  Cell.new(
                       Cell.new( elem[0], elem[1] )),
                  Cell.new( __wrapNestedLet( sexp, lexicalVars ) )))
      end
    end

    def __removeSameLexicalScopeVariables( frame )
      frame.select {|x|
        # search same varname and different value
        found = frame.any? {|y|
          x[0] == y[0] and (not _equal_QUMARK( x[1], y[1] ))
        }
        if found
          x
        else
          false
        end
      }
    end

    def macroexpandInit( initVal )
      @macroExpandCount = initVal
    end

    def macroexpandEngineLoop( sexp, syntaxArray, lexicalVars )
      converge = true
      begin
        newSexp  = macroexpandEngine( sexp, syntaxArray, lexicalVars )
        converge = _equal_QUMARK( newSexp, sexp )
        sexp = newSexp
      end until converge or (@macroExpandCount <= 0)
      sexp
    end

    def macroexpandEngine( sexp, syntaxArray, lexicalVars )
      if @macroExpandCount <= 0
        sexp
      else
        __macroexpandEngine( sexp, syntaxArray, lexicalVars )
      end
    end

    #
    # expand (syntax-rules ...) => (%syntax-rules ...)
    #
    def __expandSyntaxRules( rules, syntaxArray, lexicalVars )
      if :"%syntax-rules" == rules.car
        rules
      else
        ellipse = rules.second
        pattern_body_list = rules.cdr.cdr

        lst = []
        lst << :"syntax-rules"
        lst << ellipse
        pattern_body_list.each {|xx|
          pattern_body = xx.car
          pattern = pattern_body.first
          body = pattern_body.second
          new_pattern_body = [ pattern, macroexpandEngine( body, syntaxArray, lexicalVars ) ].to_list
          lst << new_pattern_body
        }
        lst.to_list
      end
    end

    # eval (syntax-rules ...) sexp
    #
    # return:
    #   (%syntax-rules
    #    ((v1 <<@syntaxHash's key1>>)
    #     (v2 <<@syntaxHash's key2>>)
    #     body))
    #
    #   example:
    #   (%syntax-rules
    #    ((v1 "x = 10 // (+ x v1)")
    #     (v2 "y = 20 // (+ y v2)"))
    #    (+ v1 v2))
    #
    def __evalSyntaxRules( rules, lexicalVars )
      if :"%syntax-rules" == rules.car
        rules.second
      else
        lexvars = lexicalVars.select { |x|
          if _symbol_MIMARKinclude_QUMARK( rules, x[0].intern )
            x
          elsif lexicalVars.find {|y| _symbol_MIMARKinclude_QUMARK( y[1], x[0].intern ) }
            x
          else
            false
          end
        }

        __setupLexicalScopeVariables( lexvars )
        keyStr = lexvars.map {|z|
          z[0].to_s + " / " +  write_to_string( z[1] )
        }.join( " / " )
        keyStr += " // " + write_to_string( rules )
        if @syntaxHash.has_key?( keyStr )
          true
        else
          @syntaxHash[ keyStr ] = [ lexvars,
            self.lispEval( rules, "dynamic syntax-rules sexp (no source) ", 1 ) ]
        end
        __setupLexicalScopeVariables( [] )
        keyStr
      end
    end

    # args:
    #
    #   syntaxArray ... let-syntax's identifiers
    #                   [
    #                      [ identifier-name, key of @syntaxHash, sexp of (syntax-rules ...), frame_of_let-syntax ],
    #                        .
    #                        .
    #                   ]
    #   lexicalVars ... let's identifiers
    #                   [
    #                      [ identifier-name, macroexpandEngine( let's body ) ],
    #                   ]
    #
    #
    def __macroexpandEngine( sexp, syntaxArray, lexicalVars )
      sexp == castParsedSymbol( sexp )
      case sexp
      when Cell
        car = castParsedSymbol( sexp.car )
        if :quote == car or :"syntax-quote" == car or @core_syntax_hash[ :quote ] == car or @core_syntax_hash[ :"syntax-quote" ] == car
          sexp
        elsif :"%let" == car or :letrec == car or @core_syntax_hash[ :"%let" ] == car or @core_syntax_hash[ :letrec ] == car
          # catch lexical identifiers of `let' and `letrec'.
          arr = sexp.second.map { |x|
            [ castParsedSymbol( x.car.car ), macroexpandEngine( x.car.cdr, syntaxArray, lexicalVars ) ]
          }
          lst = arr.map {|x| Cell.new( x[0], x[1] ) }.to_list
          ret = Cell.new( car,
                     Cell.new( lst,
                          macroexpandEngine( sexp.cdr.cdr, syntaxArray, lexicalVars + arr )))
          ret
        elsif :"let-syntax" == car
          sexp.second.each {|x|
            if not x.car.second.is_a? Cell
              raise SyntaxError, "Error: let-syntax get only '((name (syntax-rules ...)))' form but got: " + write_to_string( x )
            elsif not ( castParsedSymbol( x.car.second.first ) == :"syntax-rules" or castParsedSymbol( x.car.second.first ) == :"%syntax-rules")
              raise SyntaxError, "Error: let-syntax get only '((name (syntax-rules ...)))' form but got: " + write_to_string( x )
            end
          }
          arr_tmp = sexp.second.map { |x|
            [ castParsedSymbol( x.car.first ), castParsedSymbol( __expandSyntaxRules( x.car.second, syntaxArray, lexicalVars )) ]
          }
          arr = arr_tmp.map {|x|
            [ castParsedSymbol( x[0] ), castParsedSymbol( __evalSyntaxRules( x[1], lexicalVars )), castParsedSymbol( x[1] ), castParsedSymbol( lexicalVars ) ]
          }

          # trial (expand recursively)
          arr_tmp = arr.map { |x|
            [ castParsedSymbol( x[0] ), castParsedSymbol( __expandSyntaxRules( x[2], syntaxArray + arr, lexicalVars )) ]
          }
          arr = arr_tmp.map {|x|
            [ castParsedSymbol( x[0] ), castParsedSymbol( __evalSyntaxRules( x[1], lexicalVars )), castParsedSymbol( x[1] ), castParsedSymbol( lexicalVars ) ]
          }

          # keywords = ((let-syntax-keyword ( let-syntax-body ))
          #             (let-syntax-keyword ( let-syntax-body ))
          #             ..)
          newKeywords = arr.map { |e|
            [ castParsedSymbol(e[0]), [ :"%syntax-rules", e[1]].to_list ].to_list
          }.to_list

          ret = Cell.new( :"let-syntax",
                     Cell.new( newKeywords, macroexpandEngine( sexp.cdr.cdr, syntaxArray + arr, lexicalVars )))

          ret
        else
          car = castParsedSymbol( car )
          sym = toRubySymbol( car.to_s )
          newSexp = sexp
          if isRubyInterface( sym )
            # do nothing
            sexp
          elsif _symbol_QUMARK( car ) and eval( sprintf( "(defined? @%s and LispMacro == @%s.class)", sym,sym ), @binding )
            eval( sprintf( "@__macro = @%s", sym ), @binding )
            newSexp = trampCall( callProcedure( nil, sym, @__macro, sexp.cdr.to_arr ))
          elsif _symbol_QUMARK( car ) and eval( sprintf( "(defined? @%s and LispSyntax == @%s.class)", sym,sym ), @binding )
            # expected input is
            #   (syntaxName arg1 arg2 ...)
            # will be transformed
            #   (syntaxName (syntaxName arg1 arg2 ...) () (global-variables))
            eval( sprintf( "@__syntax = @%s", sym ), @binding )
            newSexp = trampCall( callProcedure( nil, sym, @__syntax, [ sexp, Cell.new(), _global_MIMARKvariables( ) ] ))
          elsif _symbol_QUMARK( car ) and syntaxArray.map {|arr|
              arr[0].intern
            }.include?( car.intern )
            # lexical macro expandeding
            symbol_and_syntaxObj = syntaxArray.reverse.find {|arr|
              car == castParsedSymbol( arr[0] )
            }
            keys    = syntaxArray.reverse.map { |arr| castParsedSymbol( arr[0] ) }
            if not symbol_and_syntaxObj
              raise "can't find valid syntaxObject"
            end
            vars       = symbol_and_syntaxObj[3].map { |arr| castParsedSymbol( arr[0] ) }
            lexvars    = @syntaxHash[ symbol_and_syntaxObj[1] ][0]
            lispSyntax = @syntaxHash[ symbol_and_syntaxObj[1] ][1]
            newSexp = trampCall( callProcedure( nil, castParsedSymbol( symbol_and_syntaxObj[0] ), lispSyntax, [
                                                  sexp,
                                                  Cell.new(),
                                                  (_global_MIMARKvariables( ).to_arr + keys + vars).to_list ] ))
            newSexp = __wrapNestedLet( newSexp, __removeSameLexicalScopeVariables( lexicalVars + lexvars ))
          end
          if _equal_QUMARK( newSexp, sexp )
            sexp.map { |x|
              if x.car.is_a? Cell
                macroexpandEngine( x.car, syntaxArray, lexicalVars )
              else
                x.car
              end
            }.to_list( sexp.lastAtom, sexp.getLastAtom )
          else
            @macroExpandCount -= 1
            newSexp
          end
        end
      else
        sexp
      end
    end

    def castParsedSymbol( arg )
      if arg.class == ParsedSymbol
        arg.intern
      else
        arg
      end
    end

    def macroexpandPhase( sexp )
      macroexpandInit( 100000 )
      _strip_MIMARKlet_MIMARKsyntax_MIMARKkeyword(
         _strip_MIMARKsyntax_MIMARKquote(
            macroexpandEngineLoop( sexp, [], [] )))
    end

    def adjustLineno( target_lineno, compiledLineno )
      str = ""
      if compiledLineno < target_lineno
        while compiledLineno < target_lineno
          str += "\n"
          compiledLineno += 1
        end
      end
      return str
    end

    def ppRubyExp( level, exp, lineno )
      cur_lineno = (lineno - 1) * LINENO_TIMES

      first_crs = adjustLineno( cur_lineno, @compiledLineno )
      @compiledLineno += first_crs.size()

      head = [ first_crs,  sprintf( "\n#line %d curLineno=%d compiledLineno=%d\n", lineno, cur_lineno, @compiledLineno ) ]
      @compiledLineno += 2
               
      indent = @indent * level
      body = exp.map { |x|
        if Array == x.class
          ppRubyExp( level+1, x, lineno )
        else
          str = sprintf( "%s", x )
          arr = str.split( /\n/ )
          @compiledLineno += arr.size() - 1

          if str.match(/embedBacktraceInfo.+;/)
            m = str.match(/^embedBacktraceInfo[(] \"([^\"]+)\", ([0-9]+).+;/)
            if m
              fn = m[1]
              cur_lineno = (m[2].to_i-1) * LINENO_TIMES
            else
              fn = ""
              cur_lineno = 0
            end
            crs = adjustLineno( cur_lineno, @compiledLineno )
            @compiledLineno += crs.size()
            sprintf( "%s#embedBacktraceInfo  %s  %d  target=%d  cur=%d  %s \n%s%s",
                     indent, fn, cur_lineno / LINENO_TIMES,
                     @compiledLineno, cur_lineno, crs,
                     indent, str)
          elsif str == 'end'
            @compiledLineno += 1
            sprintf( "\n%s%s", indent, str )
          elsif str.match( /^[*+-]$/ )
            sprintf( "%s%s", indent, str )
          elsif str == ">" or str == ">=" or str == "<" or str == "<="
            sprintf( "%s%s", indent, str )
          elsif str.match( /^[,]/ ) or str.match( /^ = / )
            sprintf( "%s%s", indent, str )
          else
            @compiledLineno += 1
            sprintf( "\n%s%s", indent, str )
          end
        end
      }
      return head + body
    end

    def displayTopOfCalls( exception )
      if @displayErrorsFlag
        STDERR.puts( "\n  <<< Top of calls >>>" )
        strs = []
        @call_counters.each_key { |funcname|
          if 0 < @call_counters[ funcname ]
            strs << sprintf( "  %7d : %-20s", @call_counters[ funcname ], funcname )
          end
        }
        strs.sort.reverse.each { |str|
          STDERR.puts( str )
        }
      end
    end

    def displayBacktrace( exception )
      if @displayErrorsFlag
        STDERR.printf("-------------- Nendo backtrace ---------------\n")
        STDERR.printf("%s\n",exception.to_s)
        exception.backtrace.each {|str|
          line = normalizeBacktrace(str)
          if line
            STDERR.printf("	from %s\n",line)
          end
        }
        STDERR.printf("\n")
        STDERR.printf("-------------- Ruby  backtrace ---------------\n")
      end
    end
    
    def normalizeBacktrace( str )
      fields = str.split(/:/)
      if 3 <= fields.size()
        (filename,compiled_lineno,funcname) = fields
        if filename.match( ".nnd$" ) or filename.match( ".nndc$" ) or filename.match( ".nndc.nc$" ) or filename.match( ".scm$" )
          lineno = 1
          if compiled_lineno
            compiled_lineno = compiled_lineno.to_i
            lineno = compiled_lineno / LINENO_TIMES
            if lineno < 1
              lineno = 1
            end
          end
          
          funcname = funcname.sub(/^in [`]/,"")
          funcname = funcname.sub(/[']$/,"")
          if funcname.match(/_METHOD$/)
            funcname = funcname.sub(/_METHOD$/,"")
          else
            return nil
          end
          if '_' == funcname[0]
            funcname = toLispSymbol(funcname)
          end
          return sprintf( "%s:%s:in `%s' <nendo function> (compiled lineno=%d)",filename,lineno,funcname,compiled_lineno)
        else
          return nil
        end
      else
        return nil
      end
    end

    def lispEval( sexp, sourcefile, lineno )
      begin
        sourceInfo = SourceInfo.new
        @lastSourcefile = sourcefile
        @lastLineno     = lineno
        sourceInfo.setSource( sourcefile, lineno, sexp )

        # macro expand phase
        sexp = macroexpandPhase( sexp )
        if @debug
          printf( "\n          expaneded=<<< %s >>>\n", (Printer.new())._print(sexp))
        end

        # compiling phase written
        origsym = "%compile-phase"
        sym = toRubySymbol( origsym )
        if ( eval( sprintf( "(defined? @%s and Proc == @%s.class)", sym,sym ), @binding ))
          eval( sprintf( "@___tmp = @%s", sym ), @binding )
          sexp = trampCall( callProcedure( nil, origsym, @___tmp, [ sexp ]))
          if @debug
            printf( "\n          compiled= <<< %s >>>\n", (Printer.new())._print(sexp))
          end
        end
        sourceInfo.setExpanded( sexp )

        arr = [ "trampCall( ", translate( sexp, [], sourceInfo ), " )" ]
        rubyExp = ppRubyExp( 0, arr, lineno ).flatten.join
        sourceInfo.setCompiled( rubyExp )
        if not @compiled_code.has_key?( sourcefile )
          @compiled_code[ sourcefile ] = Array.new
        end
        @compiled_code[ sourcefile ] << rubyExp
        if sourceInfo.varname
          @source_info_hash[ sourceInfo.varname ] = sourceInfo
        end
        printf( "          rubyExp=<<<\n%s\n>>>\n", rubyExp ) if @debug
        eval( rubyExp, @binding, @lastSourcefile, @compiledLineno )
      rescue SystemStackError => e
        displayTopOfCalls( e )
        raise e
      rescue => e
        displayBacktrace( e )
        raise e
      end
    end

    def pushCompiledLineno(lineno)
      @compiledLinenoStack.push(lineno)
    end

    def popCompiledLineno( )
      if 1 < @compiledLinenoStack.size()
        return @compiledLinenoStack.pop()
      end
      return 0
    end
    
    def __PAMARKload( filename )
      pushCompiledLineno(@compiledLineno)
      @compiledLineno = 5 # header comment of compiled code
      printer = Printer.new( @debug )
      open( filename, "r:utf-8" ) {|f|
        reader = Reader.new( f, filename, false )
        while true
          lineno = reader.lineno
          s = reader._read
          if s[1] # EOF?
            break
          elsif Nil != s[0].class
            printf( "\n          readExp=<<< %s >>>\n", printer._print(s[0]) ) if @debug
            self.lispEval( s[0], reader.sourcefile, lineno )
          end
        end
      }
      forward_gensym_counter()
      @compiledLineno = popCompiledLineno()
    end

    def _load_MIMARKcompiled_MIMARKcode_MIMARKfrom_MIMARKstring( rubyExp )
      eval( rubyExp, @binding )
      forward_gensym_counter()
    end

    def __PAMARKload_MIMARKcompiled_MIMARKcode( filename )
      open( filename, "r:utf-8" ) { |f|
        eval( f.read, @binding, filename, 1 )
      }
      forward_gensym_counter()
    end

    def _clean_MIMARKcompiled_MIMARKcode
      @compiled_code = Hash.new
    end

    def _get_MIMARKcompiled_MIMARKcode
      @compiled_code
      ret = Hash.new
      @compiled_code.each_key { |key|
        ret[key] = @compiled_code[key].to_list
        ret[key]
      }
      ret.to_list
    end

    def _eval( sexp )
      self.lispEval( sexp, "dynamic S-expression ( no source )", 1 )
    end

    def _enable_MIMARKidebug()
      @debug = true
    end
    def _disable_MIMARKidebug()
      @debug = false
    end
    def _enable_MIMARKtrace()
      @trace_debug = true
    end
    def _disable_MIMARKtrace()
      @trace_debug = false
    end
    def _set_MIMARKoptimize_MIMARKlevel(level)
      self.setOptimizeLevel( level )
    end
    def _get_MIMARKoptimize_MIMARKlevel()
      self.getOptimizeLevel
    end

    def _get_MIMARKsource_MIMARKinfo( varname )
      info = @source_info_hash[ varname.to_s ]
      if info
        [
         Cell.new( "varname",           info.varname ),
         Cell.new( "sourcefile",        info.sourcefile ),
         Cell.new( "lineno",            info.lineno ),
         Cell.new( "source",            info.source_sexp ),
         Cell.new( "expanded",          info.expanded_sexp ),
         Cell.new( "compiled_str",      info.compiled_str ) ].to_list
      else
        raise NameError, sprintf( "Error: not found variable [%s]. \n", varname.to_s )
      end
    end

    def __PAMARKexport_MIMARKto_MIMARKruby( origname, pred )
      if toRubySymbol( origname ) != ("_" + origname)
        raise ArgumentError, "Error: %export-to-ruby requires function name in ruby method naming rule."
      end
      if not _procedure_QUMARK( pred )
        raise ArgumentError, "Error: %export-to-ruby requires 'pred' as a Proc instance."
      end
      if 0 > pred.arity
        raise ArgumentError, "Error: %export-to-ruby requires only a function that have fixed length argument."
      end
      if self.methods.include?( origname.intern ) or @core.methods.include?( origname.intern )
        raise RuntimeError, "Error: %export-to-ruby: Nendo::Core." + origname + " method was already deifned."
      end

      argsStr = (1..(pred.arity)).map { |n| "arg" + n.to_s }.join( "," )
      str = [ "def self." + origname + "(" + argsStr + ")",
              sprintf( "  trampCall( callProcedure( nil, '%s', @_%s, [ " + argsStr + " ] )) ",
                       origname, origname ),
              "end",
              ";",
              "def @core." + origname + "(" + argsStr + ")",
              "  @evaluator." + origname + "(" + argsStr + ") ",
              "end"
            ].join
      eval( str, @binding )
      true
    end

    def __setupLexicalScopeVariables( lexicalVars )
      @lexicalVars = lexicalVars.clone
    end

    def _make_MIMARKsyntactic_MIMARKclosure( mac_env, use_env, identifier )
      if _pair_QUMARK( identifier )
        if :"syntax-quote" == castParsedSymbol( identifier.car )
          identifier
        else
          raise TypeError, "make-syntactic-closure requires symbol or (syntax-quote sexp) only. but got: " + write_to_string( identifier )
        end
      elsif _symbol_QUMARK( identifier )
        # pp [ "identifier: ", identifier, "include?=", mac_env.to_arr.include?( identifier.intern ) ]
        # pp [ "mac_env: ",    mac_env.to_arr ]
        if mac_env.to_arr.include?( identifier.intern )
          found = @lexicalVars.find { |x| identifier == x[0] }
          if found
            lexvars = @lexicalVars.clone
            __wrapNestedLet( identifier, lexvars )
          else
            identifier
          end
        else
          SyntacticClosure.new( identifier, (toRubySymbol( identifier ) + _gensym( ).to_s).intern )
        end
      else
        raise TypeError, "make-syntactic-closure requires symbol or (syntax-quote sexp) type."
      end
    end

    def _strip_MIMARKsyntax_MIMARKquote( sexp )
      case sexp
      when Cell
        if _null_QUMARK( sexp )
          sexp
        else
          car = sexp.car
          car = castParsedSymbol( car )
          if :"syntax-quote" == car or @core_syntax_hash[ :"syntax-quote" ] == car
            Cell.new( :quote, sexp.cdr )
          else
            Cell.new(
                 _strip_MIMARKsyntax_MIMARKquote( sexp.car ),
                 _strip_MIMARKsyntax_MIMARKquote( sexp.cdr ))
          end
        end
      else
        sexp
      end
    end

    def _strip_MIMARKlet_MIMARKsyntax_MIMARKkeyword( sexp )
      case sexp
      when Cell
        if _null_QUMARK( sexp )
          sexp
        else
          car = sexp.car
          if :"quote" == car or @core_syntax_hash[ :"quote" ] == car
            sexp
          elsif :"let-syntax" == car or @core_syntax_hash[ :"let-syntax" ] == car
            Cell.new( :begin,
                 _strip_MIMARKlet_MIMARKsyntax_MIMARKkeyword( sexp.cdr.cdr ))
          else
            Cell.new(
                 _strip_MIMARKlet_MIMARKsyntax_MIMARKkeyword( sexp.car ),
                 _strip_MIMARKlet_MIMARKsyntax_MIMARKkeyword( sexp.cdr ))
          end
        end
      else
        sexp
      end
    end

    def _strip_MIMARKsyntactic_MIMARKclosures( sexp )
      case sexp
      when Cell
        if _null_QUMARK( sexp )
          sexp
        else
          Cell.new(
                 _strip_MIMARKsyntactic_MIMARKclosures( sexp.car ),
                 _strip_MIMARKsyntactic_MIMARKclosures( sexp.cdr ))
        end
      else
        if sexp.is_a? SyntacticClosure
          sexp.intern
        else
          sexp
        end
      end
    end

    def _symbol_MIMARKinclude_QUMARK( sexp, sym )
      case sexp
      when Cell
        if _null_QUMARK( sexp )
          false
        else
          _symbol_MIMARKinclude_QUMARK( sexp.car, sym ) or _symbol_MIMARKinclude_QUMARK( sexp.cdr, sym )
        end
      else
        if _symbol_QUMARK( sexp )
          sym.intern == sexp.intern
        else
          false
        end
      end
    end
  end

end
