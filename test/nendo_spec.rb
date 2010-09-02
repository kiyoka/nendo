#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# nendo_spec.rb -  "RSpec file for nendo language"
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
require 'nendo'
include Nendo



describe Nendo, "when use dot-operator (.) macro  and  (&block ...) " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " (define arr '#(10 50 40 10000 20 30))" ).should                    == "#(10 50 40 10000 20 30)"
    @nendo.evalStr( " (arr.sort)" ).should                                               == "#(10 20 30 40 50 10000)"
    @nendo.evalStr( " (arr.sort (&block (a b)  (if (le? a b)  1  -1))) " ).should        == "#(10000 50 40 30 20 10)"
    @nendo.evalStr( " (arr.sort_by (&block (item)  item.to_s)) " ).should                == "#(10 10000 20 30 40 50)"
  end
end



describe Nendo, "nendo.test library " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " (when (load-library \"nendo/test\") #t) " ).should == "#t"
    @nendo.evalStr( " (when (File.exist? *test-record-file*) (File.unlink *test-record-file*))  #t" ).should == "#t"
    @nendo.evalStr( " (test-output-file (.open \"/dev/null\" \"w\"))  #t" ).should == "#t"
    @nendo.evalStr( " (test-start   \"EMPTY\") " ).should ==                                              '"EMPTY"'
    @nendo.evalStr( " (test-section \"EMPTY-SECTION\") " ).should ==                                      '"EMPTY-SECTION"'
    @nendo.evalStr( " (test-end) " ).should ==                                                            '0'
    @nendo.evalStr( " *test-counts* " ).should ==                                                         '#(0 0 0 0)'

    @nendo.evalStr( " (test-start   \"SUCCESS\") " ).should ==                                            '"SUCCESS"'
    @nendo.evalStr( " (test-section \"SUCCESS-SECTION\") " ).should ==                                    '"SUCCESS-SECTION"'
    @nendo.evalStr( " (test  \"test 1\" 1 (lambda () 1))                  *test-counts*" ).should ==      '#(1 1 0 0)'
    @nendo.evalStr( " (test* \"test 2\" 1 1 eq?)                          *test-counts*" ).should ==      '#(2 2 0 0)'
    @nendo.evalStr( " (test* \"test 3\" (+ 2 2) (* 2 2) eqv?)             *test-counts*" ).should ==      '#(3 3 0 0)'
    @nendo.evalStr( " (test* \"test 4\" \"abc\" (+ \"a\" \"b\" \"c\"))    *test-counts*" ).should ==      '#(4 4 0 0)'
    @nendo.evalStr( " (test* \"test 5\" '(1 . 2)  (cons 1 2))             *test-counts*" ).should ==      '#(5 5 0 0)'
    @nendo.evalStr( " (test-end) " ).should ==                                                            '0'
    @nendo.evalStr( " *test-counts* " ).should ==                                                         '#(5 5 0 0)'

    @nendo.evalStr( " (test-start   \"FAIL\") " ).should ==                                               '"FAIL"'
    @nendo.evalStr( " (test-section \"FAIL-SECTION\") " ).should ==                                       '"FAIL-SECTION"'
    @nendo.evalStr( " (test  \"test 6\" 1 (lambda () 2))                  *test-counts*" ).should ==      '#(6 5 1 0)'
    @nendo.evalStr( " (test* \"test 7\" 1 2 eqv?)                         *test-counts*" ).should ==      '#(7 5 2 0)'
    @nendo.evalStr( " (test* \"test 8\" '(1) '(1) eq?)                    *test-counts*" ).should ==      '#(8 5 3 0)'
    @nendo.evalStr( " (test* \"test 9\" \"ABC\" (+ \"a\" \"b\" \"c\"))    *test-counts*" ).should ==      '#(9 5 4 0)'
    @nendo.evalStr( " (test* \"test 10\" '(1 . 2)  (cons 10 20))          *test-counts*" ).should ==      '#(10 5 5 0)'
    @nendo.evalStr( " (test-end) " ).should ==                                                            '5'
    @nendo.evalStr( " *test-counts* " ).should ==                                                         '#(10 5 5 0)'

    @nendo.evalStr( " (define data #f)   data" ).should ==                                                "#f"
    @nendo.evalStr( " (with-open *test-record-file* (lambda (in) (set! data (in.readline.chomp))))  data " ).should == 
      '"Total:    10 tests,     5 passed,     5 failed,     0 aborted."'
  end
end


describe Nendo, "when use export-to-ruby macro " do
  before do
    @nendo = Nendo::Core.new()
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
