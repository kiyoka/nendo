#!/usr/bin/env ruby
#
# Nendo:   "Principle of Least Surprise (for Rubyist)"
#  
#
#
require 'stringio'
require 'pp'

class Nil
  include Enumerable
  def each()               end
  def to_arr()    []       end
  def length()    0        end
  def isNull()    true     end
  def isDotted()  false    end
  def lastAtom()  nil      end
  def to_s()      ""       end
  def car()
    raise "Error: pair required, but got ()"
  end
  def cdr()
    raise "Error: pair required, but got ()"
  end
end

class LispString < String
end

class LispMacro < Proc
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

class Cell
  include Enumerable

  def initialize( car = Nil.new, cdr = Nil.new )
    @car = car
    @cdr = cdr
  end
  attr_accessor :car, :cdr

  def each                    # Supporting iterator
    if not isNull
      it = self
      while Nil != it.class
        yield it
        if it.cdr.is_a? Cell
          it = it.cdr
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
    if lastOne.isDotted
      lastOne.cdr
    else
      nil
    end
  end

  def to_arr
    if isNull
      []
    else
      self.map {|x| x.car}
    end
  end
end

class Array
  def to_list( lastAtom = nil )
    if 0 == self.length
      Nil.new
    else
      cells = self.map { |x|
        Cell.new( x )
      }
      ptr = cells.pop
      ptr.cdr = lastAtom  if lastAtom
      cells.reverse.each { |x|
        x.cdr = ptr
        ptr = x
      }
      return ptr
    end
  end
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
  T_SYMBOL              = :t_symbol
  T_NUM                 = :t_num
  T_STRING              = :t_string
  T_QUOTE               = :t_quote
  T_QUASIQUOTE          = :t_quasiquote
  T_UNQUOTE             = :t_unquote
  T_UNQUOTE_SPLICING    = :t_unquote_splicing
  T_DOT                 = :t_dot
  T_LINEFEED            = :t_linefeed
  T_COMMENT             = :t_comment

  # inport is IO class
  def initialize( inport, sourcefile, debug = false )
    @chReader   = CharReader.new( inport, sourcefile )
    @curtoken   = nil
    @debug      = debug
  end

  def reset
    @chReader.reset
  end

  def sourcefile
    @chReader.sourcefile
  end

  def lineno
    @chReader.lineno
  end

  def skipspace
    begin
      ch = @chReader.getc
      break if nil == ch # non eof?
      #printf( "      skipspace: [%02x]\n", ch ) if @debug
    end while ch.chr.match( /[ \t]/ )
    @chReader.ungetc( ch ) if nil != ch 
  end

  def readwhile( exp )
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
          str += readwhile( /[@]/ )
          if 1 == str.length
            T_UNQUOTE
          else
            T_UNQUOTE_SPLICING
          end
        when '('
          T_LPAREN
        when ')'
          T_RPAREN
        when '.'
          str += readwhile( /[_a-zA-Z0-9!?.-]/ ).gsub( /[-]/, '_' )
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
        when /[#!]/
          readwhile( /[^\r\n]/ )
          str = ""
          T_COMMENT
        when /[_a-zA-Z]/      # symbol
          str += readwhile( /[_a-zA-Z0-9!?.-]/ ).gsub( /[-]/, '_' )
          T_SYMBOL
        when /[*\/=!<>&|%]/   # symbol
          str += readwhile( /[+*\/=!<>&|?%-]/ )
          T_SYMBOL
        when /[+-]/           # number
          str += readwhile( /[0-9.]/ )
          if 1 < str.length
            T_NUM
          else
            T_SYMBOL
          end
        when /[0-9]/           # number
          str += readwhile( /[0-9.]/ )
          T_NUM
        when /["]/             # String
          str = LispString.new( readwhile( /[^"]/ )) ; readwhile( /["]/ )
          T_STRING
        else
          str += readwhile( /[^ \t\r\n]/ )
          raise NameError, sprintf( "unknown token for Nendo [%s]", str )
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
    when T_QUOTE
      :quote
    when T_QUASIQUOTE
      :quasiquote
    when T_UNQUOTE
      :unquote
    when T_UNQUOTE_SPLICING
      :unquote_splicing
    when T_DOT
      :dot_operator
    else
      raise "Error: Unknown token in atom()"
    end
  end

  # list := sexp 
  #      | atom ... atom
  #      | atom ... . atom 
  def list
    printf( "  NonT: [%s]\n", "list" ) if @debug
    dotted = false
    cells = []
    lastAtom = nil
    while true
      case curtoken.kind
      when T_LINEFEED
        token # skipEnter
      when T_EOF
        print "Error: unbalanced paren(1)\n"
        raise ExceptionParen
      when T_LPAREN
        cells << Cell.new( sexp() )
      when T_RPAREN
        break
      when T_DOT
        if 0 == cells.length
          # (. symbol1 symbol2 ... ) form
          cells << Cell.new( atom() )
        else
          # ( symbol1 . symbol2 ... ) form
          token
          lastAtom = sexp()
        end
      when T_QUOTE , T_QUASIQUOTE , T_UNQUOTE , T_UNQUOTE_SPLICING
        cells << Cell.new( sexp() )
      else
        if lastAtom
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
      if lastAtom
        cells.first.cdr = lastAtom
      end
      cells.first
    elsif 1 < cells.size
      ptr = cells.pop
      if lastAtom
        ptr.cdr = lastAtom
      end
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

  # sexp := ( list ) | 'sexp | `sexp | atom
  def sexp
    printf( "  NonT: [%s]\n", "sexp" ) if @debug
    case curtoken.kind
    when T_LINEFEED
      token
      sexp()
    when T_EOF
      print "Error: unbalanced paren(2)\n"
      raise ExceptionParen
    when T_LPAREN
      skipEnter
      token # consume '('
      ret = list()
      skipEnter
      token # consume ')'
      ret
    when T_RPAREN
      print "Error: unbalanced paren(3)\n"
      raise ExceptionParen
    when T_QUOTE , T_QUASIQUOTE , T_UNQUOTE , T_UNQUOTE_SPLICING
      _atom = atom() ## "quote" symbol
      Cell.new( _atom, Cell.new( sexp() ))
    else
      atom()
    end
  end

  # return value is [ S-expression-tree, eof-flag, valid-sexp-flag ]
  def _read
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
  
  def _equal_QMARK( a, b )
    if a.class != b.class
      false
    elsif a.class == Cell
      if a.isNull and b.isNull
        true
      else
        _equal_QMARK( a.car, b.car ) and _equal_QMARK( a.cdr, b.cdr )
      end
    elsif a.class == Nil and b.class == Nil
      true
    else
      (a === b)
    end
  end
  
  def _plus( first, *rest )
    raise TypeError if not (_number_QMARK(first) or _string_QMARK(first))
    rest = rest[0].to_arr
    __assertFlat( rest )
    if 0 == rest.length 
      first
    else
      rest.inject(first){|x,y| x+y}
    end
  end
  
  def _minus( first, *rest )
    raise TypeError if not (_number_QMARK(first) or _string_QMARK(first))
    rest = rest[0].to_arr
    __assertFlat( rest )
    if 0 == rest.length 
      - first
    else
      rest.inject(first){|x,y| x-y}
    end
  end

  def _multi( first, *rest )
    raise TypeError if not _number_QMARK(first)
    rest = rest[0].to_arr
    __assertFlat( rest )
    if 0 == rest.length 
      first
    else
      rest.inject(first){|x,y| x*y}
    end
  end

  def _div( first, *rest )
    raise TypeError if not _number_QMARK(first)
    rest = rest[0].to_arr
    __assertFlat( rest )
    if 0 == rest.length 
      1 / first
    else
      rest.inject(first){|x,y| x/y}
    end
  end

  def _mod( first, *rest )
    raise TypeError if not _number_QMARK(first)
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
    Cell.new( first, second )
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

  def _null_QMARK( arg )
    if Nil == arg.class
      true
    elsif Cell == arg.class
      arg.isNull
    else
      false
    end
  end
  def _length(   arg )
    if _null_QMARK( arg )
      0
    elsif arg.is_a? Cell
      arg.length
    else
      raise TypeError
    end
  end
  def _list(    *args)           args[0] end
  def _sort(     arg )           arg.to_arr.sort.to_list end
  def _reverse(  arg )           arg.to_arr.reverse.to_list end
  def _uniq(     arg )           arg.to_arr.uniq.to_list end
  def _range(    num )           (0..num-1).map.to_list end
  def _eq_QMARK(      a,b )      a ==  b end
  def _gt_QMARK(      a,b )      a >   b end
  def _ge_QMARK(      a,b )      a >=  b end
  def _lt_QMARK(      a,b )      a <   b end
  def _le_QMARK(      a,b )      a <=  b end
  def _eqv_QMARK(     a,b )      a === b end
  def _car(      cell )          cell.car end
  def _cdr(      cell )          cell.cdr end
  def _write(  arg  )            printer = Printer.new ; print printer._write( arg ) ; arg end
  def _display(  arg  )          printer = Printer.new ; print printer._print( arg ) ; arg end
  def _print(  arg  )            self._display( arg )  ; self._newline() ; arg             end
  def _newline(       )          print "\n" end
  def _procedure_QMARK( arg )   ((Proc == arg.class) or (Method == arg.class)) end
  def _macro_QMARK( arg )       (LispMacro == arg.class) end
  def _symbol_QMARK(    arg )   (Symbol == arg.class) end
  def _pair_QMARK(      arg )   
    if _null_QMARK( arg )
      false
    else
      (Cell == arg.class)
    end
  end
  def _number_QMARK(   arg )    ((Fixnum == arg.class) or (Float == arg.class)) end
  def _string_QMARK(   arg )    String == arg.class end
  def _macroexpand_1( arg )
    if _pair_QMARK( arg )
      macroexpand_1( arg )
    else
      arg
    end
  end
  def _to_s( arg )              arg.to_s    end
  def _intern( arg )            arg.intern  end
  def _string_join( lst, delim )
    lst.to_a.map{ |x| x.car }.join( delim )
  end
  def _require( arg )           Kernel::require( arg ) end
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
end


# Translate S expression to Ruby expression and Evaluation
class Evaluator
  include BuiltinFunctions
  def initialize( debug = false )
    @binding = binding
    @debug   = debug
    @alias   = {'+'        => 'plus',
                '-'        => 'minus',
                '*'        => 'multi',
                '/'        => 'div',
                '%'        => 'mod',
                '='        => 'eq?',
                '=='       => 'eq?',
                '>'        => 'gt?',
                '>='       => 'ge?',
                '<'        => 'lt?',
                '<='       => 'le?',
                '==='      => 'eqv?',
    }
    # built-in functions
    @sym = Hash.new
    self.methods.grep( /^_/ ) { |rubySymbol|
      @sym[ rubySymbol ] = self.method( rubySymbol )
    }

    # initialize global symbols
    rubyExp = @sym.keys.map { |name|
      sprintf( "%s = @sym[ '%s' ] ", name, name )
    }.join( " ; " )
    eval( rubyExp, @binding )
    @gensym_counter = 0
  end

  def _gensym( )
    @gensym_counter += 1
    sprintf( "__gensym__%d", @gensym_counter ).intern
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
    name = name.to_s  if Symbol == name.class
    name = name.gsub( /[?]/, '_QMARK' ).gsub( /[!]/, '_EMARK' ).gsub( /[-]/, '_' ).gsub( /["]/, '' )
    if name.match( /^[A-Z]/ )
      # nothing to do
    elsif name.match( /^[.]/ )
      name = 'Kernel' + name
    else
      name = '_' + name
    end
    name
  end

  def isRubyInterface( name )
    name.to_s.match( /[.]/ )
  end

  def toLispSymbol( name )
    name = name.to_s  if Symbol == name.class
    raise ArgumentError if '_' == name[0]
    name = name[1..-1]
    name.gsub( /_QMARK/, '?' ).gsub( /_EMARK/, '!' )
  end

  def toRubyArgument( origname, pred, args )
    num = pred.arity
    if 0 == num
      raise ArgumentError  if 0 != args.length
      []
    elsif 0 < num
      if args.isNull
        [ Nil.new ]
      else
        raise ArgumentError  if num != args.length
        args.map { |x|  x.car }
      end
    else
      num = num.abs( )-1
      raise ArgumentError  if num > args.length
      params = []
      rest = []
      args.each_with_index { |x,i|
        if i < num
          params << x.car
        else
          rest   << x.car
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

  def callProcedure( origname, pred, args )
    rubyArgument = toRubyArgument( origname, pred, args )
    pred.call( *rubyArgument )
  end

  def execFunc( funcname, args, sourcefile, lineno, lambda_flag )
    case funcname
    when :set!   # `set!' special form
      sprintf( "%s = %s", toRubySymbol( args.car.to_s.sub( /^:/, "" )), toRubyValue( args.cdr.car ))
    when :error
      sprintf( 'begin raise RuntimeError, %s ; rescue => __e ;  __e.set_backtrace( ["%s:%d"] + __e.backtrace ) ; raise __e ; end ', toRubyValue( args.car ), sourcefile, lineno )
    else
      if (not lambda_flag) and isRubyInterface( funcname )
        # Ruby method
        #   1) convert arguments
        argStr  = args.map { |x| toRubyValue( x.car ) }.join( "," )
        #   2) generate caller code part
        sprintf( "%s( %s )", toRubySymbol( funcname ), argStr )
      else
        # Nendo function
        argStr  = args.map { |x| toRubyValue( x.car ) }.join( " ,Cell.new(" )
        argStr += args.map { |x| "" }.join( ")" )
        if lambda_flag
          "anonymouse"
          sprintf( "callProcedure( 'anonymouse', %s, Cell.new( %s ))", funcname, argStr )
        else
          origname = funcname.to_s
          funcname = funcname.to_s
          funcname = @alias[ funcname ] if @alias[ funcname ] 
          sprintf( "callProcedure( '%s', %s, Cell.new( %s ))", origname, toRubySymbol( funcname ), argStr )
        end
      end
    end
  end

  def makeBegin( args )
    ar = args.map { |e|
      translate( e.car )
    }
    "begin " + ar.join( ";" ) + " end"
  end

  def toRubyParameter( argform )
    argsyms = []
    rest = nil
    if Symbol == argform.class
      rest       = argform
    else
      argsyms    = argform.map { |x|  toRubySymbol( x.car ) }
      rest       = argform.lastAtom
    end
    if rest
      rest       = toRubySymbol( rest ) 
      argsyms    << "*__rest__"
      sprintf( "|%s| %s = __rest__[0] ; ", argsyms.join( "," ), rest )
    else
      sprintf( "|%s|",                     argsyms.join( "," ))
    end
  end

  def makeClosure( sym, args )
    first   = args.car.cdr.car
    rest    = args.cdr
    argStr  = toRubyParameter( first )
    str = case sym
          when :macro
            sprintf( "LispMacro.new { %s ", argStr )
          when :lambda
            sprintf( "     Proc.new { %s ", argStr )
          else
            raise "Error: makeClosure: unknown symbol type " + sym
          end
    ar = rest.map { |e|
      translate( e.car )
    }
    str += ar.join( ";" ) + "}"
  end

  def makeIf( args )
    _condition = translate( args.car )
    _then      = translate( args.cdr.car )
    _else      = nil
    if 2 < args.length
      _else    = translate( args.cdr.cdr.car )
    end
    if _else
      str = sprintf( "if ( %s ) then %s else %s end ", _condition, _then, _else )
    else
      str = sprintf( "if ( %s ) then %s end ", _condition, _then )
    end
  end

  def makeLet( args )
    _name = "___lambda"
    str = ""
    argvals = []
    if args.car.is_a? Nil
      # nothing to do
      str = sprintf( "%s = lambda { || ", _name )
      rest = args.cdr
    else
      if :quote == args.car.car
        _name = args.car.cdr.car.to_s
        args = args.cdr
      end
      rest = args.cdr
      argsyms = args.car.map { |x|
        toRubySymbol( x.car.car.cdr.car.to_s )
      }
      argvals = args.car.map { |x|
        translate( x.car.cdr.car )
      }
      str = sprintf( "%s = lambda { |%s| ", _name, argsyms.join( "," ))
    end
    ar = rest.map { |e|  translate( e.car ) }
    str += ar.join( ";" ) + "}\n"
    str += sprintf( "%s.call( %s )\n", _name, argvals.join( "," ))
  end

  def apply( car, cdr, sourcefile, lineno, lambda_flag = false )
    cdr.each { |x| 
      if Cell == x.class
        x.car = translate( x.car )
      end
    }
    execFunc( car, cdr, sourcefile, lineno, lambda_flag )
  end

  def genQuote( sexp, str = "" )
    origStr = str
    case sexp
    when Cell
      if sexp.isNull
        str += "Nil.new"
      else
        arr = sexp.map { |x| genQuote( x.car ) }
        str += "Cell.new("
        str += arr.join( " ,Cell.new(" )
        lastAtom = sexp.lastAtom
        str += "," + genQuote( lastAtom )  if lastAtom
        str += arr.map{ |e| ")" }.join
      end
    when Symbol
      if isRubyInterface( sexp )
        str += sprintf( ":\"%s\"", sexp.to_s )
      else
        str += sprintf( ":%s", sexp.to_s )
      end
    when String
      str += sprintf( "\"%s\"", sexp )
    when TrueClass, FalseClass, NilClass  # reserved symbols
      str += toRubyValue( sexp )
    else
      str += sprintf( "%s", sexp )
    end
    str
  end

  def translate( sexp )
    str = ""
    case sexp
    when Cell
      if :quote == sexp.car
        genQuote( sexp.cdr.car )
      elsif sexp.isDotted
        print "Error: can't eval dotted pair"
        raise NameError
      elsif sexp.isNull
        str += "Cell.new()"
      elsif Cell == sexp.car.class
        if :lambda == sexp.car.car
          str += self.apply( translate( sexp.car ), sexp.cdr, sexp.car.car.sourcefile, sexp.car.car.lineno, true )
        else
          str += translate( sexp.car )
        end
      elsif :begin == sexp.car
        str += self.makeBegin( sexp.cdr )
      elsif :lambda == sexp.car
        str += self.makeClosure( :lambda, sexp.cdr )
      elsif :macro == sexp.car
        str += self.makeClosure( :macro, sexp.cdr )
      elsif :if == sexp.car
        str += self.makeIf( sexp.cdr )
      elsif :let == sexp.car
        str += self.makeLet( sexp.cdr )
      else
        str += self.apply( sexp.car, sexp.cdr, sexp.car.sourcefile, sexp.car.lineno )
      end
    else
      case sexp
      when Symbol
        sym = sexp.to_s
        sym = @alias[ sym ]  if @alias[ sym ]
        sym = toRubySymbol( sym )
        str += sprintf( 'begin %s ; rescue NameError => __e ; __e.set_backtrace( ["%s:%d"] + __e.backtrace ) ; raise __e ; end', sym, sexp.sourcefile, sexp.lineno )
      when Fixnum
        str += sexp.to_s
      when LispString
        str += sprintf( "\"%s\"", sexp )
      when Nil
        str += "Nil.new"
      when TrueClass, FalseClass, NilClass  # reserved symbols
        str += toRubyValue( sexp )
      else
        str += sexp.to_s
      end
    end
  end

  # insert quote in let argument list
  #  ((sym1 list1)
  #   (sym2 list2)
  #   (sym3 list3))
  # will be transformed
  #  (((quote sym1) list1)
  #   ((quote sym2) list2)
  #   ((quote sym3) list3))
  def letArgumentList( sexp )
    sexp.each { |arg|
      arg.car.car = Cell.new( :quote, Cell.new( arg.car.car ))
    }
    sexp
  end

  def quoting( sexp )
    case sexp
    when Cell
      if :quote == sexp.car or :quasiquote == sexp.car 
        sexp
      elsif :set! == sexp.car or :lambda == sexp.car or :macro == sexp.car
        sexp.cdr.car = Cell.new( :quote, Cell.new( sexp.cdr.car ))
        sexp.cdr.cdr = quoting( sexp.cdr.cdr )
        sexp
      elsif :let == sexp.car
        case sexp.cdr.car
        when Cell        # let
          sexp.cdr         = Cell.new( letArgumentList( sexp.cdr.car ),
                               quoting( sexp.cdr.cdr ))
        when Symbol      # named let
          sexp.cdr.car     = Cell.new( :quote, Cell.new( sexp.cdr.car ))
          sexp.cdr.cdr     = Cell.new( letArgumentList( sexp.cdr.cdr.car ),
                                       quoting( sexp.cdr.cdr.cdr ))
        end
        sexp
      else
        Cell.new( quoting( sexp.car ), quoting( sexp.cdr ))
      end
    else
      sexp
    end
  end

  def macroexpand_1( sexp )
    case sexp
    when Cell
      if :quote == sexp.car
        sexp
      else
        sym = sexp.car.to_s
        sym = @alias[ sym ]  if @alias[ sym ]
        sym = toRubySymbol( sym )
        if isRubyInterface( sym ) 
          arr = sexp.map { |x| macroexpand_1( x.car ) }
          arr.to_list( sexp.lastAtom )
        elsif sexp.car.class == Symbol and eval( sprintf( "(defined? %s and LispMacro == %s.class)", sym,sym ), @binding )
          eval( sprintf( "@_macro = %s", sym ), @binding )
          callProcedure( sym, @_macro, sexp.cdr )
        else
          arr = sexp.map { |x| macroexpand_1( x.car ) }
          arr.to_list( sexp.lastAtom )
        end
      end
    else
      sexp
    end
  end

  def lispCompile( sexp )
    converge = true
    begin
      newSexp  = macroexpand_1( sexp )
      converge = _equal_QMARK( newSexp, sexp )
      sexp = newSexp
    end until converge
    sexp
  end

  def lispEval( sexp, sourcefile, lineno )
    sexp = lispCompile( sexp )
    sexp = quoting( sexp );
    rubyExp = translate( sexp );
    printf( "          rubyExp=<<< %s >>>\n", rubyExp ) if @debug
    eval( rubyExp, @binding, sourcefile, lineno );
  end

  def _load( filename )
    printer = Printer.new( @debug )
    open( filename ) {|f|
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
  end

  def _eval( sexp )
    self.lispEval( sexp, "dynamic S-expression ( no source )", 1 )
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
      when :unquote_splicing
        ",@"
      when :dot_operator
        "."
      else
        false
      end
    }
    if @debug 
      pp sexp
    end
    case sexp
    when Cell
      arr = sexp.map { |x| __write( x.car, readable ) }
      lastAtom = sexp.lastAtom
      lastAtom = __write( lastAtom, readable )  if lastAtom
      keyword = getQuoteKeyword.call( sexp.car )
      if keyword
        keyword + arr[1..-1].join( " " ) + (lastAtom ? " . " + lastAtom : "")
      else
        "(" +  arr.join( " " ) + (lastAtom ? " . " + lastAtom : "") + ")"
      end
    when Symbol
      keyword = getQuoteKeyword.call( sexp )
      if keyword
        keyword
      else
        sprintf( "%s", sexp.to_s )
      end
    when String
      if readable
        sprintf( "\"%s\"", sexp.to_s )
      else
        sexp.to_s
      end
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


class Nendo
  def initialize( debug_evaluator = false, debug_printer = false )
    @debug_evaluator = debug_evaluator
    @evaluator       = Evaluator.new( debug_evaluator )
    @debug_printer   = debug_printer
  end
  
  def loadInitFile
    @evaluator._load( File.dirname(__FILE__) + "/init.nnd" )
  end

  def load( path )
    @evaluator._load( path )
  end

  def repl
    printer = Printer.new( @debug_printer )
    reader = nil
    print "nendo> "
    begin
      begin
        reader = Reader.new( STDIN, "(stdin)", false )
      rescue => e
        print e.message + "\n"
        e.backtrace.each { |x| printf( "\tfrom %s\n", x ) }
        reader = nil
        print "\n" + "nendo> "
      end
    end until reader
    while true
      lineno = reader.lineno
      begin
        s = reader._read
        if s[1] # EOF?
          break
        elsif Nil != s[0].class
          printf( "\n          readExp=<<< %s >>>\n", printer._print(s[0]) ) if @debug_evaluator
          print printer._print( @evaluator.lispEval( s[0], reader.sourcefile, lineno ))
          print "\n" + "nendo> "
        end
      rescue => e
        print e.message + "\n"
        e.backtrace.each { |x| printf( "\tfrom %s\n", x ) }
        print "\n" + "nendo> "
      end
    end
  end

  def replStr( str )
    printer   = Printer.new( @debug_printer )
    sio       = StringIO.open( str )
    reader    = Reader.new( sio, "(string)", false )
    result    = nil
    while true
      lineno = reader.lineno
      s = reader._read
      if s[1] # EOF?
        break
      elsif Nil != s[0].class
        printf( "\n          readExp=<<< %s >>>\n", printer._print(s[0]) ) if @debug_evaluator
        result = printer._print( @evaluator.lispEval( s[0], reader.sourcefile, lineno )) 
      end
    end
    result
  end
end
