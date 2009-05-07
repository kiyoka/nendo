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
  def each
  end
end

class LispString < String
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
        it = it.cdr
      end
    end
  end

  def length
    if isNull
      0
    elsif isDotted
      raise TypeError, "Error: proper list required"
    else
      count = 0
      it = self
      begin
        it = it.cdr
        count += 1
      end while Nil != it.class
      count
    end
  end

  def size # alias of length
    length
  end    

  def isDotted
    ((Cell != @cdr.class) and (Nil != @cdr.class))
  end

  def isNull
    (Nil  == @car.class)
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
  def to_list
    if 0 == self.length
      Nil.new
    else
      cells = self.map { |x|
        Cell.new( x )
      }
      ptr = cells.pop
      cells.reverse.each { |x|
        x.cdr = ptr
        ptr = x
      }
      return ptr
    end
  end
end

class Token
  def initialize( kind, str, lineno = nil, column = nil )
    @kind   = kind
    @str    = str
    @lineno = lineno
    @column = column
  end
  attr_accessor :kind, :str
end


class CharReader
  def initialize( inport )
    @inport = inport
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

  def lineno
    @lineno
  end

  def column
    @column
  end
end

class Reader
  ## tokens
  T_EOF       = :t_eof
  T_LPAREN    = :t_lparen
  T_RPAREN    = :t_rparen
  T_SYMBOL    = :t_symbol
  T_NUM       = :t_num
  T_STRING    = :t_string
  T_QUOTE     = :t_quote
  T_DOT       = :t_dot
  T_LINEFEED  = :t_linefeed
  T_COMMENT   = :t_comment

  # inport is IO class
  def initialize( inport, debug = false )
    @chReader = CharReader.new( inport )
    @curtoken = nil
    @debug    = debug
    token # setup first token.
  end

  def reset
    @chReader.reset
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
      @curtoken = Token.new( T_EOF, "", @chReader.lineno, @chReader.column )
    else
      str = ch.chr
      kind =
        case str
        when '('
          T_LPAREN
        when ')'
          T_RPAREN
        when '.'
          T_DOT
        when /[\r\n]/
          T_LINEFEED
        when /;/
          readwhile( /[^\r\n]/ )
          str = ""
          T_COMMENT
        when /[a-zA-Z+*\/=!<>&|%-]/ # symbol
          str += readwhile( /[a-zA-Z0-9+*\/=!<>&|?%-]/ )
          T_SYMBOL
        when /[0-9]/           # number
          str += readwhile( /[0-9.]/ )
          T_NUM
        when /["]/             # String
          str = LispString.new( readwhile( /[^"]/ )) ; readwhile( /["]/ )
          T_STRING
        when /[\']/
          T_QUOTE
        end
      printf( "    token: [%s] : %s   (L%d:C%d)\n", str, kind.to_s, @chReader.lineno, @chReader.column ) if @debug
      @curtoken = Token.new( kind, str, @chReader.lineno, @chReader.column )
    end
  end

  def token
    begin
      tokenWithComment
    end while T_COMMENT == curtoken.kind
    curtoken
  end

  def curtoken
    @curtoken
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
    printf( "  letArg: [%s]\n", sexp ) if @debug
    sexp.each { |arg|
      arg.car.car = Cell.new( :quote, Cell.new( arg.car.car ))
    }
    sexp
  end

  def atom
    cur = curtoken 
    printf( "  NonT: [%s] : [%s]\n", "atom", cur.str ) if @debug
    token
    case cur.kind
    when T_SYMBOL
      cur.str.intern
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
    end
  end

  # list := sexp 
  #       | atom . atom 
  #       | atom ...
  #       | lambda (arg1 arg2) body
  #       | let ((arg1 value1) (arg2 value2)...) body
  #       | let name ((arg1 value1) (arg2 value2)...) body
  def list
    printf( "  NonT: [%s]\n", "list" ) if @debug
    dotted = false
    cells = []
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
      else
        if curtoken.kind == T_DOT
          if 1 == cells.size
            dotted = true
            token
          else
            print "Error : illegal dotted pair syntax"
            break
          end
        elsif curtoken.kind == T_QUOTE
          cells << Cell.new( sexp() )
        else
          cells << Cell.new( atom() )
        end
      end
    end
    if dotted
      ## dotted list
      Cell.new( cells[0].car, cells[1].car )
    else
      ## setup list
      if 0 == cells.size
        Cell.new() # null list
      else
        if 1 < cells.size
          ## special form
          case cells[0].car 
          when :define , :set! , :lambda
            cells[1].car = Cell.new( :quote, Cell.new( cells[1].car ))
          when :let
            case cells[1].car
            when Cell        # let
              cells[1].car = letArgumentList( cells[1].car )
            when Symbol      # named let
              cells[1].car = Cell.new( :quote, Cell.new( cells[1].car ))
              cells[2].car = letArgumentList( cells[2].car )
            end
          end
          ptr = cells.pop
          cells.reverse.each { |x|
            x.cdr = ptr
            ptr = x
          }
        end
        cells.first
      end
    end
  end

  def skipEnter
    while T_LINEFEED == curtoken.kind
      token
    end
  end

  # sexp := ( list ) | 'sexp | atom
  def sexp
    printf( "  NonT: [%s]\n", "sexp" ) if @debug
    case curtoken.kind
    when T_LINEFEED
      token
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
    when T_QUOTE
      _atom = atom() ## "quote" symbol
      Cell.new( _atom, Cell.new( sexp() ))
    else
      atom()
    end
  end

  # return [ S-expression-tree, eof-flag ]
  def _read
    case curtoken.kind
    when T_EOF
      [ Nil.new, true ]
    when T_LINEFEED
      [ Nil.new, false ]
    else
      [ sexp(),  false ]
    end
  end
end


# Translate S expression to Ruby expression and Evaluation
class Evaluator
  def initialize( debug = false )
    @binding = binding
    @debug   = debug
    @lineno      = 1
    @sourcefile  = ''
    @alias   = {
      '+'        => '_plus',
      '-'        => '_minus',
      '*'        => '_multi',
      '/'        => '_div',
      '%'        => '_mod',
      'or'       => '_or',
      'and'      => '_and',
      'not'      => '_not',
      '||'       => '_or',
      '&&'       => '_and',
      '='        => '_eq1',
      'first'    => 'car',
      'rest'     => 'cdr',
      'null?'    => 'nullp',
      'list'     => '_list',
      'sort'     => '_sort',
      'reverse'  => '_reverse',
      'uniq'     => '_uniq',
      'range'    => '_range',
    }
    @sym = {
      '_plus'      => getIFunc( '+' ),
      '_minus'     => getIFunc( '-' ),
      '_multi'     => getIFunc( '*' ),
      '_div'       => getIFunc( '/' ),
      '_mod'       => getIFunc( '%' ),
      '_or'        => getIFunc( 'or' ),
      '_and'       => getIFunc( 'and' ),
      '_not'       => getIFunc( 'not' ),
      'cons'       => getIFunc( 'cons' ),
      'exit'       => getIFunc( 'exit' ),
      'print'      => getIFunc( 'print' ),
      'printf'     => getIFunc( 'printf' ),
      'sprintf'    => getIFunc( 'sprintf' ),
      'nullp'      => getIFunc( 'nullp' ),
      '_list'      => getIFunc( 'list' ),
      '_sort'      => getIFunc( 'sort' ),
      '_reverse'   => getIFunc( 'reverse' ),
      '_uniq'      => getIFunc( 'uniq' ),
      '_range'     => getIFunc( 'range' ),
    }
    # initialize operator function
    _operators = {
      '=='  => '_eq1',
      '>'   => '_gt',
      '>='  => '_ge',
      '<'   => '_lg',
      '<='  => '_le',
      '===' => '_eq2',
    }
    _operators.keys.each { |rubyOp|
      eval( sprintf("%s = lambda {|*args| assertFlat( *args ) ; args[0] %s args[1] } ;", _operators[rubyOp], rubyOp ), @binding )
      @alias[ rubyOp ] = _operators[ rubyOp ]
    }
    # initialize car, cdr, caar, cadr functions.
    [ 'car',
      'cdr',
      'caar',
      'cadr',
      'cdar',
      'cddr',
      'cadar',
      'caddr',
      'cadaar',
      'cadddr',
      'cddddr' ].each { |str|
      pattern = str[1..-2].split( // ).reverse
      _chain = pattern.map{ |x| "c" + x + "r" }.join( "." )
      eval( sprintf("%s = lambda {|arg|  assertList( '%s', arg ) ; arg.%s} ;", str, str, _chain ), @binding )
    }

    # initialize global symbols
    rubyExp = @sym.keys.map { |name|
      sprintf( "%s = @sym[ '%s' ] ", name, name )
    }.join( " ; " )
    eval( rubyExp, @binding )
  end

  def assertFlat( *args )
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
  
  def assertList( funcname, arg )
    if Cell != arg.class
      raise ArgumentError, "Error: %s expects a list argument.\n"
    end
  end

  def getIFunc( name )
    case name
    when '+'
      lambda {|*args| 
        assertFlat( *args )
        if 1 == args.length 
          args[0]
        else
          args[1..-1].inject(args[0]){|x,y| x+y}
        end
      }
    when '-'
      lambda {|*args|
        assertFlat( *args )
        if 1 == args.length 
          - args[0]
        else
          args[1..-1].inject(args[0]){|x,y| x-y}
        end
      }
    when '*'
      lambda {|*args|
        assertFlat( *args )
        args.inject(1) {|x,y| x*y}
      }
    when '/'
      lambda {|*args|
        assertFlat( *args )
        if 1 == args.length 
          1 / args[0]
        else
          args[1..-1].inject(args[0]) {|x,y| x/y}
        end
      }
    when '%'
      lambda {|*args|
        assertFlat( *args )
        if 1 == args.length 
          1 % args[0]
        else
          args[1..-1].inject(args[0]) {|x,y| x%y}
         end
      }
    when 'or'
      lambda {|*args| 
        ret = args.select { |x| x }
        if 0 == ret.length
          false
        else
          ret[0]
        end
      }
    when 'and'
      lambda {|*args| 
        ret = args.select { |x| x }
        if args.length != ret.length
          false
        else
          ret[-1]
        end
      }
    when 'not'
      lambda {|*args|
        if 1 < args.length
          raise ArgumentError, "Error: wrong number of arguments: not requires 1"
        else
          not args[0]
        end
      }
    when 'cons'
      lambda {|*args|
        if 2 == args.length
          Cell.new( args[0], args[1] )
        else
          raise ArgumentError, "Error: wrong number of arguments: cons requires 2"
        end
      }
    when 'exit'
      lambda {|*args|
        if 0 == args.length
          exit(0)
        else
          exit(args[0])
        end
      }
    when 'print'
      lambda {|*args| 
        assertFlat( *args )
        print( *args )
      }
    when 'printf'
      lambda {|*args| 
        assertFlat( *args )
        printf( *args )
      }
    when 'sprintf'
      lambda {|*args| 
        assertFlat( *args )
        sprintf( *args )
      }
    when 'nullp'
      lambda {|arg| 
        if Nil == arg.class
          true
        elsif Cell == arg.class
          arg.isNull
        else
          false
        end
      }
    when 'list'
      lambda {|*args|   args.to_list }
    when 'sort'
      lambda {|arg|     arg.to_arr.sort.to_list }
    when 'reverse'
      lambda {|arg|     arg.to_arr.reverse.to_list }
    when 'uniq'
      lambda {|arg|     arg.to_arr.uniq.to_list }
    when 'range'
      lambda {|num|     (0..num-1).map.to_list }
    end
  end

  def execFunc( funcname, args )
    #printf( "execFunc( %s, %s )\n", funcname, "xxx" )
    #pp args
    case funcname
    when :define , :set!   # `define' and `set!' special form
      sprintf( "%s = %s", args.car.to_s.sub( /^:/, "" ), args.cdr.car.to_s )
    else
      funcname = funcname.to_s
      funcname = @alias[ funcname ] if @alias[ funcname ] 
      str  = sprintf( "%s.call(", funcname )
      str += args.map { |x|
        x.car.to_s
      }.join( " , " )
      str += ")"
    end
  end

  def makeClosure( args )
    first   = args.car.cdr.car
    rest    = args.cdr
    argsyms = first.map { |x| x.car }
    str = sprintf( "lambda { |%s| ", argsyms.join( "," ))
    ar = rest.map { |e|
      translate( e.car )
    }
    str += ar.join( ";" ) + "}"
  end

  def makeIf( args )
    #pp args
    #pp args.length
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
    #p "makeLet"
    #pp args
    _name = "___lambda"
    if :quote == args.car.car
      _name = args.car.cdr.car.to_s
      args = args.cdr
    end
    rest = args.cdr
    str = _name + " = "
    # printer = Printer.new
    # p "args: " + printer._print( args.car )
    argsyms = args.car.map { |x|
      x.car.car.cdr.car.to_s
    }
    argvals = args.car.map { |x|
      translate( x.car.cdr.car )
    }
    #p "rest"
    #pp rest
    str += sprintf( "lambda { |%s| ", argsyms.join( "," ))
    ar = rest.map { |e|
      translate( e.car )
    }
    str += ar.join( ";" ) + "}\n"
    str += sprintf( "%s.call( %s )\n", _name, argvals.join( "," ))
  end

  def apply( car, cdr )
    ptr = cdr
    while Nil != ptr.class
      #print "ptr.car: "
      #pp ptr.car
      ptr.car = translate( ptr.car )
      ptr = ptr.cdr
    end
    execFunc( car, cdr )
  end

  def genQuote( sexp, str = "" )
    origStr = str
    case sexp
    when Cell
      if sexp.isNull
        str += "Nil.new"
      elsif sexp.isDotted
        str += sprintf( "Cell.new(%s, %s)", genQuote( sexp.car ), genQuote( sexp.cdr ))
      else
        arr = Array.new
        arr << genQuote( sexp.car )
        ptr = sexp.cdr
        while Nil != ptr.class
          arr << genQuote( ptr.car )
          ptr = ptr.cdr
        end
        str += "Cell.new("
        str += arr.map{ |e|
          e
        }.join( " ,Cell.new(" )
        str += arr.map{ |e|
          ")"
        }.join( "" )
      end
    when Symbol
      case sexp
      when :true, :false, :nil  # reserved symbols
        str += sexp.to_s
      else
        str += sprintf( ":%s", sexp.to_s )
      end
    when String
      str += sprintf( "\"%s\"", sexp )
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
        raise ExceptionNonSymbol
      elsif Cell == sexp.car.class
        str += translate( sexp.car )
      elsif :lambda == sexp.car
        str += self.makeClosure( sexp.cdr )
      elsif :if == sexp.car
        str += self.makeIf( sexp.cdr )
      elsif :let == sexp.car
        str += self.makeLet( sexp.cdr )
      else
        str += self.apply( sexp.car, sexp.cdr )
      end
    else
      case sexp
      when Symbol
        sym = sexp.to_s
        if @alias[ sym ]
          sym = @alias[ sym ]
        end
        str += sprintf( 'begin %s ; rescue NameError ; print "%s:%d: NameError: undefined valiable `%s\'" ; nil ; end', sym, @sourcefile, @lineno, sym )
      when Fixnum
        str += sexp.to_s
      when LispString
        str += sprintf( "\"%s\"", sexp )
      else
        str += sexp.to_s
      end
    end
  end

  def _eval( sexp, sourcefile = nil, lineno = nil )
    @sourcefile = sourcefile    if ( sourcefile ) 
    @lineno     = lineno        if ( lineno     )
    rubyExp = translate( sexp );
    printf( "          rubyExp=<<< %s >>>\n", rubyExp ) if @debug
    eval( rubyExp, @binding );
  end
end

class Printer
  def initialize( debug = false )
    @debug    = debug
  end

  def _print( sexp, str = "" )
    if 0 == str.length and @debug 
      pp sexp
    end
    case sexp
    when Cell
      arr = []
      if sexp.isDotted
        arr << sprintf( "%s . %s", _print(sexp.car), _print(sexp.cdr) )
      else
        arr << _print( sexp.car )
        ptr = sexp.cdr
        while Nil != ptr.class
          arr << _print( ptr.car )
          ptr = ptr.cdr
        end
      end
      "(" +  arr.join( " " ) + ")"
    when Symbol
      sprintf( "%s", sexp.to_s )
    when String
      sprintf( "\"%s\"", sexp.to_s )
    when Nil
      "()"
    when nil
      "nil"
    else
      sprintf( "%s", sexp )
    end
  end
end


class Nendo
  def initialize( io = nil )
    if not io
      io = StringIO.open( "" )
    end
    @reader       = Reader.new( io, false )
    @evaluator    = Evaluator.new( false )
    @printer      = Printer.new( false )
  end
  
  def loadInitFile
    loadFile( "./init.nnd" )
  end

  def loadFile( filename )
    open( filename ) {|f|
      reader = Reader.new( f, false )
      while true
        lineno = reader.lineno
        s = reader._read
        if s[1] # EOF?
          break
        elsif Nil != s[0].class
          @evaluator._eval( s[0], filename, lineno )
        end
      end
    }
  end

  def repl
    while true
      print "nendo> "
      s = @reader._read
      if s[1] # EOF?
        break
      elsif Nil != s[0].class
        print @printer._print( @evaluator._eval( s[0] )) 
        print "\n"
      end
    end
  end

  def replStr( str )
    sio       = StringIO.open( str )
    reader    = Reader.new( sio, false )
    result    = nil
    while true
      s = reader._read
      if s[1] # EOF?
        break
      elsif Nil != s[0].class
        result = @printer._print( @evaluator._eval( s[0] )) 
      end
    end
    result
  end
end
