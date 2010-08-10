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


describe Nendo, "nendo.test library " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " (when (load-library \"nendo/test\") #t) " ).should == "#t"
    @nendo.replStr( " (when (File.exist? *test-record-file*) (File.unlink *test-record-file*))  #t" ).should == "#t"
    @nendo.replStr( " (test-output-file (.open \"/dev/null\" \"w\"))  #t" ).should == "#t"
    @nendo.replStr( " (test-start   \"EMPTY\") " ).should ==                                              '"EMPTY"'
    @nendo.replStr( " (test-section \"EMPTY-SECTION\") " ).should ==                                      '"EMPTY-SECTION"'
    @nendo.replStr( " (test-end) " ).should ==                                                            '0'
    @nendo.replStr( " *test-counts* " ).should ==                                                         '#(0 0 0 0)'

    @nendo.replStr( " (test-start   \"SUCCESS\") " ).should ==                                            '"SUCCESS"'
    @nendo.replStr( " (test-section \"SUCCESS-SECTION\") " ).should ==                                    '"SUCCESS-SECTION"'
    @nendo.replStr( " (test  \"test 1\" 1 (lambda () 1))                  *test-counts*" ).should ==      '#(1 1 0 0)'
    @nendo.replStr( " (test* \"test 2\" 1 1)                              *test-counts*" ).should ==      '#(2 2 0 0)'
    @nendo.replStr( " (test* \"test 3\" (+ 2 2) (* 2 2))                  *test-counts*" ).should ==      '#(3 3 0 0)'
    @nendo.replStr( " (test* \"test 4\" \"abc\" (+ \"a\" \"b\" \"c\"))    *test-counts*" ).should ==      '#(4 4 0 0)'
    @nendo.replStr( " (test* \"test 5\" '(1 . 2)  (cons 1 2))             *test-counts*" ).should ==      '#(5 5 0 0)'
    @nendo.replStr( " (test-end) " ).should ==                                                            '0'
    @nendo.replStr( " *test-counts* " ).should ==                                                         '#(5 5 0 0)'

    @nendo.replStr( " (test-start   \"FAIL\") " ).should ==                                               '"FAIL"'
    @nendo.replStr( " (test-section \"FAIL-SECTION\") " ).should ==                                       '"FAIL-SECTION"'
    @nendo.replStr( " (test  \"test 6\" 1 (lambda () 2))                  *test-counts*" ).should ==      '#(6 5 1 0)'
    @nendo.replStr( " (test* \"test 7\" 1 2)                              *test-counts*" ).should ==      '#(7 5 2 0)'
    @nendo.replStr( " (test* \"test 8\" (+ 1 1) (* 1 1))                  *test-counts*" ).should ==      '#(8 5 3 0)'
    @nendo.replStr( " (test* \"test 9\" \"ABC\" (+ \"a\" \"b\" \"c\"))    *test-counts*" ).should ==      '#(9 5 4 0)'
    @nendo.replStr( " (test* \"test 10\" '(1 . 2)  (cons 10 20))          *test-counts*" ).should ==      '#(10 5 5 0)'
    @nendo.replStr( " (test-end) " ).should ==                                                            '5'
    @nendo.replStr( " *test-counts* " ).should ==                                                         '#(10 5 5 0)'

    @nendo.replStr( " (define data #f)   data" ).should ==                                                "#f"
    @nendo.replStr( " (with-open *test-record-file* (lambda (in) (set! data (in.readline.chomp))))  data " ).should == 
      '"Total:    10 tests,     5 passed,     5 failed,     0 aborted."'
  end
end
