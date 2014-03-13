#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# nendo_spec.rb -  "RSpec file for nendo language"
#
#   Copyright (c) 2009-2011  Kiyoka Nishiyama  <kiyoka@sumibi.org>
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
require 'nendo'
include Nendo

describe Nendo, "When use optional argument parser " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " (get-optional '() 100) " ).should == "100"
    @nendo.evalStr( " (get-optional '(1) 100) " ).should == "1"
    @nendo.evalStr( " (get-optional '(2) 100) " ).should == "2"
    @nendo.evalStr( " (get-optional '(3 4) 100) " ).should == "3"
    @nendo.evalStr( " (get-optional '() #t) " ).should == "#t"
    @nendo.evalStr( " (get-optional '() #f) " ).should == "#f"
  end
end

describe Nendo, "When use :optional argument feature " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( '(define (func arg1 arg2) (list arg1 arg2))    (func 1 2)' ).should ==                                    "(1 2)"
    @nendo.evalStr( '(define (func arg1 arg2 :optional (arg3 #f))  (list arg1 arg2 arg3))  (func 1 2)' ).should ==            "(1 2 #f)"
    @nendo.evalStr( '(define (func arg1 arg2 :optional (arg3 #t))  (list arg1 arg2 arg3))  (func 1 2)' ).should ==            "(1 2 #t)"
    @nendo.evalStr( '(define (func arg1 arg2 :optional (arg3  3))  (list arg1 arg2 arg3))  (func 1 2)' ).should ==            "(1 2 3)"
    @nendo.evalStr( '(define (func arg1 arg2 :optional (arg3 #f))  (list arg1 arg2 arg3))  (func 1 2 30)' ).should ==         "(1 2 30)"
    @nendo.evalStr( '(define (func arg1 arg2 :optional (arg3 #t))  (list arg1 arg2 arg3))  (func 1 2 40)' ).should ==         "(1 2 40)"
    @nendo.evalStr( '(define (func arg1 arg2 :optional (arg3  3))  (list arg1 arg2 arg3))  (func 1 2 50)' ).should ==         "(1 2 50)"
    @nendo.evalStr( '(define (func arg1 arg2 :optional (arg3  3))  (list arg1 arg2 arg3))  (func 1 2 "String")' ).should ==   '(1 2 "String")'

    @nendo.evalStr( '(define func (lambda (arg1 arg2) (list arg1 arg2)))   (func 1 2)' ).should ==                            '(1 2)'
    lambda { @nendo.evalStr( '(define func (lambda (arg1 arg2 :optional (arg3 #f))  (list arg1 arg2 arg3)))  (func 1 2)' ) }.should   raise_error( RuntimeError, /handle keyword argument/ )
    lambda { @nendo.evalStr( '(define func (lambda (arg1 arg2 :optional (arg3 #t))  (list arg1 arg2 arg3)))  (func 1 2)' ) }.should   raise_error( RuntimeError, /handle keyword argument/ )
    lambda { @nendo.evalStr( '(define func (lambda (arg1 arg2 :optional (arg3  3))  (list arg1 arg2 arg3)))  (func 1 2)' ) }.should   raise_error( RuntimeError, /handle keyword argument/ )
  end
end


describe Nendo, "when use export-to-ruby macro " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " (define (nendo_function0  ) 0)  #t" ).should == "#t"
    @nendo.evalStr( " (define (nendo_function1 x) (+ x 1))  #t" ).should == "#t"
    @nendo.evalStr( " (define (nendo_function2 x y) (* x y))  #t" ).should == "#t"
    @nendo.evalStr( " (define (nendo_function7 a b c d e f g) (to-arr (list a b c d e f g)))  #t" ).should == "#t"
    @nendo.evalStr( " (export-to-ruby nendo_function0) " ).should == "#t"
    @nendo.evalStr( " (export-to-ruby nendo_function1) " ).should == "#t"
    @nendo.evalStr( " (export-to-ruby nendo_function2) " ).should == "#t"
    @nendo.evalStr( " (export-to-ruby nendo_function7) " ).should == "#t"
    @nendo.evalStr( " (macroexpand '(export-to-ruby nendo_function1)) " ).should == '(%export-to-ruby "nendo_function1" nendo_function1)'
    @nendo.evalStr( " (macroexpand '(export-to-ruby nendo_function7)) " ).should == '(%export-to-ruby "nendo_function7" nendo_function7)'
    @nendo.evalStr( " (define (a-func0) 0)  #t" ).should == "#t"
    lambda { @nendo.evalStr( " (export-to-ruby a-func0) " ) }.should         raise_error(ArgumentError)
    @nendo.evalStr( " (define (clone) 0)  #t" ).should == "#t"
    lambda { @nendo.evalStr( " (export-to-ruby clone) " ) }.should           raise_error(RuntimeError)
    @nendo.evalStr( " (define variable_a 0)  #t" ).should == "#t"
    lambda { @nendo.evalStr( " (export-to-ruby variable_a) " ) }.should      raise_error(ArgumentError)
    @nendo.nendo_function0.should == 0
    @nendo.nendo_function1( 10 ).should == 11
    @nendo.nendo_function2( 8, 9 ).should == 72
    @nendo.nendo_function7( 7,6,5,4,3,2,1 ).should === [ 7,6,5,4,3,2,1 ]
  end
end
