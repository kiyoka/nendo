#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# printer.rb  -  "printer for nendo"
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

  class Printer
    def initialize( debug = false )
      @debug    = debug
    end

    def __write( sexp, readable )
      getQuoteKeyword = lambda { |x|
        case x
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
      when LispRegexp
        if readable
          sexp.to_readable
        else
          sexp.to_s
        end
      when LispKeyword
        ":" + sexp.key.to_s
      when LispCoreSyntax
        "#<Nendo::LispCoreSyntax>"
      when LispMacro
        "#<Nendo::LispMacro>"
      when LispSyntax
        "#<Nendo::LispSyntax>"
      when Nil
        "()"
      when nil
        "nil"
      when Hash
        sexp.to_s
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

end
