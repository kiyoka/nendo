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


describe Nendo, "when use NendoTestError " do
  before do
    @nendoError1   = NendoTestError.new
    @runtimeError  = RuntimeError.new
    @argumentError = ArgumentError.new
    @nendoError2   = NendoTestError.new( @runtimeError.class )
  end

  it "should" do
    @nendoError1.type.should ==           RuntimeError
    @nendoError1.type = @runtimeError.class
    @nendoError1.type.should ==           RuntimeError
    @nendoError1.type = RuntimeError
    @nendoError1.type.should ==           RuntimeError
    @nendoError2.type.should ==           RuntimeError
  end
end


describe Nendo, "when use test function " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
    @nendo.evalStr( "(use nendo.test)" )
  end

  it "should" do
    @nendo.evalStr( '(test-section "(test)")' ).should  ==  '"(test)"'

    @nendo.evalStr( '(test "true false" #t (lambda () #t))' ).should             ==  '#t'
    @nendo.evalStr( '(test "true false" #f (lambda () #f))' ).should             ==  '#t'
    @nendo.evalStr( '(test "number" 0 (lambda () 0))' ).should                   ==  '#t'
    @nendo.evalStr( '(test "number" 0 (lambda () 1))' ).should                   ==  '#f'
    @nendo.evalStr( '(test "string" "ab" (lambda () (+ "a" "b")))' ).should      ==  '#t'
  end
end

describe Nendo, "when use test* function " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
    @nendo.evalStr( "(use nendo.test)" )
  end

  it "should" do
    @nendo.evalStr( '(test-section "(test*)")' ).should  ==  '"(test*)"'

    @nendo.evalStr( '(test* "true false" #t #t)' ).should                        ==  '#t'
    @nendo.evalStr( '(test* "true false" #f #f)' ).should                        ==  '#t'
    @nendo.evalStr( '(test* "number" 0 0)' ).should                              ==  '#t'
    @nendo.evalStr( '(test* "number" 0 1)' ).should                              ==  '#f'
    @nendo.evalStr( '(test* "string" "ab" (+ "a" "b"))' ).should                 ==  '#t'
    @nendo.evalStr( <<EOS
(test* "eq?"     '(a b) '(a b)  eq?)
EOS
           ).should               ==  '#f'

    @nendo.evalStr( <<EOS
(test* "eqv?"     '(a b) '(a b) eqv?)
EOS
           ).should               ==  '#f'

    @nendo.evalStr( <<EOS
(test* "equal?"   '(a b) '(a b)     )
EOS
           ).should               ==  '#t'

  end
end


describe Nendo, "when test framework handle exception " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
    @nendo.evalStr( "(use nendo.test)" )
  end

  it "should" do
    @nendo.evalStr( '(test-section "exceptions")' ).should  ==  '"exceptions"'

    @nendo.evalStr( '(. (test-error ) class)' ).should                     ==  'Nendo::NendoTestError'
    @nendo.evalStr( '(. (test-error RuntimeError)  class)' ).should        ==  'Nendo::NendoTestError'

    @nendo.evalStr( '(. (test-error RuntimeError)  type)' ).should         ==  'RuntimeError'
    @nendo.evalStr( '(. (test-error ArgumentError) type)' ).should         ==  'ArgumentError'
    @nendo.evalStr( '(. (test-error SyntaxError)   type)' ).should         ==  'SyntaxError'

    @nendo.evalStr( '(test-error? (test-error))               ' ).should   ==  '#t'
    @nendo.evalStr( '(test-error? (test-error RuntimeError))  ' ).should   ==  '#t'
    @nendo.evalStr( '(test-error? (test-error ArgumentError)) ' ).should   ==  '#t'
    @nendo.evalStr( '(test-error? (test-error SyntaxError))   ' ).should   ==  '#t'

    @nendo.evalStr( '(test-check   (test-error RuntimeError)   (test-error RuntimeError ))' ).should   ==  '#t'
    @nendo.evalStr( '(test-check   1                           (test-error RuntimeError ))' ).should   ==  '#f'
    @nendo.evalStr( '(test-check   (test-error RuntimeError)   1                         )' ).should   ==  '#f'
    @nendo.evalStr( '(test-check   1                           1                         )' ).should   ==  '#t'
    @nendo.evalStr( '(test-check   1                           2                         )' ).should   ==  '#f'
    @nendo.evalStr( '(test-check   (test-error RuntimeError)   (test-error ArgumentError))' ).should   ==  '#f'
    @nendo.evalStr( '(test-check   (test-error RuntimeError)   (test-error SyntaxError  ))' ).should   ==  '#f'
    @nendo.evalStr( '(test-check   (test-error ArgumentError)  (test-error RuntimeError ))' ).should   ==  '#f'
    @nendo.evalStr( '(test-check   (test-error SyntaxError)    (test-error RuntimeError ))' ).should   ==  '#f'

    @nendo.evalStr( '(test* "exception" (test-error TypeError) (+ 1.1 "str"))' ).should                      ==  '#t'
    @nendo.evalStr( '(test* "exception" (test-error RuntimeError) (error "[RuntimeError]"))' ).should        ==  '#t'

  end
end
