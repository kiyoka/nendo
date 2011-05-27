#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# nendo.rb  -  "language core of nendo"
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
#  $Id: 
#
module Nendo
  require 'stringio'
  require 'digest/sha1'
  require 'pp'

  class Nil
    include Enumerable
    def each()               end
    def to_arr()    []       end
    def length()    0        end
    def isNull()    true     end
    def isDotted()  false    end
    def lastAtom()  false    end
    def getLastAtom() 
      raise RuntimeError, "Error: Nil#getLastAtom method:  this cell is not dotted list."
    end
    def to_s()      ""       end
    def car()
      raise "Error: Nil#car method:  pair required, but got ()"
    end
    def cdr()
      raise "Error: Nil#cdr method:  pair required, but got ()"
    end
  end
  
  class LispString < String
    def LispString.escape( str )
      if str.is_a? String
        str.gsub( /\\/, "\\\\\\\\" ).gsub( /["]/, "\\\"" ).gsub( /[\r]/, "\\r" ).gsub( /[\t]/, "\\t" )
      else
        raise TypeError
      end
    end
  end
  
  class LispMacro < Proc
  end

  class LispSyntax < Proc
  end

  class LispCoreSyntax
    def initialize( syntaxName )
      @syntaxName = syntaxName
    end
    attr_reader :syntaxName
  end
  
  class Cell
    include Enumerable
  
    def initialize( car = Nil.new, cdr = Nil.new )
      @car = car
      @cdr = cdr
    end
    attr_accessor :car, :cdr
  
    def each                    # Supporting iterator
      h = {}
      if not isNull
        it = self
        while Nil != it.class
          h[ it.hash ] = true
          # printf( "%s : %s\n", it.car, it.hash )
          yield it
          if it.cdr.is_a? Cell
            it = it.cdr
            if h.has_key?( it.hash )
              # found circular-list.
              it = Nil.new
            end
          else
            it = Nil.new
          end
        end
      end
    end
  
    def length() self.to_arr.length  end
    def size()   self.length         end # alias of length
  
    def isDotted
      ((Cell != @cdr.class) and (Nil != @cdr.class))
    end
  
    def isNull
      ((Nil  == @car.class) and (Nil == @cdr.class))
    end
  
    def lastCell
      lastOne = self
      self.each { |x| lastOne = x }
      lastOne
    end
  
    def lastAtom
      lastOne = self.lastCell
      lastOne.isDotted
    end
    
    def getLastAtom
      if self.lastAtom
        self.lastCell.cdr
      else
        Nendo::Nil.new
      end
    end
  
    def to_arr
      if isNull
        []
      else
        self.map {|x| x.car}
      end
    end

    def first
      self.car
    end

    def second
      self.cdr.car
    end

    def third
      self.cdr.cdr.car
    end

    alias :cdar  :second
    alias :cddar :third
  end
  
  class LispValues
    def initialize( arr )
      if 1 == arr.size
        raise ArgumentError, "Error: LispValues object expects 0 or 2+ length of array"
      else
        @values = arr
      end
    end
    attr_reader :values
  end
  
  class LispRegexp
    def initialize( str )
      @exp        = str[ 1 ... str.size ]
      @ignoreCase = (str[0] == 'i')
    end
    def to_s
      sprintf( "|%s|", @exp ) + (@ignoreCase ? "i" : "")
    end
    def escape
      @exp.gsub( /\\/, "\\\\\\\\" )
    end
    attr_reader :ignoreCase
  end

  class LispKeyword
    def initialize( str )
      @key = str.intern
    end
  
    def ==(other)
      if other.is_a? LispKeyword
        self.key == other.key
      else
        false
      end
    end
  
    def ===(other)
      self.==(other)
    end
  
    def to_s
      self.key.to_s
    end
  
    attr_reader :key
  end

  class SyntacticClosure
    def initialize( originalSymbol, renamedSymbol )
      @originalSymbol = originalSymbol
      @renamedSymbol  = renamedSymbol
    end

    def to_s
      @renamedSymbol.to_s
    end

    def intern
      @renamedSymbol
    end

#    def ==(other_sc)
#      if other_sc.is_a? SyntacticClosure
#        @renamedSymbol == other_sc.renamedSymbol
#      else
#        false
#      end
#    end

    def sourcefile()  "dynamic S-expression ( no source )"  end
    def lineno()      1                                     end

    attr_reader :originalSymbol, :renamedSymbol
  end

  class SourceInfo
    def initialize
      @varname       = nil
      @sourcefile    = nil
      @lineno        = nil
      @source_sexp   = Cell.new
      @expanded_sexp = Cell.new
      @compiled_str  = nil
    end

    def deepCopy( sexp )
      Marshal.load(Marshal.dump( sexp ))
    end

    def setVarname( varname )
      @varname        = varname
    end

    def setSource( sourcefile, lineno, source_sexp )
      @sourcefile     = sourcefile
      @lineno         = lineno
      @source_sexp    = self.deepCopy( source_sexp )
    end

    def setExpanded( expanded_sexp )
      @expanded_sexp  = self.deepCopy( expanded_sexp )
    end

    def setCompiled( compiled_str )
      @compiled_str   = compiled_str
    end

    def debugPrint
      printf( "=== sourceInfo === \n" )
      printf( "  varname       = %s\n", @varname )
      printf( "  sourcefile    = %s\n", @sourcefile )
      printf( "  lineno        = %s\n", @lineno)
      printf( "  compiled_str  = %s\n", @compiled_str )
    end

    attr_reader :varname, :sourcefile, :lineno, :source_sexp, :expanded_sexp, :compiled_str
  end
  
  class DelayedCallPacket
    def initialize( _origname, _rubysym, _pred, _args )
      @origname = _origname
      @rubysym  = _rubysym
      @pred     = _pred
      @args     = _args
    end
    attr_reader :origname, :rubysym, :pred, :args
  end

  class Token
    def initialize( kind, str, sourcefile, lineno = nil, column = nil )
      @kind       = kind
      @str        = str
      @sourcefile = sourcefile
      @lineno     = lineno
      @column     = column
    end
    attr_accessor :kind, :str, :sourcefile, :lineno, :column
  end
  
  
  class CharReader
    def initialize( inport, sourcefile )
      @inport     = inport
      @sourcefile = sourcefile
      self.reset
    end
  
    def reset
      @lineno = 1
      @column = 1
    end
  
    def getc
      @undo_lineno = @lineno
      @undo_column = @column
      ch = @inport.getc
      if nil != ch
        if ch.chr.match( /[\r\n]/ )
          @lineno += 1
        end
        @column += 1
      end
      ch
    end
  
    def ungetc( ch )
      @lineno = @undo_lineno
      @column = @undo_column
      @inport.ungetc( ch )
    end
  
    def sourcefile
      @sourcefile
    end
  
    def lineno
      @lineno
    end
  
    def column
      @column
    end
  end
  
  class Reader
    ## tokens
    T_EOF                 = :t_eof
    T_LPAREN              = :t_lparen
    T_RPAREN              = :t_rparen
    T_LVECTOR             = :t_lvector
    T_SYMBOL              = :t_symbol
    T_KEYWORD             = :t_keyword
    T_NUM                 = :t_num
    T_STRING              = :t_string
    T_QUOTE               = :t_quote
    T_QUASIQUOTE          = :t_quasiquote
    T_UNQUOTE             = :t_unquote
    T_UNQUOTE_SPLICING    = :t_unquote_splicing
    T_FEEDTO              = :t_feedto
    T_DOT                 = :t_dot
    T_LINEFEED            = :t_linefeed
    T_COMMENT             = :t_comment
    T_DEBUG_PRINT         = :t_debug_print
    T_MACRO_DEBUG_PRINT   = :t_macro_debug_print
    T_REGEXP              = :t_regexp
  
    # inport is IO class
    def initialize( inport, sourcefile, debug = false )
      @inport     = inport
      @sourcefile = sourcefile
      @chReader   = nil
      @curtoken   = nil
      @debug      = debug
    end
  
    def reset
      @chReader.reset  if @chReader
    end
  
    def sourcefile
      @sourcefile
    end
  
    def lineno
      if @chReader
        @chReader.lineno
      else
        1
      end
    end
  
    def skipspace
      begin
        ch = @chReader.getc
        break if nil == ch # non eof?
        #printf( "      skipspace: [%02x]\n", ch ) if @debug
      end while ch.chr.match( /[ \t]/ )
      @chReader.ungetc( ch ) if nil != ch 
    end
  
    def readwhile( exp, oneshot = false )
      ret = ""
      while true
        ch = @chReader.getc
        #printf( "      readwhile: [%02x]\n", ch ) if @debug
        if !ch # eof?
          break
        end
        if ch.chr.match( exp )
          ret += ch.chr
        else
          @chReader.ungetc( ch )
          break
        end
        if oneshot then   break   end
      end
      ret
    end
  
    def peekchar( exp )
      ch = @chReader.getc
      #printf( "      peekchar: [%02x]\n", ch ) if @debug
      if !ch # eof?
        return nil
      end
      if ch.chr.match( exp )
        ch.chr
      else
        @chReader.ungetc( ch )
        nil
      end
    end
    
    def readstring()
      ret = ""
      while true
        ch = @chReader.getc
        #printf( "      readstring: [%s]\n", ch )
        if !ch # eof?
          break
        end
        if ch.chr == "\\"
          ch2 = @chReader.getc
          ret += case ch2.chr
                 when '"'    #  \"  reduce to "
                   '"'
                 when '\\'   #  \\  reduce to \
                   "\\"
                 when 'n'
                   "\n"
                 when 'r'
                   "\r"
                 when 't'
                   "\t"
                 else
                   ""
                 end
        elsif ch.chr != '"'
          ret += ch.chr
        else
          @chReader.ungetc( ch )
          break
        end
      end
      ret
    end

    def readRegexp()
      ret = ""
      while true
        ch = @chReader.getc
        #printf( "      readRegexp1: [%s]\n", ch )
        if !ch # eof?
          break
        end
        if ch.chr == "\\"    #escape
          ch2 = @chReader.getc
          #printf( "      readRegexp2: [%s]\n", ch2 )
          ret += "\\" + ch2.chr
        elsif ch.chr == '/'
          break
        else
          ret += ch.chr
        end
      end
      ret
    end

    def tokenWithComment
      skipspace
      ch = @chReader.getc
      if nil == ch # eof?
        @curtoken = Token.new( T_EOF, "", @chReader.sourcefile, @chReader.lineno, @chReader.column )
      else
        str = ch.chr
        kind =
          case str
          when /[\']/
            T_QUOTE
          when /[\`]/
            T_QUASIQUOTE
          when /[,]/
            str += readwhile( /[@]/, true )
            if 1 == str.length
              T_UNQUOTE
            else
              T_UNQUOTE_SPLICING
            end
          when '(', '['
            T_LPAREN
          when ')', ']'
            T_RPAREN
          when '.'
            str += readwhile( /[_a-zA-Z0-9!?.]/ )
            if 1 == str.length
              T_DOT
            else
              T_SYMBOL
            end
          when /[\r\n]/
            T_LINEFEED
          when /;/
            readwhile( /[^\r\n]/ )
            str = ""
            T_COMMENT
          when /[#]/
            nextch = peekchar( /[?!tfbodx(\/]/ )
            case nextch
            when "?"
              if peekchar( /[=]/ )
                str = ""
                T_DEBUG_PRINT
              elsif peekchar( /[.]/ )
                str = ""
                T_MACRO_DEBUG_PRINT
              else
                str += readwhile( /[^ \t\r\n]/ )
                raise NameError, sprintf( "Error: unknown #xxxx syntax for Nendo %s", str )
              end
            when "!"
              readwhile( /[^\r\n]/ )
              str = ""
              T_COMMENT
            when "("
              str = ""
              T_LVECTOR
            when "t"
              str = "true"
              T_SYMBOL
            when "f"
              str = "false"
              T_SYMBOL
            when "b","o","d","x"
              str = readwhile( /[0-9a-zA-Z]/ )
              case nextch
              when "b"
                if str.match( /^[0-1]+$/ )
                  str = "0b" + str
                else
                  raise RuntimeError, sprintf( "Error: illegal #b number for Nendo #b%s", str )
                end
              when "o"
                if str.match( /^[0-7]+$/ )
                  str = "0o" + str
                else
                  raise RuntimeError, sprintf( "Error: illegal #o number for Nendo #o%s", str )
                end
              when "d"
                if str.match( /^[0-9]+$/ )
                  str = "0d" + str
                else
                  raise RuntimeError, sprintf( "Error: illegal #d number for Nendo #d%s", str )
                end
              when "x"
                if str.match( /^[0-9a-fA-F]+$/ )
                  str = "0x" + str
                else
                  raise RuntimeError, sprintf( "Error: illegal #x number for Nendo #x%s", str )
                end
              end
              str = Integer( str ).to_s
              T_NUM
            when "/"  # T_REGEXP's str takes  "iXXXXX"(igreno case)  or  " XXXXXX"(case sensitive)  value.
              readwhile( /[\/]/ ) # consume
              str =  readRegexp()
              str =  ((0 < readwhile( /[i]/ ).size) ? "i" : " ") + str
              T_REGEXP
            else
              str += readwhile( /[^ \t\r\n]/ )
              raise NameError, sprintf( "Error: unknown #xxxx syntax for Nendo %s", str )
            end
          when /[_a-zA-Z!$%&*+\/:<=>?@^~-]/      # symbol
            str += readwhile( /[0-9._a-zA-Z!$%&*+\/:<=>?@^~-]/ )
            if str.match( /^[=][>]$/ )
              T_FEEDTO
            elsif str.match( /^[+-][0-9.]+$/ )
              T_NUM
            elsif str.match( /^[:]/ )
              str = str[1..-1]
              T_KEYWORD
            else
              T_SYMBOL
            end
          when /[0-9]/           # Numeric
            str += readwhile( /[0-9.]/ )
            T_NUM
          when /["]/             # String
            str =  LispString.new( readstring() )
            readwhile( /["]/ )
            T_STRING
          else
            str += readwhile( /[^ \t\r\n]/ )
            raise NameError, sprintf( "Error: unknown token for Nendo [%s]", str )
          end
        printf( "    token: [%s] : %s   (%s:L%d:C%d)\n", str, kind.to_s, @chReader.sourcefile, @chReader.lineno, @chReader.column ) if @debug
        @curtoken = Token.new( kind, str, @chReader.sourcefile, @chReader.lineno, @chReader.column )
      end
    end
  
    def token
      begin
        tokenWithComment
      end while T_COMMENT == curtoken.kind
      curtoken
    end
  
    def curtoken
      if !@curtoken
        self.token
      end
      @curtoken
    end
  
    def atom
      cur = curtoken 
      printf( "  NonT: [%s] : [%s]\n", "atom", cur.str ) if @debug
      token
      case cur.kind
      when T_SYMBOL
        sym = cur.str.intern
        sym.setLispToken( cur )
        case sym
        when :true
          true
        when :false
          false
        when :nil
          nil
        else
          sym
        end
      when T_NUM
        if cur.str.match( /[.]/ ) # floating point
          cur.str.to_f
        else
          cur.str.to_i
        end
      when T_STRING
        cur.str
      when T_REGEXP
        LispRegexp.new( cur.str )
      when T_QUOTE
        :quote
      when T_QUASIQUOTE
        :quasiquote
      when T_UNQUOTE
        :unquote
      when T_UNQUOTE_SPLICING
        :"unquote-splicing"
      when T_DOT
        :"dot-operator"
      when T_FEEDTO
        :feedto
      when T_DEBUG_PRINT
        "debug-print".intern
      when T_MACRO_DEBUG_PRINT
        LispString.new( sprintf( "%s:%d", cur.sourcefile, cur.lineno ))
      when T_KEYWORD
        LispKeyword.new( cur.str )
      else
        raise "Error: Unknown token in atom()"
      end
    end
  
    # vector := sexp 
    #      | atom ... atom
    def vector
      printf( "  NonT: [%s]\n", "vector" ) if @debug
      arr = []
      while true
        case curtoken.kind
        when T_LINEFEED
          token # skipEnter
        when T_EOF
          begin
            raise RuntimeError, "Error: unbalanced vector's paren(4)"
          rescue => e
            e.set_backtrace( [sprintf( "%s:%d", curtoken.sourcefile, curtoken.lineno )] + e.backtrace )
            raise e
          end
        when T_LPAREN, T_LVECTOR
          arr << sexp()
        when T_RPAREN
          break
        when T_QUOTE , T_QUASIQUOTE , T_UNQUOTE , T_UNQUOTE_SPLICING, T_DEBUG_PRINT
          arr << sexp()
        when T_DOT
          raise RuntimeError, "Error: illegal list."
        else
          arr << atom()
        end
      end
      arr
    end
    
    # list := sexp 
    #      | atom ... atom
    #      | atom ... . atom 
    def list
      printf( "  NonT: [%s]\n", "list" ) if @debug
      dotted = false
      cells = []
      lastAtom = Nil.new
      while true
        case curtoken.kind
        when T_LINEFEED
          token # skipEnter
        when T_EOF
          begin
            raise RuntimeError, "Error: unbalanced paren(1)"
          rescue => e
            e.set_backtrace( [sprintf( "%s:%d", curtoken.sourcefile, curtoken.lineno )] + e.backtrace )
            raise e
          end
        when T_LPAREN, T_LVECTOR
          cells << Cell.new( sexp() )
        when T_RPAREN
          break
        when T_DOT
          if 0 == cells.length
            # (. symbol1 symbol2 ... ) form
            cells << Cell.new( atom() )
          else
            # ( symbol1 ... symbol2 . symbol3 ) form
            token
            lastAtom = sexp()
            if lastAtom.is_a? Cell and lastAtom.isNull
              lastAtom = Nil.new # the null list "()"  could not be a lastAtom.
            end
          end
        when T_QUOTE , T_QUASIQUOTE , T_UNQUOTE , T_UNQUOTE_SPLICING, T_DEBUG_PRINT
          cells << Cell.new( sexp() )
        else
          if not lastAtom.is_a? Nil
            raise "Error : illegal dotted pair syntax."
          else
            cells << Cell.new( atom() )
          end
        end
      end
      ## setup list
      if 0 == cells.size
        Cell.new() # null list
      elsif 1 == cells.size
        cells.first.cdr = lastAtom
        cells.first
      elsif 1 < cells.size
        ptr = cells.pop
        ptr.cdr = lastAtom
        cells.reverse.each { |x|
          x.cdr = ptr
          ptr = x
        }
        cells.first
      end
    end
  
    def skipEnter
      while T_LINEFEED == curtoken.kind
        token
      end
    end
  
    # sexp := ( list ) | | #( vector ) | 'sexp | `sexp | atom
    def sexp
      printf( "  NonT: [%s]\n", "sexp" ) if @debug
      case curtoken.kind
      when T_LINEFEED
        token
        sexp()
      when T_EOF
        begin
          raise RuntimeError, "Error: unbalanced paren(2)"
        rescue => e
          e.set_backtrace( [sprintf( "%s:%d", curtoken.sourcefile, curtoken.lineno )] + e.backtrace )
          raise e
        end
      when T_LPAREN
        skipEnter
        token # consume '('
        ret = list()
        skipEnter
        token # consume ')'
        ret
      when T_RPAREN
        token # consume ')'
        begin
          raise RuntimeError, "Error: unbalanced vector's paren(3)"
        rescue => e
          e.set_backtrace( [sprintf( "%s:%d", curtoken.sourcefile, curtoken.lineno )] + e.backtrace )
          raise e
        end
      when T_LVECTOR
        skipEnter
        token # consume '#('
        ret = vector()
        skipEnter
        token # consume ')'
        ret
      when T_QUOTE , T_QUASIQUOTE , T_UNQUOTE , T_UNQUOTE_SPLICING
        _atom = atom() ## "quote" symbol
        Cell.new( _atom, Cell.new( sexp() ))
      when T_DEBUG_PRINT
        file   = curtoken.sourcefile
        lineno = curtoken.lineno
        _atom = atom() ## "debug-print" symbol
        child = sexp() 
        [_atom, child, LispString.new( file ), lineno, Cell.new( :quote, Cell.new( child )) ].to_list
      else
        atom()
      end
    end
  
    # return value is [ S-expression-tree, eof-flag, valid-sexp-flag ]
    def _read
      @chReader = CharReader.new( @inport, @sourcefile )  unless @chReader
      case curtoken.kind
      when T_EOF
        [ Nil.new, true,  false ]
      when T_LINEFEED
        token
        [ Nil.new, false, false ]
      else
        [ sexp(),  false, true  ]
      end
    end
  end
  
  
  # built-in functions
  module BuiltinFunctions
    def __assertFlat( *args )
      if 0 == args.length
        raise ArgumentError, "Error: + - * / % operator got illegal argument. "
      else
        args.each { |x|
          if Cell == x.class or Nil == x.class
            raise ArgumentError, "Error: + - * / % operator got illegal argument. "
          end
        }
      end
    end
    
    def __assertList( funcname, arg )
      if Cell != arg.class
        raise ArgumentError, "Error: %s expects a list argument.\n"
      end
    end
    
    def _equal_QUMARK( a, b )
      if a.is_a? String  and  b.is_a? String
        a === b
      elsif _null_QUMARK( a ) and _null_QUMARK( b )
        true
      elsif a.class != b.class
        false
      elsif a.class == Cell and b.class == Cell
        _equal_QUMARK( a.car, b.car ) and _equal_QUMARK( a.cdr, b.cdr )
      elsif a.is_a? Proc or b.is_a? Proc
        a == b
      else
        (a === b)
      end
    end
    
    def __PLMARK( *args )
      arr = args[0].to_arr
      case args[0].length
      when 0
        0
      else
        __assertFlat( arr )
        arr.each { |x| 
          if not (_number_QUMARK(x) or _string_QUMARK(x))
            ##arr.each { |v| STDERR.printf( "__PLMARK: %s\n", v ) }
            raise TypeError, sprintf( "Error: arg %s is [%s] type",x ,x.class )
          end
        }
        case args[0].length
        when 1
          args[0].car
        else
          arr[1..-1].inject(arr[0]){|x,y| x+y}
        end
      end
    end
    
    def __ASMARK( *args )
      arr = args[0].to_arr
      case args[0].length
      when 0
        1
      else
        __assertFlat( arr )
        arr.each { |x| 
          if not _number_QUMARK(x)
            raise TypeError
          end
        }
        case args[0].length
        when 1
          args[0].car
        else
          arr[1..-1].inject(arr[0]){|x,y| x*y}
        end
      end
    end
  
    def __MIMARK( first, *rest )
      raise TypeError if not _number_QUMARK(first)
      rest = rest[0].to_arr
      __assertFlat( rest )
      if 0 == rest.length 
        - first
      else
        rest.inject(first){|x,y| x-y}
      end
    end
  
    def __SLMARK( first, *rest )
      raise TypeError if not _number_QUMARK(first)
      rest = rest[0].to_arr
      __assertFlat( rest )
      if 0 == rest.length 
        1 / first
      else
        rest.inject(first){|x,y| x/y}
      end
    end
    
    def __PAMARK( first, *rest )
      _modulo( first, *rest )
    end
    
    def _quotient( first, second )
      raise TypeError if not _number_QUMARK(first)
      raise TypeError if not _number_QUMARK(second)
      (first / second.to_f).to_i
    end

    def _remainder( first, second )
      raise TypeError if not _number_QUMARK(first)
      raise TypeError if not _number_QUMARK(second)
      first - _quotient( first, second ) * second
    end
    
    def _modulo( first, *rest )
      raise TypeError if not _number_QUMARK(first)
      rest = rest[0].to_arr
      __assertFlat( rest )
      if 0 == rest.length 
        1 % first
      else
        rest.inject(first){|x,y| x%y}
      end
    end
    
    def _not( arg )
      arg = false   if Nil == arg.class
      not arg
    end
    
    def _cons( first, second )
      if first.is_a? Nil
        first = Cell.new
      end
      if second.is_a? Cell
        if second.isNull
          Cell.new( first )
        else
          Cell.new( first, second )
        end
      else
        Cell.new( first, second )
      end
    end

    def _set_MIMARKcar_EXMARK( cell, arg )
      if cell.is_a? Cell
        cell.car = arg
        cell
      else
        raise TypeError
      end
    end

    def _set_MIMARKcdr_EXMARK( cell, arg )
      arg = if arg.is_a? Cell
              _null_QUMARK( arg ) ? Nil.new : arg
            else
              arg
            end
      if cell.is_a? Cell
        cell.cdr = arg
        cell
      else
        raise TypeError
      end
    end

    def _exit( *args )
      if 0 == args[0].length
        Kernel::exit(0)
      else
        arr = args[0].to_arr
        Kernel::exit(arr[0])
      end
    end
  
    def _print( format, *rest )
      print( format, *(rest[0].to_arr) )
    end
  
    def _printf( format, *rest )
      Kernel::printf( format, *(rest[0].to_arr) )
    end
  
    def _sprintf( format, *rest )
      Kernel::sprintf( format, *(rest[0].to_arr) )
    end
  
    def _null_QUMARK( arg )
      if Nil == arg.class
        true
      elsif Cell == arg.class
        arg.isNull
      else
        false
      end
    end
    def _length(   arg )
      if _null_QUMARK( arg )
        0
      elsif arg.is_a? Cell
        arg.length
      else
        raise TypeError
      end
    end
    def _list(    *args)           args[0] end
    def _reverse(  arg )           arg.to_arr.reverse.to_list end
    def _uniq(     arg )           arg.to_arr.uniq.to_list end
    def _range(    num, *args )
      arr = args[0].to_arr
      if 0 < arr.length
        if arr[0].is_a? Fixnum
          (0..num-1).to_a.map { |x| x + arr[0] }.to_list
        else
          raise TypeError, "Error range's start expects number."
        end
      else
        (0..num-1).to_a.to_list
      end
    end
    def __EQMARK(      a,b )        a ==  b end
    def __GTMARK(      a,b )        a >   b end
    def __GTMARK_EQMARK(      a,b ) a >=  b end
    def __LTMARK(      a,b )        a <   b end
    def __LTMARK_EQMARK(      a,b ) a <=  b end
    def _eq_QUMARK(      a,b )      a ==  b end
    def _gt_QUMARK(      a,b )      a >   b end
    def _ge_QUMARK(      a,b )      a >=  b end
    def _lt_QUMARK(      a,b )      a <   b end
    def _le_QUMARK(      a,b )      a <=  b end
    def _eqv_QUMARK(     a,b )      a === b end
    def _car(      cell )          cell.car end
    def _cdr(      cell )          cell.cdr end
    def _write(  arg  )            printer = Printer.new ; print printer._write( arg ) ; arg end
    def _write_MIMARKto_MIMARKstring(  arg  )  printer = Printer.new ; printer._write( arg )             end
    alias write_to_string _write_MIMARKto_MIMARKstring
    def _display(  arg  )          printer = Printer.new ; print printer._print( arg ) ; arg end
    def _print(  arg  )            self._display( arg )  ; self._newline() ; arg             end
    def _newline(       )          print "\n" end
    def _procedure_QUMARK( arg )   ((Proc == arg.class) or (Method == arg.class)) end
    def _macro_QUMARK( arg )       (LispMacro == arg.class) end
    def _symbol_QUMARK(    arg )   (arg.is_a? Symbol or arg.is_a? SyntacticClosure) end
    def _keyword_QUMARK(    arg )  (arg.is_a? LispKeyword) end
    def _syntax_QUMARK( arg )      (arg.is_a? LispSyntax)  end
    def _core_MIMARKsyntax_QUMARK( arg )
      if arg.is_a? LispCoreSyntax
        arg.syntaxName
      else
        nil
      end
    end
    def _pair_QUMARK(      arg )   
      if _null_QUMARK( arg )
        false
      else
        (Cell == arg.class)
      end
    end
    def __PAMARKlist_QUMARK(      arg )   
      if _pair_QUMARK( arg )
        (not arg.lastAtom) and (1 <= arg.to_arr.size) # it means proper list?
      else
        _null_QUMARK( arg )
      end
    end
    def _integer_QUMARK(   arg )   arg.is_a? Integer   end
    def _number_QUMARK(   arg )    arg.is_a? Numeric   end
    def _string_QUMARK(   arg )    arg.is_a? String    end
    def _macroexpand_MIMARK1( arg )
      if _pair_QUMARK( arg )
        macroexpandInit( 1 )
        macroexpandEngine( arg, [], [] )
      else
        arg
      end
    end
    def _to_s( arg )                    _to_MIMARKs( arg ) end
    def _to_MIMARKs( arg )              arg.to_s    end
    def _to_i( arg )                    _to_MIMARKi( arg ) end
    def _to_MIMARKi( arg )              arg.to_i    end
    def _nil_QUMARK(   arg )            arg.nil?    end
    def _to_list( arg )                 _to_MIMARKlist( arg ) end
    def _to_MIMARKlist( arg )
      case arg
      when Array
        arg.to_list
      when Cell
        arg
      else
        raise TypeError
      end
    end
    def _to_arr( arg )                 _to_MIMARKarr( arg ) end
    def _to_MIMARKarr( arg )
      case arg
      when Cell
        arg.to_arr
      when Array
        arg
      else
        raise TypeError
      end
    end
    def _intern( arg )                            arg.intern  end
    def _string_MIMARK_GTMARKsymbol( arg )        arg.intern  end
    def _symbol_MIMARK_GTMARKstring( arg )        arg.to_s    end
    def _string_MIMARKjoin( lst, *args )
      arr = args[0].to_arr
      if 0 < arr.length
        if not arr[0].is_a? String
          raise TypeError, "Error: string-join's expects delimitter as String."
        else
          lst.to_a.map{ |x| x.car }.join( arr[0] )
        end
      else
        lst.to_a.map{ |x| x.car }.join
      end
    end
    def _require( arg )
      require( arg )
      false
    end
    def _read_MIMARKfrom_MIMARKstring( str )
      if not str.is_a? String
        raise TypeError, "Error: read-from-string expects sexp as String."
      else
        sio       = StringIO.open( str )
        reader    = Reader.new( sio, "(string)", false )
        s = reader._read
        s[0]
      end
    end
    def _read( *args )
      lst = args[0].to_arr
      io = if 0 == lst.length
             STDIN
           else
             lst[0]
           end
      reader = Reader.new( io, "STDIN", false )
      ret = nil
      begin
        s = reader._read
        ret = s[0]
        if s[1] # EOF?
          ret = Cell.new
          break
        end
      end until s[2]
      ret
    end
  
    def _apply1( first, arg )
      trampCall( callProcedure( "(apply1 genereate func)", first, arg.to_arr ))
    end
  
    def _global_MIMARKvariables
      self.instance_variables.select { |x|
        x.match( /^[@]_[_a-zA-Z]/ )
      }.map{ |name| 
        self.toLispSymbol( name[1..-1] ).intern
      }.to_list
    end
  
    def _make_MIMARKvalues( lst )
      if _pair_QUMARK( lst )
        LispValues.new( lst.to_arr )
      elsif _null_QUMARK( lst )
        LispValues.new( [] )
      else
        raise ArgumentError, "Error: make-values expects a list argument."
      end
    end
  
    def _values_QUMARK( arg )     arg.is_a? LispValues   end
  
    def _values_MIMARKvalues( arg )
      if _values_QUMARK( arg )
        arg.values.to_list
      else
        raise TypeError, "Error: values-values expects only LispValues object."
      end
    end
  
    def _make_MIMARKkeyword( arg )
      if _symbol_QUMARK(    arg ) or _string_QUMARK(    arg )
        LispKeyword.new( arg.to_s )
      else
        raise TypeError, "Error: make-keyword expects symbol or string object."
      end
    end
  
    def _keyword_MIMARK_GTMARKstring( arg )
      if _keyword_QUMARK(    arg )
        arg.key.to_s
      else
        raise TypeError, "Error: keyword->string expects only keyword object."
      end
    end
  
    def _hash_MIMARKtable_MIMARKget( h, key, *args )
      if h.has_key?(key)
        h[key]
      else
        arr = args[0].to_arr
        if 0 < arr.length
          arr[0]
        else
          raise RuntimeError, sprintf( "Error: in hash-table-get()  key [%s] was not exist.\n", key )
        end
      end
    end
  
    def _hash_MIMARKtable_MIMARKput_EXMARK( h, key, value )
      h[key] = value
    end

    def _hash_MIMARKtable_MIMARKexist_QUMARK( h, key )
      # don't use h.has_key(k), because has_key method undefined on some database bindings. (e.g. KyotoCabinet)
      h[key] ? true : false
    end
  
    # backtrace expects this format "filename:lineno: place message ". e.g.  "init.nnd:10: in aaa macro.".
    def _raise( exception, message, backtrace )
      raise exception, message, [ backtrace ]
    end
  
    def __ASMARKLINE_ASMARK()
      @lastLineno
    end
  
    def __ASMARKFILE_ASMARK()
      @lastSourcefile
    end
  
    def _vector_MIMARKset_EXMARK( v, index, value )
      if !(v.is_a? Array)
        raise TypeError, "Error: vector-set! requires Array as argument v(Lisp's vector).\n"
      end
      if (index < 0) or (v.size <= index)
        raise ArgumentError, "Error: vector-set! requires index  between 0 and (size-1) number.\n"
      end
      v[index] = value
    end

  end
  
  
  # Translate S expression to Ruby expression and Evaluation
  class Evaluator
    include BuiltinFunctions
    EXEC_TYPE_NORMAL    = 1
    EXEC_TYPE_ANONYMOUS = 2
    EXEC_TYPE_TAILCALL  = 3

    def initialize( core, debug = false )
      @core    = core
      @indent  = "  "
      @binding = binding
      @debug   = debug
      @trace_debug = false
      @lexicalVars = []
      @syntaxHash = {}
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

      @core_syntax_list = [ :quote, :"syntax-quote", :if , :begin , :lambda , :macro , :"&block" , :"%let" , :letrec , :define, :set!, :error, :"%syntax", :"define-syntax", :"let-syntax" ]
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

      # init optimize level
      @optimize_level = 1
  
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
        "  ret = callProcedure( origname, pred, args ) ;",
        "  lispMethodExit( origname,  " + _log.to_s + " ) ; ",
        "  return ret ",
        "end " ].join
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
        name = name.to_s  if Symbol == name.class
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
      name = name.to_s  if Symbol == name.class
      raise ArgumentError, sprintf( "Error: `%s' is not a lisp symbol", name ) if not ('_' == name[0])
      name = name[1..-1]
      @char_table_ruby_to_lisp.each_pair { |key,val|
        name = name.gsub( Regexp.new( key ), val )
      }
      name
    end
  
    def toRubyArgument( origname, pred, args )
      argument_error_message = sprintf( "Error: wrong number of arguments for closure `%s'", origname )
      num = pred.arity
      if 0 == num
        raise ArgumentError, argument_error_message if 0 != args.length
        []
      elsif 0 < num
        if 0 == args.length
          [ Nil.new ]
        else
          raise ArgumentError, argument_error_message if num != args.length
          args
        end
      else
        num = num.abs( )-1
        raise ArgumentError, argument_error_message if num > args.length
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
      while result.is_a? DelayedCallPacket
        @tmp_origname = result.origname
        @tmp_pred     = result.pred
        @tmp_args     = result.args
        result = eval( sprintf( "self.%s( @tmp_origname, @tmp_pred, @tmp_args )", result.rubysym + "_METHOD" ), @binding )
      end
      result
    end

    def method_missing( name, *args )
      if @global_lisp_binding[name].is_a? Proc
        @global_lisp_binding[name].call( args[0], args[1], args[2] )
      else
        callProcedure( args[0], args[1], args[2] )
      end
    end
    
    def delayCall( rubysym, origname, pred, args )
      case @optimize_level
      when 0 # no optimize
        callProcedure( origname, pred, args )
      else # tail call optimization
        DelayedCallPacket.new( origname, rubysym, pred, args )
      end
    end
    
    def callProcedure( origname, pred, args )
      if @call_counters.has_key?( origname )
        @call_counters[ origname ] += 1
      else
        @call_counters[ origname ]  = 1
      end

      result = pred.call( *toRubyArgument( origname, pred, args ))

      @call_counters[ origname ]   -= 1

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
      [ :define, :set!, :"define-syntax", @core_syntax_hash[ :define ], @core_syntax_hash[ :set! ], @core_syntax_hash[ :"define-syntax" ] ].include?( sym )
    end

    def execFunc( funcname, args, sourcefile, lineno, locals, sourceInfo, execType )
      if isDefines( funcname )
        ar = args.cdr.map { |x| x.car }
        variable_sym = toRubySymbol( args.car.to_s.sub( /^:/, "" ))
        global_cap = locals.flatten.include?( variable_sym.split( /[.]/ )[0] ) ? nil : "@"
        if global_cap and sourceInfo
          sourceInfo.setVarname( toLispSymbol( variable_sym ))
        end
        [ "begin",
          [
           if global_cap
             [
              defMethodStr( variable_sym, true ),
              sprintf( "@global_lisp_binding['%s'] = self.method( :%s_METHOD )", variable_sym, variable_sym )
             ]
           else
             ""
           end,
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
         "end "]
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
          if EXEC_TYPE_ANONYMOUS == execType
            [sprintf( "trampCall( callProcedure( 'anonymouse', " ),
             [ funcname ] + [ "," ],
             "[", arr, "]",
             "          ))"]
          else
            origname = funcname.to_s
            funcname = funcname.to_s
            sym      = toRubySymbol( funcname )
            _call = case execType
                    when EXEC_TYPE_NORMAL
                      if locals.flatten.include?( sym )
                        [          "trampCall( callProcedure(  ",        "))" ] # local function
                      else
                        [ sprintf( "trampCall( self.%s_METHOD( ", sym ), "))" ] # toplevel function
                      end
                    when EXEC_TYPE_TAILCALL
                      [ sprintf( "delayCall( '%s', ", sym ),    ")"  ]
                    end
            [sprintf( "%s '%s',", _call[0], origname ), 
             [lispSymbolReference( sym, locals, nil, sourcefile, lineno )] + [","], 
             "[", arr, "]",
             sprintf( "             %s", _call[1] )]
          end
        end
      end
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
      ["begin", ar, "end"]
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
      ["begin",
       [lambda_head,
        argsyms.zip( argvals ).map { |x| [ x[0], " = ", x[1] ] },
        rest.map { |e|  translate( e.car, locals.clone + [argsyms] ) },
        sprintf( "} ; %s.call(", _name ),
        argsyms.map { |x| "nil" }.join( "," ),
        sprintf( "           )")],
       "end"]
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
        ["begin",
         [sprintf( "if @global_lisp_binding.has_key?('%s') then", variable_sym ),
          expression,
          sprintf( 'else raise NameError.new( "Error: undefined variable %s", "%s" ) end', variable_sym, variable_sym ),
          sprintf( 'rescue => __e ; __e.set_backtrace( ["%s:%d"] + __e.backtrace ) ; raise __e',  sourcefile, lineno  )],
         "end"]
      else
        ["begin",
         [expression,
          sprintf( 'rescue => __e ; __e.set_backtrace( ["%s:%d"] + __e.backtrace ) ; raise __e', sourcefile, lineno )],
         "end"]
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
    def translate( sexp, locals, sourceInfo = nil )
      case sexp
      when Cell
        inv = @core_syntax_hash.invert
        car = if inv.has_key?( sexp.car )
                inv[ sexp.car ]
              else
                sexp.car
              end
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
        elsif :"%tailcall" == car
          if sexp.cdr.car.is_a? Cell
            sexp = sexp.cdr.car
            if isDefines( sexp.car )
              translate( sexp, locals, sourceInfo )
            else
              self.apply( sexp.car, sexp.cdr, sexp.car.sourcefile, sexp.car.lineno, locals, sourceInfo, EXEC_TYPE_TAILCALL )
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
        case sexp
        when Symbol
          sym = sexp.to_s
          sym = toRubySymbol( sym )
          lispSymbolReference( sym, locals, nil, sexp.sourcefile, sexp.lineno )
        when Fixnum
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


    # args:
    #
    #   syntaxArray ... let-syntax's identifiers
    #                   [
    #                      [ identifier-name, #<LispSyntax>, sexp_of_(syntax-rules ...), frame_of_let-syntax ],
    #                        .
    #                        .
    #                   ]
    #   lexicalVars ... let's identifiers
    #                   [
    #                      [ identifier-name, macroexpandEngine( let's body ) ],
    #                   ]
    #
    #
    # transformation of syntax-rules:
    # (%syntax-rules
    #  ((v1 <<@syntaxHash's key1>>)
    #   (v2 <<@syntaxHash's key2>>)
    #   body))
    #
    # example:
    #
    # (%syntax-rules
    #  ((v1 "x = 10 // (+ x v1)")
    #   (v2 "y = 20 // (+ y v2)"))
    #  (+ v1 v2))
    #
    #
    def __macroexpandEngine( sexp, syntaxArray, lexicalVars )
      case sexp
      when Cell
        car = sexp.car
        if :quote == car or :"syntax-quote" == car or @core_syntax_hash[ :quote ] == car or @core_syntax_hash[ :"syntax-quote" ] == car
          sexp
        elsif :"%let" == car or :letrec == car or @core_syntax_hash[ :"%let" ] == car or @core_syntax_hash[ :letrec ] == car
          p "let?: " + write_to_string( sexp ) if @debug
          # catch lexical identifiers of `let' and `letrec'.
          arr = sexp.second.map { |x|
            [ x.car.car, macroexpandEngine( x.car.cdr, syntaxArray, lexicalVars ) ]
          }
          lst = arr.map {|x| Cell.new( x[0], x[1] ) }.to_list
          ret = Cell.new( car,
                     Cell.new( lst,
                          macroexpandEngine( sexp.cdr.cdr, syntaxArray, lexicalVars + arr )))
          p "result let: " + write_to_string( ret ) if @debug
          ret
        elsif :"let-syntax" == car
          pp "let-syntax : <entry>" if @debug
          sexp.second.each {|x|
            if not x.car.second.is_a? Cell
              raise SyntaxError, "Error: let-syntax get only '((name (syntax-rules ...)))' form but got: " + write_to_string( x )
            elsif not ( x.car.second.first == :"syntax-rules" or x.car.second.first == :"%syntax-rules")
              raise SyntaxError, "Error: let-syntax get only '((name (syntax-rules ...)))' form but got: " + write_to_string( x )
            end
          }
          arr_tmp = sexp.second.map { |x|
            rules =  x.car.second
            p "rules: " + write_to_string( rules )  if @debug
            ellipse = rules.second
            p "ellipse: " + write_to_string( ellipse )  if @debug
            pattern_body_list = rules.cdr.cdr
            p "pattern_body_list: " + write_to_string( pattern_body_list )  if @debug

            lst = []
            lst << :"%syntax-rules"
            lst << ellipse
            pattern_body_list.each {|xx|
              pattern_body = xx.car
              p "pattern_body: " + write_to_string( pattern_body )  if @debug
              pattern = pattern_body.first
              p "pattern: " + write_to_string( pattern )  if @debug
              body = pattern_body.second
              p "body: " + write_to_string( body )  if @debug
              new_pattern_body = [ pattern, macroexpandEngineLoop( body, syntaxArray, lexicalVars ) ].to_list
              p "new_pattern_body: " + write_to_string( new_pattern_body )  if @debug
              lst << new_pattern_body
            }
            p "before-expand: " + write_to_string( lst.to_list )  if @debug
            [ x.car.car, false, lst.to_list ]
          }

          # for eval
          begin
            lexvars = lexicalVars.clone
            __setupLexicalScopeVariables( lexvars )
            arr = arr_tmp.map {|y|
              keyStr = lexicalVars.map {|z|
                z[0].to_s + " / " +  write_to_string( z[1] )
              }.join( " / " )
              p "using let vars: " + keyStr if @debug
              keyStr += " // " + write_to_string( y[2] )
              syntaxClosure = if @syntaxHash.has_key?( keyStr )
                                p "keyStr(cached): " + keyStr if @debug
                                @syntaxHash[ keyStr ]
                              else
                                p "keyStr( new  ): " + keyStr if @debug
                                @syntaxHash[ keyStr ] = self.lispEval( y[2], "dynamic S-expression ( no source )", 1 )
                              end
              [ y[0], syntaxClosure, y[2], lexvars ]
            }
            __setupLexicalScopeVariables( [] )
          end

          # keywords = ((let-syntax-keyword ( let-syntax-body ))
          #             (let-syntax-keyword ( let-syntax-body ))
          #             ..)
          newKeywords = arr.map { |e|
            pp [ "newKeywords: ", e[0], write_to_string( e[2] ) ] if @debug
            Cell.new( e[0], Cell.new( e[2] ))
          }.to_list
          ret = Cell.new( :"let-syntax",
                     Cell.new( newKeywords, macroexpandEngine( sexp.cdr.cdr, syntaxArray + arr, lexicalVars )))
          p "before let-syntax: " + write_to_string( sexp.cdr.cdr ) if @debug
          p "result let-syntax: " + write_to_string( ret          ) if @debug
          ret
        else
          sym = toRubySymbol( car.to_s )
          newSexp = sexp
          if isRubyInterface( sym )
            # do nothing
            sexp
          elsif _symbol_QUMARK( car ) and eval( sprintf( "(defined? @%s and LispMacro == @%s.class)", sym,sym ), @binding )
            eval( sprintf( "@__macro = @%s", sym ), @binding )
            newSexp = trampCall( callProcedure( sym, @__macro, sexp.cdr.to_arr ))
          elsif _symbol_QUMARK( car ) and eval( sprintf( "(defined? @%s and LispSyntax == @%s.class)", sym,sym ), @binding )
            # expected input is
            #   (syntaxName arg1 arg2 ...)
            # will be transformed
            #   (syntaxName (syntaxName arg1 arg2 ...) () (global-variables))
#            p "before SYNTAX: name = " + car.to_s + " sexp = "+ write_to_string( sexp )
            eval( sprintf( "@__syntax = @%s", sym ), @binding )
            newSexp = trampCall( callProcedure( sym, @__syntax, [ sexp, Cell.new(), _global_MIMARKvariables( ) ] ))
#            p "after  SYNTAX: name = " + car.to_s + " sexp = "+ write_to_string( newSexp )
#            puts()
          elsif _symbol_QUMARK( car ) and syntaxArray.map {|arr| arr[0].intern}.include?( car.intern )
            # lexical macro expandeding
            symbol_and_syntaxObj = syntaxArray.reverse.find {|arr| car == arr[0]}
            keys    = syntaxArray.reverse.map { |arr| arr[0] }
            if not symbol_and_syntaxObj
              raise "can't find valid syntaxObject"
            end
            vars    = symbol_and_syntaxObj[3].map { |arr| arr[0] }
            newSexp = trampCall( callProcedure( symbol_and_syntaxObj[0], symbol_and_syntaxObj[1], [
                                                  sexp,
                                                  Cell.new(),
                                                  (_global_MIMARKvariables( ).to_arr + keys + vars).to_list ] ))
            newSexp = __wrapNestedLet( newSexp, symbol_and_syntaxObj[3] )
            pp [ "lexical macro expanding (before) ", write_to_string( sexp )," by ", symbol_and_syntaxObj[0], "keys=", keys, "sexp=", write_to_string( symbol_and_syntaxObj[2]) ] if @debug
            pp [ "lexical macro expanding (after ) ", write_to_string( newSexp ) ] if @debug
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

    def macroexpandPhase( sexp )
      macroexpandInit( 100000 )
      _strip_MIMARKlet_MIMARKsyntax_MIMARKkeyword(
         _strip_MIMARKsyntax_MIMARKquote(
            macroexpandEngineLoop( sexp, [], [] )))
    end

    def ppRubyExp( level, exp )
      indent = @indent * level
      exp.map { |x|
        if Array == x.class
          ppRubyExp( level+1, x )
        else
          str = sprintf( "%s", x )
          if str.match( /^[,]/ ) or str.match( /^ = / )
            sprintf( "%s%s", indent, str )
          else
            sprintf( "\n%s%s", indent, str )
          end
        end
      }
    end

    def displayTopOfCalls( exception )
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
        sym = toRubySymbol( "%compile-phase" )
        if ( eval( sprintf( "(defined? @%s and Proc == @%s.class)", sym,sym ), @binding ))
          eval( sprintf( "@___tmp = @%s", sym ), @binding )
          sexp = trampCall( callProcedure( sym, @___tmp, [ sexp ]))
          if @debug
            printf( "\n          compiled= <<< %s >>>\n", (Printer.new())._print(sexp))
          end
        end
        sourceInfo.setExpanded( sexp )

        arr = [ "trampCall( ", translate( sexp, [], sourceInfo ), " )" ]
        rubyExp = ppRubyExp( 0, arr ).flatten.join
        sourceInfo.setCompiled( rubyExp )
        if not @compiled_code.has_key?( sourcefile )
          @compiled_code[ sourcefile ] = Array.new
        end
        @compiled_code[ sourcefile ] << rubyExp
        if sourceInfo.varname
          @source_info_hash[ sourceInfo.varname ] = sourceInfo
        end
        printf( "          rubyExp=<<<\n%s\n>>>\n", rubyExp ) if @debug
        eval( rubyExp, @binding, @lastSourcefile, @lastLineno )
      rescue SystemStackError => e
        displayTopOfCalls( e )
        raise e
      end
    end

    def __PAMARKload( filename )
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
    end

    def _load_MIMARKcompiled_MIMARKcode_MIMARKfrom_MIMARKstring( rubyExp )
      eval( rubyExp, @binding )
      forward_gensym_counter()
    end

    def __PAMARKload_MIMARKcompiled_MIMARKcode( filename )
      open( filename, "r:utf-8" ) { |f|
        eval( f.read, @binding )
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
              sprintf( "  trampCall( callProcedure( '%s', @_%s, [ " + argsStr + " ] )) ",
                       origname, origname ),
              "end ;",
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
        if :"syntax-quote" == identifier.car
          identifier
        else
          raise TypeError, "make-syntactic-closure requires symbol or (syntax-quote sexp) only. but got: " + write_to_string( identifier )
        end
      elsif _symbol_QUMARK( identifier )
        pp [ "identifier: ", identifier ] if @debug
        # pp [ "mac_env: ",    mac_env.to_arr ]
        if mac_env.to_arr.include?( identifier.intern )
          found = @lexicalVars.find { |x| identifier == x[0] }
          if found
            p "lexical var found: " + found[0].to_s + "   sexp: " + write_to_string( found[1] )  if @debug
            lexvars = @lexicalVars.clone
            newSexp = __wrapNestedLet( identifier, lexvars )
            p "   nestedLet sexp: " + write_to_string( newSexp )  if @debug
            newSexp
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
  end

  class Printer
    def initialize( debug = false )
      @debug    = debug
    end
  
    def __write( sexp, readable )
      getQuoteKeyword = lambda { |x|
        case x
        when :quote
          "'"
        when :quasiquote
          "`"
        when :unquote
          ","
        when :"unquote-splicing"
          ",@"
        when :"dot-operator"
          "."
        else
          false
        end
      }
      case sexp
      when Cell
        arr = sexp.map { |x| __write( x.car, readable ) }
        lastAtom = sexp.lastAtom
        lastAtomStr = lastAtom ? __write( sexp.getLastAtom, readable ) : ""
        keyword = getQuoteKeyword.call( sexp.car )
        if keyword
          keyword + arr[1..-1].join( " " ) + (lastAtom ? " . " + lastAtomStr : "")
        else
          "(" +  arr.join( " " ) + (lastAtom ? " . " + lastAtomStr : "") + ")"
        end
      when Array # is a vector in the Nendo world.
        arr = sexp.map { |x| __write( x, readable ) }
        "#(" + arr.join( " " ) + ")"
      when true
        "#t"
      when false
        "#f"
      when Symbol
        keyword = getQuoteKeyword.call( sexp )
        if keyword
          keyword
        else
          sprintf( "%s", sexp.to_s )
        end
      when String, LispString
        if readable
          sprintf( "\"%s\"", LispString.escape( sexp.to_s ))
        else
          sexp.to_s
        end
      when SyntacticClosure
        sprintf( "#<SyntacticClosure[%s:%s]>", sexp.originalSymbol, sexp.renamedSymbol )
      when Regexp
        "#/" + sexp.source + "/" + (sexp.casefold? ? "i" : "")
      when LispKeyword
        ":" + sexp.key.to_s
      when Nil
        "()"
      when nil
        "nil"
      else
        sprintf( "%s", sexp )
      end
    end
  
    def _print( sexp )
      self.__write( sexp, false )
    end
    def _write( sexp )
      self.__write( sexp, true  )
    end
  end
  
  
  class Core
    def initialize( debug_evaluator = false, debug_printer = false )
      @debug_evaluator = debug_evaluator
      @evaluator       = Evaluator.new( self, debug_evaluator )
      @debug_printer   = debug_printer
    end

    def self.version
      "0.5.0"  ##NENDO-VERSION
    end

    attr_reader :evaluator

    def loadInitFile( use_compiled = true )
      done = false
      if use_compiled 
        compiled_file = File.dirname(__FILE__) + "/init.nndc"
        if File.exist?( compiled_file )
          @evaluator.__PAMARKload_MIMARKcompiled_MIMARKcode( compiled_file )
          done = true
        end
      end
      unless done
        @evaluator.__PAMARKload( File.dirname(__FILE__) + "/init.nnd" )
        @evaluator.__PAMARKload( File.dirname(__FILE__) + "/init.nnd" ) # for %tailcall compile for init.nnd
      end
    end
  
    def load( path )
      @evaluator.__PAMARKload( path )
    end
  
    def load_compiled_code( path )
      @evaluator.__PAMARKload_MIMARKcompiled_MIMARKcode( path )
    end
  
    def load_compiled_code_from_string( rubyExp )
      @evaluator._load_MIMARKcompiled_MIMARKcode_MIMARKfrom_MIMARKstring( rubyExp )
    end
  
    def setArgv( argv )
      @evaluator.setArgv( argv )
    end

    def setOptimizeLevel( level )
      @evaluator.setOptimizeLevel( level )
    end
  
    def clean_compiled_code
      @evaluator._clean_MIMARKcompiled_MIMARKcode()
    end
  
    def prompt
      STDERR.print "nendo> "
    end
  
    def repl
      printer = Printer.new( @debug_printer )
      reader  = Reader.new( STDIN, "(stdin)", false )
      self.prompt
      while true
        begin
          lineno = reader.lineno
          s = reader._read
          if s[1] # EOF?
            break
          elsif not s[0].is_a? Nil
            printf( "\n          readExp=<<< %s >>>\n", printer._write(s[0]) ) if @debug_evaluator
            STDERR.print printer._write( @evaluator.lispEval( s[0], reader.sourcefile, lineno )) + "\n"
            self.prompt
          end
        rescue => e
          print e.message + "\n"
          e.backtrace.each { |x| printf( "\tfrom %s\n", x ) }
          print "\n"
          self.prompt
        end
      end
    end
  
    def evalStr( str )
      printer   = Printer.new( @debug_printer )
      sio       = StringIO.open( str )
      reader    = Reader.new( sio, "(string)", false )
      result    = nil
      while true
        lineno = reader.lineno
        s = reader._read
        if s[1] # EOF?
          break
        elsif not s[0].is_a? Nil
          printf( "\n          readExp=<<< %s >>>\n", printer._write(s[0]) ) if @debug_evaluator
          result = printer._write( @evaluator.lispEval( s[0], reader.sourcefile, lineno )) 
        end
      end
      result
    end
  end
end




class Symbol
  def setLispToken( token )
    @token = token
  end
  def sourcefile
    @token ? @token.sourcefile : ""
  end
  def lineno
    @token ? @token.lineno : 1
  end
end

class Array
  def to_list( lastAtom = false, value = Nendo::Nil.new )
    if 0 == self.length
      Nendo::Cell.new()
    else
      cells = self.map { |x|
        Nendo::Cell.new( x )
      }
      ptr = cells.pop
      ptr.cdr = value  if lastAtom
      cells.reverse.each { |x|
        x.cdr = ptr
        ptr = x
      }
      return ptr
    end
  end
end

class Hash
  def to_list
    arr = Array.new
    self.each_pair { |key,val|
      arr << Nendo::Cell.new( key, val )
    }
    arr.to_list
  end
end

