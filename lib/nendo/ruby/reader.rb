#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# reader.rb  -  "sexp reader for nendo"
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
        case sym
        when :true
          true
        when :false
          false
        when :nil
          nil
        else
          ParsedSymbol.new( sym, cur.sourcefile, cur.lineno )
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

end
