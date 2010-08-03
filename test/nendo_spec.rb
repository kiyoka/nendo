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

describe Cell, "when initialized as '()" do
  before do
    @cell = Cell.new
  end

  it "should" do
    @cell.isNull.should be_true
    @cell.length.should == 0
    @cell.size.should == 0
    @cell.to_arr.should == []
    @cell.class.should == Cell
    @cell.map{ |x| x }.should == []
    @cell.lastAtom.should be_false
    @cell.getLastAtom.class.should == Nil
  end
end

describe Cell, "when initialized as '(100)" do
  before do
    @cell = Cell.new( 100 )
  end
  
  it "should" do
    @cell.isNull.should_not be_true
    @cell.length.should == 1
    @cell.size.should == 1
    @cell.car.should == 100
    @cell.cdr.class.should == Nil
    @cell.to_arr.should == [ 100 ]
    @cell.lastCell.car.should == 100
    @cell.lastCell.cdr.class.should == Nil
    @cell.lastAtom.should be_false
    @cell.getLastAtom.class.should == Nil
  end
end

describe Cell, "when initialized as '(100 . 200)" do
  before do
    @cell = Cell.new( 100, 200 )
  end
  
  it "should" do
    @cell.isNull.should_not be_true
    @cell.isDotted.should be_true
    @cell.length.should == 1
    @cell.size.should == 1
    @cell.car.should == 100
    @cell.cdr.should == 200
    @cell.to_arr.should == [ 100 ]
    @cell.lastCell.car.should == 100
    @cell.lastCell.cdr.should == 200
    @cell.lastAtom.should be_true
    @cell.getLastAtom.should == 200
  end
end

describe Cell, "when initialized as '(cons 100 (cons 200 300)) " do
  before do
    @cell = Cell.new( 100, Cell.new( 200, 300 ))
  end
  
  it "should" do
    @cell.isNull.should_not   be_true
    @cell.isDotted.should_not be_true
    @cell.length.should == 2
    @cell.size.should == 2
    @cell.car.should == 100
    @cell.cdr.car.should == 200
    @cell.cdr.cdr.should == 300
    @cell.to_arr.should == [ 100, 200 ]
    @cell.lastCell.car.should == 200
    @cell.lastCell.cdr.should == 300
    @cell.lastAtom.should be_true
    @cell.getLastAtom.should == 300
  end
end

describe Nendo, "Ruby's arity rules " do
  it "should" do
    Proc.new {}.arity.should <= 0
    Proc.new {||}.arity.should == 0
    Proc.new {|a|}.arity.should == 1
    Proc.new {|a,b|}.arity.should == 2
    Proc.new {|a,b,c|}.arity.should == 3
    Proc.new {|*a|}.arity.should == -1
    Proc.new {|a,*b|}.arity.should == -2
  end
end

describe Nendo, "Ruby's lexical closure " do
  it "should" do
    lambda1 = lambda { |val|
      val = 'a'
      lambda2 = lambda { |val| val }
      lambda2.call( 'X' )
      val
    }
    lambda1.call( 'A' ).should == 'a'
  end
end


describe Nendo, "Ruby's undefined instance variable " do
  it "should" do
    @undefined_variable.should be_nil
    defined?( @undefined_variable ).should be_nil
  end
end

describe Evaluator, "When use Evaluator's util methods" do
  before do
    @evaluator = Evaluator.new()
  end
  it "should" do
    @evaluator.toRubySymbol( "a" ).should == "_a"
    @evaluator.toRubySymbol( "a_b_c" ).should == "_a_b_c"
    @evaluator.toRubySymbol( "_a_b_c_" ).should == "__a_b_c_"
    @evaluator.toRubySymbol( '!' ).should  == '__EXMARK'
    @evaluator.toRubySymbol( '$' ).should  == '__DOMARK'
    @evaluator.toRubySymbol( '%' ).should  == '__PAMARK'
    @evaluator.toRubySymbol( '&' ).should  == '__ANMARK'
    @evaluator.toRubySymbol( '*' ).should  == '__ASMARK'
    @evaluator.toRubySymbol( '+' ).should  == '__PLMARK'
    @evaluator.toRubySymbol( '-' ).should  == '__MIMARK'
    @evaluator.toRubySymbol( '/' ).should  == '__SLMARK'
    @evaluator.toRubySymbol( ':' ).should  == '__COMARK'
    @evaluator.toRubySymbol( '::' ).should == '_::'
    @evaluator.toRubySymbol( '<' ).should  == '__LTMARK'
    @evaluator.toRubySymbol( '=' ).should  == '__EQMARK'
    @evaluator.toRubySymbol( '>' ).should  == '__GTMARK'
    @evaluator.toRubySymbol( '?' ).should  == '__QUMARK'
    @evaluator.toRubySymbol( '@' ).should  == '__ATMARK'
    @evaluator.toRubySymbol( '^' ).should  == '__NKMARK'
    @evaluator.toRubySymbol( "_" ).should  == "__"
    @evaluator.toRubySymbol( '~' ).should  == '__CHMARK'
    @evaluator.toRubySymbol( "a?" ).should == "_a_QUMARK"
    @evaluator.toRubySymbol( "a?" ).should == "_a_QUMARK"
    @evaluator.toRubySymbol( "a!" ).should == "_a_EXMARK"
    @evaluator.toRubySymbol( "a?b" ).should == "_a_QUMARKb"
    @evaluator.toRubySymbol( "a!b" ).should == "_a_EXMARKb"
    @evaluator.toRubySymbol( "a-b" ).should == "_a_MIMARKb"
    @evaluator.toRubySymbol( "a-b-c" ).should == "_a_MIMARKb_MIMARKc"
    @evaluator.toRubySymbol( "-a-b-c" ).should == "__MIMARKa_MIMARKb_MIMARKc"
    @evaluator.toRubySymbol( "-a-!-b" ).should == "__MIMARKa_MIMARK_EXMARK_MIMARKb"
    @evaluator.toRubySymbol( "-a-!-?b" ).should == "__MIMARKa_MIMARK_EXMARK_MIMARK_QUMARKb"
    @evaluator.toRubySymbol( "a.b" ).should == "_a.b"
    @evaluator.toRubySymbol( "aa.bb" ).should == "_aa.bb"
    @evaluator.toRubySymbol( "aa.bb.cc" ).should == "_aa.bb.cc"
    @evaluator.toLispSymbol( "_a_QUMARK" ).should == "a?"
    @evaluator.toLispSymbol( "_a_EXMARK" ).should == "a!"
    @evaluator.toLispSymbol( "_a_b" ).should == "a_b"
    @evaluator.toLispSymbol( "_a_b_c" ).should == "a_b_c"
    @evaluator.toLispSymbol( "_A_B_C" ).should == "A_B_C"
    @evaluator.toRubyValue( "a" ).should == "a"
    @evaluator.toRubyValue( "b" ).should == "b"
    @evaluator.toRubyValue( "true" ).should == "true"
    @evaluator.toRubyValue( "nil" ).should == "nil"
    @evaluator.toRubyValue( "false" ).should == "false"
    @evaluator.toRubyValue( :a ).should == "a"
    @evaluator.toRubyValue( :b ).should == "b"
    @evaluator.toRubyValue( true ).should == "true"
    @evaluator.toRubyValue( nil ).should == "nil"
    @evaluator.toRubyValue( false ).should == "false"
  end
end

describe Nendo, "when call replStr() with literals" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " 1 " ).should == "1"
    @nendo.replStr( " 100000 " ).should == "100000"
    @nendo.replStr( " 1.1 " ).should == "1.1"
    @nendo.replStr( " 1.0 " ).should == "1.0"
    @nendo.replStr( ' "a" ' ).should == '"a"'
    @nendo.replStr( ' "日本語" ' ).should == '"日本語"'
    @nendo.replStr( ' "\n" ' ).should == "\"\n\""
    @nendo.replStr( ' "\r" ' ).should == "\"\\r\""
    @nendo.replStr( ' "\t" ' ).should == "\"\\t\""
    @nendo.replStr( ' "a" ' ).should == '"a"'
    @nendo.replStr( ' "a\"b" ' ).should == '"a\"b"'
    @nendo.replStr( ' "日\"本\"語" ' ).should == '"日\"本\"語"'
    @nendo.replStr( " true " ).should == "#t"
    @nendo.replStr( " false " ).should == "#f"
    @nendo.replStr( " nil " ).should == "nil"
    @nendo.replStr( " #t " ).should == "#t"
    @nendo.replStr( " #f " ).should == "#f"

  end
end

describe Nendo, "when call replStr() with comparative operators" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " (= 1 1) " ).should == "#t"
    @nendo.replStr( " (= 1 2) " ).should == "#f"
    @nendo.replStr( " (= #t #t) " ).should == "#t"
    @nendo.replStr( " (= #f #f) " ).should == "#t"
    @nendo.replStr( " (= true true) " ).should == "#t"
    @nendo.replStr( " (= false false) " ).should == "#t"
    @nendo.replStr( " (= #t true) " ).should == "#t"
    @nendo.replStr( " (= #f false) " ).should == "#t"
    @nendo.replStr( " (= #t #f) " ).should == "#f"
    @nendo.replStr( " (= true false) " ).should == "#f"
    @nendo.replStr( " (eq? 1 1) " ).should == "#t"
    @nendo.replStr( " (eq? 1 2) " ).should == "#f"
    @nendo.replStr( " (eq? 'a 'a) " ).should == "#t"
    @nendo.replStr( " (eq? 'b 'b) " ).should == "#t"
    @nendo.replStr( " (eq? 'a-b 'a-b) " ).should == "#t"
    @nendo.replStr( " (eq? 'a_b 'a-b) " ).should == "#f"
    @nendo.replStr( " (eq? 'a-b 'a_b) " ).should == "#f"
    @nendo.replStr( " (< 1 1) " ).should == "#f"
    @nendo.replStr( " (< 1 2) " ).should == "#t"
    @nendo.replStr( " (> 1 1) " ).should == "#f"
    @nendo.replStr( " (> 2 1) " ).should == "#t"
    @nendo.replStr( " (<= 1 0) " ).should == "#f"
    @nendo.replStr( " (<= 1 1) " ).should == "#t"
    @nendo.replStr( " (<= 1 2) " ).should == "#t"
    @nendo.replStr( " (>= 0 1) " ).should == "#f"
    @nendo.replStr( " (>= 1 1) " ).should == "#t"
    @nendo.replStr( " (equal? 1 1) " ).should == "#t"
    @nendo.replStr( " (equal? 1 2) " ).should == "#f"
    @nendo.replStr( " (equal? 2 2) " ).should == "#t"
    @nendo.replStr( " (equal? '() '()) " ).should == "#t"
    @nendo.replStr( " (equal? '(1) '(1)) " ).should == "#t"
    @nendo.replStr( " (equal? '(1) '(2)) " ).should == "#f"
    @nendo.replStr( " (equal? '(1 2 3) '(1 2 3)) " ).should == "#t"
    @nendo.replStr( " (equal? '(1 2 . 3) '(1 2 . 3)) " ).should == "#t"
    @nendo.replStr( " (equal? '(1 2 (3)) '(1 2 (3))) " ).should == "#t"
    @nendo.replStr( " (equal? '(1 2 (3)) '(1 2 (4))) " ).should == "#f"
    @nendo.replStr( " (equal? '(1 2 (3 (4))) '(1 2 (3 (4)))) " ).should == "#t"
    @nendo.replStr( " (equal? '((1) 2 3 4) '((2) 2 3 4)) " ).should == "#f"
    @nendo.replStr( " (equal? \"aaa\" \"aaa\") " ).should == "#t"
    @nendo.replStr( " (equal? \"aaa\" \"aax\") " ).should == "#f"
    @nendo.replStr( " (equal? '(\"aaa\") '(\"aaa\")) " ).should == "#t"
    @nendo.replStr( " (equal? '(\"aaa\" (1)) '(\"aaa\" (1))) " ).should == "#t"
    @nendo.replStr( " (equal? '(\"aaa\" (1)) '(\"aaa\" (2))) " ).should == "#f"
  end
end

describe Nendo, "when call replStr() with boolean operators" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " true " ).should == "#t"
    @nendo.replStr( " false " ).should == "#f"
    @nendo.replStr( " #t " ).should == "#t"
    @nendo.replStr( " #f " ).should == "#f"
    @nendo.replStr( " (not true) " ).should == "#f"
    @nendo.replStr( " (not #t) " ).should == "#f"
    @nendo.replStr( " (not 1) " ).should == "#f"
    @nendo.replStr( " (not false) " ).should == "#t"
    @nendo.replStr( " (not #f) " ).should == "#t"
    @nendo.replStr( " (not \"str\") " ).should == "#f"
    @nendo.replStr( " (not not) " ).should == "#f"
    @nendo.replStr( " (not (not true)) " ).should == "#t"
    @nendo.replStr( " (not (not #t)) " ).should == "#t"
    @nendo.replStr( " (not '()) " ).should == "#f"
    @nendo.replStr( " (not '(1)) " ).should == "#f"
  end
end

describe Nendo, "when call replStr() with `+' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " (+ 1) " ).should == "1"
    @nendo.replStr( " (+ 1 1) " ).should == "2"
    @nendo.replStr( " (+ 1 1 1 1 1 1 1 1 1 1) " ).should == "10"
    @nendo.replStr( " (+ 1 2 3 4 5) " ).should == "15"
    @nendo.replStr( " (+ 1 (+ 2 (+ 3 (+ 4 (+ 5))))) " ).should == "15"
    @nendo.replStr( " (+ 1   1.1) " ).should == "2.1"
    @nendo.replStr( " (+ 1.1 1.2) " ).should == "2.3"
    @nendo.replStr( " (+ \"a\" ) " ).should == '"a"'
    @nendo.replStr( " (+ \"a\" \"B\" \"c\" ) " ).should == '"aBc"'
    @nendo.replStr( " (+) " ).should == "0"
    lambda { @nendo.replStr( " (+ '() ) " ) }.should         raise_error(TypeError)
    lambda { @nendo.replStr( " (+ 1 '() ) " ) }.should       raise_error(TypeError)
    lambda { @nendo.replStr( " (+ 1.1 '() ) " ) }.should     raise_error(TypeError)
    lambda { @nendo.replStr( " (+ '(1) ) " ) }.should        raise_error(TypeError)
    lambda { @nendo.replStr( " (+ 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
    lambda { @nendo.replStr( " (+ \"a\" 1) " ) }.should      raise_error(TypeError)
    lambda { @nendo.replStr( " (+ \"a\" 1.1) " ) }.should    raise_error(TypeError)
  end
end

describe Nendo, "when call replStr() with `-' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " (- 1) " ).should == "-1"
    @nendo.replStr( " (- 2 1) " ).should == "1"
    @nendo.replStr( " (- 2 5) " ).should == "-3"
    @nendo.replStr( " (- 100 1 1 1 1 1 1 1 1 1 1) " ).should == "90"
    @nendo.replStr( " (- 100 (- 10 3)) " ).should == "93"
    @nendo.replStr( " (- 1.1 1) " ).should == (1.1-1).to_s
    @nendo.replStr( " (- 1.3 1.1) " ).should == (1.3-1.1).to_s
    lambda { @nendo.replStr( " (- 1 '() ) " ) }.should       raise_error(TypeError)
    lambda { @nendo.replStr( " (- 1.1 '() ) " ) }.should     raise_error(TypeError)
    lambda { @nendo.replStr( " (-) " ) }.should              raise_error(ArgumentError)
    lambda { @nendo.replStr( " (- '(1) ) " ) }.should        raise_error(TypeError)
    lambda { @nendo.replStr( " (- '() ) " ) }.should         raise_error(TypeError)
    lambda { @nendo.replStr( " (- 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
  end
end

describe Nendo, "when call replStr() with `*' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " (* 1) " ).should == "1"
    @nendo.replStr( " (* 2 1) " ).should == "2"
    @nendo.replStr( " (* 2 5) " ).should == "10"
    @nendo.replStr( " (* 1 2 3 4 5 6 7 8 9 10) " ).should == "3628800"
    @nendo.replStr( " (* 100 (* 10 10 10)) " ).should == "100000"
    @nendo.replStr( " (* 1.1 1) " ).should == "1.1"
    @nendo.replStr( " (* 1.3 1.1) " ).should == (1.3*1.1).to_s
    @nendo.replStr( " (*) " ).should == "1"
    lambda { @nendo.replStr( " (* '() ) " ) }.should         raise_error(TypeError)
    lambda { @nendo.replStr( " (* 1 '() ) " ) }.should       raise_error(TypeError)
    lambda { @nendo.replStr( " (* 1.1 '() ) " ) }.should     raise_error(TypeError)
    lambda { @nendo.replStr( " (* '(1) ) " ) }.should        raise_error(TypeError)
    lambda { @nendo.replStr( " (* 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
    lambda { @nendo.replStr( " (* \"a\" 1) " ) }.should      raise_error(TypeError)
    lambda { @nendo.replStr( " (* \"a\" 1.1) " ) }.should    raise_error(TypeError)
  end
end

describe Nendo, "when call replStr() with `/' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " (/ 1) " ).should == "1"
    @nendo.replStr( " (/ 1.1) " ).should ==
      (1/1.1).to_s
    @nendo.replStr( " (/ 2 1) " ).should == "2"
    @nendo.replStr( " (/ 2 2) " ).should == "1"
    @nendo.replStr( " (/ 2 2.0) " ).should == "1.0"
    @nendo.replStr( " (/ 2 5.0) " ).should == "0.4"
    @nendo.replStr( " (/ 10.0 2 2 2 2 2 2 2 2 2 2) " ).should == "0.009765625"
    @nendo.replStr( " (/ 100 (/ 100 10) 10) " ).should == "1"
    @nendo.replStr( " (/ 1 1.11) " ).should ==
      (1/1.11).to_s
    @nendo.replStr( " (/ 1.3 1.1) " ).should ==
      (1.3/1.1).to_s
    lambda { @nendo.replStr( " (/ 1 '() ) " ) }.should      raise_error(TypeError)
    lambda { @nendo.replStr( " (/ 1.1 '() ) " ) }.should    raise_error(TypeError)
    lambda { @nendo.replStr( " (/) " ) }.should             raise_error(ArgumentError)
    lambda { @nendo.replStr( " (/ '() ) " ) }.should        raise_error(TypeError)
    lambda { @nendo.replStr( " (/ 1.1 \"a\" ) " ) }.should  raise_error(TypeError)
  end
end

describe Nendo, "when call replStr() with `%' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " (% 1) " ).should == "0"
    @nendo.replStr( " (% 1.1) " ).should == "1.0"
    @nendo.replStr( " (% 2 1) " ).should == "0"
    @nendo.replStr( " (% 2 2) " ).should == "0"
    @nendo.replStr( " (% 2 2.0) " ).should == "0.0"
    @nendo.replStr( " (% 2 5.0) " ).should == "2.0"
    @nendo.replStr( " (% 100 (% 103 10)) " ).should == "1"
    @nendo.replStr( " (% 1 1.11) " ).should == "1.0"
    @nendo.replStr( " (% 1.3 1.1) " ).should == (1.3%1.1).to_s
    lambda { @nendo.replStr( " (% 1 '() ) " ) }.should       raise_error(TypeError)
    lambda { @nendo.replStr( " (% 1.1 '() ) " ) }.should     raise_error(TypeError)
    lambda { @nendo.replStr( " (\%) " ) }.should             raise_error(ArgumentError)
    lambda { @nendo.replStr( " (\% '() ) " ) }.should        raise_error(TypeError)
    lambda { @nendo.replStr( " (\% 1.1 \"a\" ) " ) }.should  raise_error(TypeError)
  end
end

describe Nendo, "when call replStr() with `quotient' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " (quotient 2 1) " ).should == "2"
    @nendo.replStr( " (quotient 2 2) " ).should == "1"
    @nendo.replStr( " (quotient 2 2.0) " ).should == "1"
    @nendo.replStr( " (quotient 2 5.0) " ).should == "0"
    @nendo.replStr( " (quotient 1 1.11) " ).should == "0"
    @nendo.replStr( " (quotient  10  3) " ).should == "3"
    @nendo.replStr( " (quotient -10  3) " ).should == "-3"
    @nendo.replStr( " (quotient  10 -3) " ).should == "-3"
    @nendo.replStr( " (quotient  10 -2) " ).should == "-5"
    lambda { @nendo.replStr( " (quotient 1 ) " ) }.should           raise_error(ArgumentError)
    lambda { @nendo.replStr( " (quotient 1.1 ) " ) }.should         raise_error(ArgumentError)
    lambda { @nendo.replStr( " (quotient) " ) }.should              raise_error(ArgumentError)
    lambda { @nendo.replStr( " (quotient '() ) " ) }.should         raise_error(ArgumentError)
    lambda { @nendo.replStr( " (quotient 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
    lambda { @nendo.replStr( " (quotient \"a\" 1.1 ) " ) }.should   raise_error(TypeError)
  end
end

describe Nendo, "when call replStr() with `remainder' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " (remainder 2 1) " ).should == "0"
    @nendo.replStr( " (remainder 2 2) " ).should == "0"
    @nendo.replStr( " (remainder 2 2.0) " ).should == "0.0"
    @nendo.replStr( " (remainder 2 5.0) " ).should == "2.0"
    @nendo.replStr( " (remainder 1 1.11) " ).should == "1.0"
    @nendo.replStr( " (remainder  10  3) " ).should == "1"
    @nendo.replStr( " (remainder -10  3) " ).should == "-1"
    @nendo.replStr( " (remainder  10 -3) " ).should == "1"
    @nendo.replStr( " (remainder -10 -3) " ).should == "-1"
    @nendo.replStr( " (remainder  10 -2) " ).should == "0"
    lambda { @nendo.replStr( " (remainder 1 '() ) " ) }.should       raise_error(TypeError)
    lambda { @nendo.replStr( " (remainder 1.1 '() ) " ) }.should     raise_error(TypeError)
    lambda { @nendo.replStr( " (remainder) " ) }.should              raise_error(ArgumentError)
    lambda { @nendo.replStr( " (remainder '() ) " ) }.should         raise_error(ArgumentError)
    lambda { @nendo.replStr( " (remainder 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
  end
end

describe Nendo, "when call replStr() with `modulo' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " (modulo 2 1) " ).should == "0"
    @nendo.replStr( " (modulo 2 2) " ).should == "0"
    @nendo.replStr( " (modulo 2 2.0) " ).should == "0.0"
    @nendo.replStr( " (modulo 2 5.0) " ).should == "2.0"
    @nendo.replStr( " (modulo 100 (modulo 103 10)) " ).should == "1"
    @nendo.replStr( " (modulo 1 1.11) " ).should == "1.0"
    @nendo.replStr( " (modulo  10  3) " ).should == "1"
    @nendo.replStr( " (modulo -10  3) " ).should == "2"
    @nendo.replStr( " (modulo  10 -3) " ).should == "-2"
    @nendo.replStr( " (modulo -10 -3) " ).should == "-1"
    @nendo.replStr( " (modulo  10 -2) " ).should == "0"
    lambda { @nendo.replStr( " (modulo 1 '() ) " ) }.should       raise_error(TypeError)
    lambda { @nendo.replStr( " (modulo 1.1 '() ) " ) }.should     raise_error(TypeError)
    lambda { @nendo.replStr( " (modulo) " ) }.should              raise_error(ArgumentError)
    lambda { @nendo.replStr( " (modulo '() ) " ) }.should         raise_error(TypeError)
    lambda { @nendo.replStr( " (modulo 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
  end
end

describe Nendo, "when read various list expressions" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " '() " ).should == "()"
    @nendo.replStr( " '[] " ).should == "()"
    @nendo.replStr( " '(1 . 1) " ).should == "(1 . 1)"
    @nendo.replStr( " '[1 . 1) " ).should == "(1 . 1)"
    @nendo.replStr( " '(1 . 1] " ).should == "(1 . 1)"
    @nendo.replStr( " '(1 1 . 1) " ).should == "(1 1 . 1)"
    @nendo.replStr( " '(1 2 . 3) " ).should == "(1 2 . 3)"
    @nendo.replStr( " '(1 2 3) " ).should == "(1 2 3)"
    @nendo.replStr( " '(1.1 2.2 3.3) " ).should == "(1.1 2.2 3.3)"
    @nendo.replStr( " '(a bb ccc dddd) " ).should == "(a bb ccc dddd)"
    @nendo.replStr( " '(a (b) ((c)) (((d)))) " ).should == "(a (b) ((c)) (((d))))"
    @nendo.replStr( " '[a (b) ((c)) (((d)))] " ).should == "(a (b) ((c)) (((d))))"
    @nendo.replStr( " '(a [b] ([c]) (([d]))) " ).should == "(a (b) ((c)) (((d))))"
    @nendo.replStr( " '[a [b] [[c]] [[[d]]]] " ).should == "(a (b) ((c)) (((d))))"
    @nendo.replStr( " '('a)" ).should == "('a)"
    @nendo.replStr( " '(''a)" ).should == "(''a)"
    @nendo.replStr( " '('a 'b 'c)" ).should == "('a 'b 'c)"
    @nendo.replStr( ' \'("str") ' ).should == '("str")'
    @nendo.replStr( ' \'("str" . 1) ' ).should == '("str" . 1)'
    @nendo.replStr( ' \'(1 . "str") ' ).should == '(1 . "str")'
    @nendo.replStr( ' \'(1 2 . "str") ' ).should == '(1 2 . "str")'
    @nendo.replStr( " '((a)(b)(c)) " ).should == "((a) (b) (c))"
    @nendo.replStr( " 'a " ).should == "a"
    @nendo.replStr( " 'symbol " ).should == "symbol"
    @nendo.replStr( " 'SYMBOL " ).should == "SYMBOL"
    @nendo.replStr( " 'SyMbOl " ).should == "SyMbOl"
    @nendo.replStr( " ''a " ).should == "'a"
    @nendo.replStr( " '1 " ).should == "1"
    @nendo.replStr( " ''1 " ).should == "'1"
    @nendo.replStr( " '''1 " ).should == "''1"
    @nendo.replStr( " '1.1 " ).should == "1.1"
    @nendo.replStr( " ''1.1 " ).should == "'1.1"
    @nendo.replStr( " '''1.1 " ).should == "''1.1"
    @nendo.replStr( " '() " ).should == "()"
    @nendo.replStr( " '(()) " ).should == "(())"
    @nendo.replStr( " '((())) " ).should == "((()))"
    @nendo.replStr( " '(((()))) " ).should == "(((())))"
    @nendo.replStr( " '(()  .  ()) " ).should == "(())"
    @nendo.replStr( " '(a . ()) " ).should == "(a)"
    @nendo.replStr( " '(a . #t) " ).should == "(a . #t)"
    @nendo.replStr( " '(a . #f) " ).should == "(a . #f)"
    @nendo.replStr( " '(a . nil) " ).should == "(a . nil)"
    @nendo.replStr( " '(a b c d e  .  ()) " ).should == "(a b c d e)"
    @nendo.replStr( " '(#t #t #f #f nil nil '() '()) " ).should == "(#t #t #f #f nil nil '() '())"
  end
end


describe Nendo, "when use #xxxx syntax " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " #t " ).should == "#t"
    @nendo.replStr( " #f " ).should == "#f"
    @nendo.replStr( " '#( 1 ) " ).should == "#(1)"
    @nendo.replStr( " '#() " ).should == "#()"
    @nendo.replStr( " #!        \n #t" ).should == "#t"
    @nendo.replStr( " #!        \n 100" ).should == "100"
    @nendo.replStr( " #!   123  \n 100" ).should == "100"
    @nendo.replStr( " '#?=1" ).should == "(debug-print 1 \"(string)\" 1 '1)"
    @nendo.replStr( " #b0  " ).should == Integer("0b0").to_s
    @nendo.replStr( " #b01 " ).should == Integer("0b01").to_s
    @nendo.replStr( " #b10 " ).should == Integer("0b10").to_s
    @nendo.replStr( " #b00000001 " ).should         == Integer("0b00000001").to_s
    @nendo.replStr( " #b1010101010101010 " ).should == Integer("0b1010101010101010").to_s
    lambda { @nendo.replStr( " #b2 " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.replStr( " #b02 " ) }.should     raise_error(RuntimeError)
    lambda { @nendo.replStr( " #bF " ) }.should      raise_error(RuntimeError)
    @nendo.replStr( " #o0  " ).should  == Integer("0o0").to_s
    @nendo.replStr( " #o7  " ).should  == Integer("0o7").to_s
    @nendo.replStr( " #o01 " ).should  == Integer("0o01").to_s
    @nendo.replStr( " #o10 " ).should  == Integer("0o10").to_s
    @nendo.replStr( " #o777 " ).should == Integer("0o777").to_s
    @nendo.replStr( " #o00000007 " ).should         == Integer("0o00000007").to_s
    @nendo.replStr( " #o0123456701234567 " ).should == Integer("0o0123456701234567").to_s
    lambda { @nendo.replStr( " #o8 " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.replStr( " #o08 " ) }.should     raise_error(RuntimeError)
    lambda { @nendo.replStr( " #oA " ) }.should      raise_error(RuntimeError)
    @nendo.replStr( " #d0  " ).should  == Integer("0d0").to_s
    @nendo.replStr( " #d9  " ).should  == Integer("0d9").to_s
    @nendo.replStr( " #d01 " ).should  == Integer("0d01").to_s
    @nendo.replStr( " #d10 " ).should  == Integer("0d10").to_s
    @nendo.replStr( " #d999 " ).should == Integer("0d999").to_s
    @nendo.replStr( " #d00000009 " ).should         == Integer("0d00000009").to_s
    @nendo.replStr( " #d0123456701234567 " ).should == Integer("0d0123456701234567").to_s
    lambda { @nendo.replStr( " #dA " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.replStr( " #dF " ) }.should      raise_error(RuntimeError)
    @nendo.replStr( " #x0  " ).should  == Integer("0x0").to_s
    @nendo.replStr( " #x9  " ).should  == Integer("0x9").to_s
    @nendo.replStr( " #xA  " ).should  == Integer("0xA").to_s
    @nendo.replStr( " #xF  " ).should  == Integer("0xF").to_s
    @nendo.replStr( " #x01 " ).should  == Integer("0x01").to_s
    @nendo.replStr( " #x10 " ).should  == Integer("0x10").to_s
    @nendo.replStr( " #xFFF " ).should == Integer("0xFFF").to_s
    @nendo.replStr( " #x0000000F " ).should         == Integer("0x0000000F").to_s
    @nendo.replStr( " #x0123456789ABCDEF0123456789ABCDEF " ).should == Integer("0x0123456789ABCDEF0123456789ABCDEF").to_s
    lambda { @nendo.replStr( " #xg " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.replStr( " #xh " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.replStr( " #xz " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.replStr( " #xG " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.replStr( " #xH " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.replStr( " #xZ " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.replStr( " #a " ) }.should       raise_error(NameError)
    lambda { @nendo.replStr( " #c " ) }.should       raise_error(NameError)
    lambda { @nendo.replStr( " #e " ) }.should       raise_error(NameError)
    lambda { @nendo.replStr( " #tt " ) }.should      raise_error(NameError)
    lambda { @nendo.replStr( " #ff " ) }.should      raise_error(NameError)
    lambda { @nendo.replStr( " #abc " ) }.should     raise_error(NameError)
    lambda { @nendo.replStr( " #? " ) }.should       raise_error(NameError)
    lambda { @nendo.replStr( " #?a " ) }.should      raise_error(NameError)
    lambda { @nendo.replStr( " #= " ) }.should       raise_error(NameError)
    lambda { @nendo.replStr( " #?? " ) }.should      raise_error(NameError)
  end
end

describe Nendo, "when use regexp litteral and library functions " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " #/abc/ " ).should              == "#/abc/"
    @nendo.replStr( " #/[a-z]/ " ).should            == "#/[a-z]/"
    @nendo.replStr( " #/[a-zA-Z0-9]+/ " ).should     == "#/[a-zA-Z0-9]+/"
    @nendo.replStr( " #/[\n]/ " ).should             == "#/[\n]/"
    @nendo.replStr( " #/[\\/]/ " ).should            == "#/[/]/"
  end
end
