#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# syntax_spec.rb -  "RSpec file for nendo language (nendo.test framework part)"
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
require 'timeout'

describe Nendo, "when use NendoTestError " do
  before do
    @nendoError1   = NendoTestError.new
    @runtimeError  = RuntimeError.new
    @argumentError = ArgumentError.new
    @nendoError2   = NendoTestError.new( @runtimeError.class )
  end

  it "should" do
    expect(@nendoError1.type).to eq(RuntimeError)
    @nendoError1.type = @runtimeError.class
    expect(@nendoError1.type).to eq(RuntimeError)
    @nendoError1.type = RuntimeError
    expect(@nendoError1.type).to eq(RuntimeError)
    @nendoError1.type = Timeout::Error
    expect(@nendoError1.type).to eq(Timeout::Error)
    expect(@nendoError2.type).to eq(RuntimeError)
  end
end


describe Nendo, "when use test function " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
    @nendo.evalStr( "(use nendo.test)" )
  end

  it "should" do
    expect(@nendo.evalStr( '(test-section "(test)")' )).to  eq('"(test)"')

    expect(@nendo.evalStr( '(test "true false" #t (lambda () #t))' )).to             eq('#t')
    expect(@nendo.evalStr( '(test "true false" #f (lambda () #f))' )).to             eq('#t')
    expect(@nendo.evalStr( '(test "number" 0 (lambda () 0))' )).to                   eq('#t')
    expect(@nendo.evalStr( '(test "number" 0 (lambda () 1))' )).to                   eq('#f')
    expect(@nendo.evalStr( '(test "string" "ab" (lambda () (+ "a" "b")))' )).to      eq('#t')
  end
end

describe Nendo, "when use test* function " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
    @nendo.evalStr( "(use nendo.test)" )
  end

  it "should" do
    expect(@nendo.evalStr( '(test-section "(test*)")' )).to  eq('"(test*)"')

    expect(@nendo.evalStr( '(test* "true false" #t #t)' )).to                        eq('#t')
    expect(@nendo.evalStr( '(test* "true false" #f #f)' )).to                        eq('#t')
    expect(@nendo.evalStr( '(test* "number" 0 0)' )).to                              eq('#t')
    expect(@nendo.evalStr( '(test* "number" 0 1)' )).to                              eq('#f')
    expect(@nendo.evalStr( '(test* "string" "ab" (+ "a" "b"))' )).to                 eq('#t')
    expect(@nendo.evalStr( <<EOS
(test* "eq?"     '(a b) '(a b)  eq?)
EOS
           )).to               eq('#f')

    expect(@nendo.evalStr( <<EOS
(test* "eqv?"     '(a b) '(a b) eqv?)
EOS
           )).to               eq('#f')

    expect(@nendo.evalStr( <<EOS
(test* "equal?"   '(a b) '(a b)     )
EOS
           )).to               eq('#t')

  end
end


describe Nendo, "when test framework handle exception " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
    @nendo.evalStr( "(use nendo.test)" )
  end

  it "should" do
    expect(@nendo.evalStr( '(test-section "exceptions")' )).to  eq('"exceptions"')

    expect(@nendo.evalStr( '(. (test-error ) class)' )).to                     eq('Nendo::NendoTestError')
    expect(@nendo.evalStr( '(. (test-error RuntimeError)  class)' )).to        eq('Nendo::NendoTestError')

    expect(@nendo.evalStr( '(. (test-error RuntimeError)  type)' )).to         eq('RuntimeError')
    expect(@nendo.evalStr( '(. (test-error ArgumentError) type)' )).to         eq('ArgumentError')
    expect(@nendo.evalStr( '(. (test-error SyntaxError)   type)' )).to         eq('SyntaxError')

    expect(@nendo.evalStr( '(test-error? (test-error))               ' )).to   eq('#t')
    expect(@nendo.evalStr( '(test-error? (test-error RuntimeError))  ' )).to   eq('#t')
    expect(@nendo.evalStr( '(test-error? (test-error ArgumentError)) ' )).to   eq('#t')
    expect(@nendo.evalStr( '(test-error? (test-error SyntaxError))   ' )).to   eq('#t')

    expect(@nendo.evalStr( '(test-check   (test-error RuntimeError)   (test-error RuntimeError ))' )).to   eq('#t')
    expect(@nendo.evalStr( '(test-check   1                           (test-error RuntimeError ))' )).to   eq('#f')
    expect(@nendo.evalStr( '(test-check   (test-error RuntimeError)   1                         )' )).to   eq('#f')
    expect(@nendo.evalStr( '(test-check   1                           1                         )' )).to   eq('#t')
    expect(@nendo.evalStr( '(test-check   1                           2                         )' )).to   eq('#f')
    expect(@nendo.evalStr( '(test-check   (test-error RuntimeError)   (test-error ArgumentError))' )).to   eq('#f')
    expect(@nendo.evalStr( '(test-check   (test-error RuntimeError)   (test-error SyntaxError  ))' )).to   eq('#f')
    expect(@nendo.evalStr( '(test-check   (test-error ArgumentError)  (test-error RuntimeError ))' )).to   eq('#f')
    expect(@nendo.evalStr( '(test-check   (test-error SyntaxError)    (test-error RuntimeError ))' )).to   eq('#f')

    expect(@nendo.evalStr( '(test* "exception" (test-error TypeError)    (+ 1.1 "str"))' )).to                      eq('#t')
    expect(@nendo.evalStr( '(test* "exception" (test-error RuntimeError) (+ 1.1 "str"))' )).to                      eq('#f')
    expect(@nendo.evalStr( '(test* "exception" (test-error TypeError)    (error "[RuntimeError]"))' )).to           eq('#f')
    expect(@nendo.evalStr( '(test* "exception" (test-error RuntimeError) (error "[RuntimeError]"))' )).to           eq('#t')
    expect(@nendo.evalStr( '(test* "exception" (test-error ArgumentError)    (raise RuntimeError  "[RuntimeError]"))'  )).to           eq('#f')
    expect(@nendo.evalStr( '(test* "exception" (test-error ArgumentError)    (raise ArgumentError "[ArgumentError]"))' )).to           eq('#t')
    expect(@nendo.evalStr( '(test* "exception" (test-error ArgumentError)    (raise TypeError     "[TypeError]"))'     )).to           eq('#f')
    expect(@nendo.evalStr( '(test* "exception" (test-error ArgumentError)    (raise NoMethodError "[NoMethodError]"))' )).to           eq('#f')
  end
end
