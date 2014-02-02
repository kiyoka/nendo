#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# builtin_functions.rb  -  "builtin functions for nendo"
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
      a = a.intern if a.class == ParsedSymbol
      b = b.intern if b.class == ParsedSymbol
      if a.is_a? String  and  b.is_a? String
        a === b
      elsif a.class != b.class
        false
      elsif a.is_a? Cell
        _equal_QUMARK( a.car, b.car ) and _equal_QUMARK( a.cdr, b.cdr )
      elsif _null_QUMARK( a ) and _null_QUMARK( b )
        true
      elsif a.is_a? Proc
        a == b
      else
        (a === b)
      end
    end

    def __PLMARK_ARGS0( )            0           end
    def __PLMARK_ARGS1( a )          a           end
    def __PLMARK_ARGS2( a, b )       a + b       end
    def __PLMARK_ARGS3( a, b, c )    a + b + c   end

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

    def __ASMARK_ARGS0( )            1           end
    def __ASMARK_ARGS1( a )          a           end
    def __ASMARK_ARGS2( a, b )       a * b       end
    def __ASMARK_ARGS3( a, b, c )    a * b * c   end

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

    def __MIMARK_ARGS0( )            0           end
    def __MIMARK_ARGS1( a )          -a          end
    def __MIMARK_ARGS2( a, b )       a - b       end
    def __MIMARK_ARGS3( a, b, c )    a - b - c   end

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
    def _eq_QUMARK(      a,b )
      a = a.intern if a.class == ParsedSymbol
      b = b.intern if b.class == ParsedSymbol
      a ==  b
    end
    def _gt_QUMARK(      a,b )      a >   b end
    def _ge_QUMARK(      a,b )      a >=  b end
    def _lt_QUMARK(      a,b )      a <   b end
    def _le_QUMARK(      a,b )      a <=  b end
    def _eqv_QUMARK(     a,b )
      a = a.intern if a.class == ParsedSymbol
      b = b.intern if b.class == ParsedSymbol
      a === b
    end
    def _car(      cell )          cell.car end
    def _cdr(      cell )
      if cell.cdr.is_a? Nil
        Cell.new
      else
        cell.cdr
      end
    end
    def _write(  arg  )            printer = Printer.new ; print printer._write( arg ) ; arg end
    def _write_MIMARKto_MIMARKstring(  arg  )  printer = Printer.new ; printer._write( arg )             end
    alias write_to_string _write_MIMARKto_MIMARKstring
    def _display(  arg  )          printer = Printer.new ; print printer._print( arg ) ; arg end
    def _print(  arg  )            self._display( arg )  ; self._newline() ; arg             end
    def _newline(       )          print "\n" end
    def _procedure_QUMARK( arg )   ((Proc == arg.class) or (Method == arg.class)) end
    def _macro_QUMARK( arg )       (LispMacro == arg.class) end
    def _symbol_QUMARK(    arg )   (arg.is_a? Symbol or arg.is_a? SyntacticClosure or arg.is_a? ParsedSymbol) end
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
      when Enumerator
        arg.to_list
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
      trampCall( callProcedure( nil, "(apply1 genereate func)", first, arg.to_arr ))
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
    def __PAMARKraise( exception, message, backtrace )
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

end
