#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# nendo.rb  -  "types for nendo core"
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

  class NendoTestError
    def initialize( type = RuntimeError )
      @type = type
    end

    def to_s
      type.to_s
    end
    attr_accessor :type
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
    def initialize( _rubysym, _origname, _pred, _args )
      @rubysym  = _rubysym
      @origname = _origname
      @pred     = _pred
      @args     = _args
    end
    attr_reader :rubysym, :origname, :pred, :args
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

end
