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

require 'ruby/types'
require 'ruby/reader'
require 'ruby/builtin_functions'
require 'ruby/evaluator'

module Nendo
  require 'stringio'
  require 'digest/sha1'
  require 'pp'

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
      "0.5.4"  ##NENDO-VERSION
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

    def setDisplayErrors( flag )
      @evaluator.setDisplayErrors( flag )
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

