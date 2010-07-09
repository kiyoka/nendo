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

describe Nendo, "when read various vector expressions" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " '() " ).should == "()"
    @nendo.replStr( " '[] " ).should == "()"
    @nendo.replStr( " '#( 1 ) " ).should == "#(1)"
    lambda { @nendo.replStr( " '#(( 1 ) " )    }.should                               raise_error( RuntimeError )
    @nendo.replStr( " '#( 1 2 ) " ).should == "#(1 2)"
    @nendo.replStr( " '#( 1 () ) " ).should == "#(1 ())"
    @nendo.replStr( " '#( () 2 ) " ).should == "#(() 2)"
    lambda { @nendo.replStr( " '#( 1 . 2 ) " ) }.should                               raise_error( RuntimeError )
    lambda { @nendo.replStr( " #(+ 1 2) " )    }.should                               raise_error( RuntimeError )
    @nendo.replStr( " '#( 1 #( 11 )) " ).should == "#(1 #(11))"
    @nendo.replStr( " '#( 1 #( 11 12 )) " ).should == "#(1 #(11 12))"
    @nendo.replStr( " '#( 1 #( 11 #( 111 ))) " ).should == "#(1 #(11 #(111)))"
    @nendo.replStr( " '#( 1 #( 11 #( 111 112))) " ).should == "#(1 #(11 #(111 112)))"
    @nendo.replStr( " '#(1 2 3) " ).should == "#(1 2 3)"
    @nendo.replStr( " '#(1.1 2.2 3.3) " ).should == "#(1.1 2.2 3.3)"
    @nendo.replStr( " '#(a bb ccc dddd) " ).should == "#(a bb ccc dddd)"
    @nendo.replStr( " '#(a (b) ((c)) (((d)))) " ).should == "#(a (b) ((c)) (((d))))"
  end
end

describe Nendo, "when call replStr() with built-in functions" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " (car '(1 2 3 4)) " ).should == "1"
    @nendo.replStr( " (cdr '(1 2 3 4)) " ).should == "(2 3 4)"
    @nendo.replStr( " (null? '()) " ).should == "#t"
    @nendo.replStr( " (null? '(1)) " ).should == "#f"
    @nendo.replStr( " (null? false) " ).should == "#f"
    @nendo.replStr( " (null? nil) " ).should == "#f"
    @nendo.replStr( " (null? true) " ).should == "#f"
    @nendo.replStr( " (cons 1 2) " ).should == "(1 . 2)"
    @nendo.replStr( " (cons 1 '(2 3)) " ).should == "(1 2 3)"
    @nendo.replStr( " (cons '(1 2) '(3 4)) " ).should == "((1 2) 3 4)"
    @nendo.replStr( " (cons '(1 2) '((3 4))) " ).should == "((1 2) (3 4))"
    @nendo.replStr( " (cons '() '()) " ).should == "(())"
    lambda { @nendo.replStr( " (cons 1 2 3) " ) }.should    raise_error(ArgumentError)
    lambda { @nendo.replStr( " (cons 1) " ) }.should        raise_error(ArgumentError)
    lambda { @nendo.replStr( " (cons) " ) }.should          raise_error(ArgumentError)
    @nendo.replStr( " (list 1 2 3) " ).should == "(1 2 3)"
    @nendo.replStr( " (list '(1) '(2) '(3)) " ).should == "((1) (2) (3))"
    @nendo.replStr( " (list 'a 'b 'c) " ).should == "(a b c)"
    @nendo.replStr( " (list '(a) '((b c))) " ).should == "((a) ((b c)))"
    @nendo.replStr( " (list) " ).should == "()"
    @nendo.replStr( " (list 1) " ).should == "(1)"
    @nendo.replStr( " (define !a 10) !a" ).should == "10"
    @nendo.replStr( " (define $a 11) $a" ).should == "11"
    @nendo.replStr( " (define %a 12) %a" ).should == "12"
    @nendo.replStr( " (define &a 13) &a" ).should == "13"
    @nendo.replStr( " (define *a 14) *a" ).should == "14"
    @nendo.replStr( " (define +a 15) +a" ).should == "15"
    @nendo.replStr( " (define -a 16) -a" ).should == "16"
    @nendo.replStr( " (define /a 17) /a" ).should == "17"
    @nendo.replStr( " (define <a 18) <a" ).should == "18"
    @nendo.replStr( " (define =a 19) =a" ).should == "19"
    @nendo.replStr( " (define ?a 20) ?a" ).should == "20"
    @nendo.replStr( " (define @a 21) @a" ).should == "21"
    @nendo.replStr( " (define ^a 22) ^a" ).should == "22"
    @nendo.replStr( " (define ~a 23) ~a" ).should == "23"
    @nendo.replStr( " (define a! 30) a!" ).should == "30"
    @nendo.replStr( " (define a$ 31) a$" ).should == "31"
    @nendo.replStr( " (define a% 32) a%" ).should == "32"
    @nendo.replStr( " (define a& 33) a&" ).should == "33"
    @nendo.replStr( " (define a* 34) a*" ).should == "34"
    @nendo.replStr( " (define a+ 35) a+" ).should == "35"
    @nendo.replStr( " (define a- 36) a-" ).should == "36"
    @nendo.replStr( " (define a/ 37) a/" ).should == "37"
    @nendo.replStr( " (define a< 38) a<" ).should == "38"
    @nendo.replStr( " (define a= 39) a=" ).should == "39"
    @nendo.replStr( " (define a? 40) a?" ).should == "40"
    @nendo.replStr( " (define a@ 41) a@" ).should == "41"
    @nendo.replStr( " (define a^ 42) a^" ).should == "42"
    @nendo.replStr( " (define a~ 43) a~" ).should == "43"
    @nendo.replStr( " (define aFunc (lambda (x) x)) true" ).should == "#t"
    @nendo.replStr( " (define aMacro (macro (x) x)) true" ).should == "#t"
    @nendo.replStr( " (define a! 123) a!" ).should == "123"
    @nendo.replStr( " (define b? 321) b?" ).should == "321"
    @nendo.replStr( " (define a-b 1234) a-b" ).should == "1234"
    @nendo.replStr( " (define start-end!? 4321) start-end!?" ).should == "4321"
    @nendo.replStr( " (procedure? car) " ).should == "#t"
    @nendo.replStr( " (procedure? aFunc) " ).should == "#t"
    @nendo.replStr( " (procedure? aMacro) " ).should == "#f"
    @nendo.replStr( " (procedure? 1) " ).should == "#f"
    @nendo.replStr( " (procedure? 1.1) " ).should == "#f"
    @nendo.replStr( " (procedure? \"str\") " ).should == "#f"
    @nendo.replStr( " (procedure? 'a) " ).should == "#f"
    @nendo.replStr( " (procedure? '(1)) " ).should == "#f"
    @nendo.replStr( " (procedure? '()) " ).should == "#f"
    @nendo.replStr( " (symbol? car) " ).should == "#f"
    @nendo.replStr( " (symbol? aFunc) " ).should == "#f"
    @nendo.replStr( " (symbol? aMacro) " ).should == "#f"
    @nendo.replStr( " (symbol? 1) " ).should == "#f"
    @nendo.replStr( " (symbol? 1.1) " ).should == "#f"
    @nendo.replStr( " (symbol? \"str\") " ).should == "#f"
    @nendo.replStr( " (symbol? 'a) " ).should == "#t"
    @nendo.replStr( " (symbol? '(1)) " ).should == "#f"
    @nendo.replStr( " (symbol? '()) " ).should == "#f"
    @nendo.replStr( " (pair? car) " ).should == "#f"
    @nendo.replStr( " (pair? aFunc) " ).should == "#f"
    @nendo.replStr( " (pair? aMacro) " ).should == "#f"
    @nendo.replStr( " (pair? 1) " ).should == "#f"
    @nendo.replStr( " (pair? 1.1) " ).should == "#f"
    @nendo.replStr( " (pair? \"str\") " ).should == "#f"
    @nendo.replStr( " (pair? 'a) " ).should == "#f"
    @nendo.replStr( " (pair? '(1)) " ).should == "#t"
    @nendo.replStr( " (pair? '()) " ).should == "#f"
    @nendo.replStr( " (number? car) " ).should == "#f"
    @nendo.replStr( " (number? aFunc) " ).should == "#f"
    @nendo.replStr( " (number? aMacro) " ).should == "#f"
    @nendo.replStr( " (number? 1) " ).should == "#t"
    @nendo.replStr( " (number? 1.1) " ).should == "#t"
    @nendo.replStr( " (number? \"str\") " ).should == "#f"
    @nendo.replStr( " (number? 'a) " ).should == "#f"
    @nendo.replStr( " (number? '(1)) " ).should == "#f"
    @nendo.replStr( " (number? '()) " ).should == "#f"
    @nendo.replStr( " (string? car) " ).should == "#f"
    @nendo.replStr( " (string? aFunc) " ).should == "#f"
    @nendo.replStr( " (string? aMacro) " ).should == "#f"
    @nendo.replStr( " (string? 1) " ).should == "#f"
    @nendo.replStr( " (string? 1.1) " ).should == "#f"
    @nendo.replStr( " (string? \"str\") " ).should == "#t"
    @nendo.replStr( " (string? 'a) " ).should == "#f"
    @nendo.replStr( " (string? '(1)) " ).should == "#f"
    @nendo.replStr( " (string? '()) " ).should == "#f"
    @nendo.replStr( " (macro? car) " ).should == "#f"
    @nendo.replStr( " (macro? aFunc) " ).should == "#f"
    @nendo.replStr( " (macro? aMacro) " ).should == "#t"
    @nendo.replStr( " (macro? 1) " ).should == "#f"
    @nendo.replStr( " (macro? 1.1) " ).should == "#f"
    @nendo.replStr( " (macro? \"str\") " ).should == "#f"
    @nendo.replStr( " (macro? 'a) " ).should == "#f"
    @nendo.replStr( " (macro? '(1)) " ).should == "#f"
    @nendo.replStr( " (macro? '()) " ).should == "#f"
    @nendo.replStr( " (length '()) " ).should == "0"
    @nendo.replStr( " (length '(1)) " ).should == "1"
    @nendo.replStr( " (length '((1))) " ).should == "1"
    @nendo.replStr( " (length '(1 2)) " ).should == "2"
    lambda { @nendo.replStr( " (length \"str\") " ) }.should  raise_error(TypeError)
    lambda { @nendo.replStr( " (length 1) " ) }.should  raise_error(TypeError)
    @nendo.replStr( " (symbol->string 'sym) " ).should == '"sym"'
    @nendo.replStr( " (string->symbol \"sym\") " ).should == 'sym'
    @nendo.replStr( ' (string-join \'("Aa" "Bb" "Cc")    ) ' ).should  == '"AaBbCc"'
    @nendo.replStr( ' (string-join \'("Aa" "Bb" "Cc") ":") ' ).should  == '"Aa:Bb:Cc"'
    @nendo.replStr( ' (string-join \'("Aa" "Bb" "Cc") "//") ' ).should == '"Aa//Bb//Cc"'
    lambda { @nendo.replStr( ' (string-join \'("Aa" "Bb" "Cc") 100) ' ) }.should  raise_error(TypeError)
    lambda { @nendo.replStr( ' (string-join \'("Aa" "Bb" "Cc") :xx) ' ) }.should  raise_error(TypeError)
  end
end

describe Nendo, "when call replStr() with variable modifications" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " (define x 1)     x " ).should == "1"
    @nendo.replStr( " (define x 2)     x " ).should == "2"
    @nendo.replStr( " (define x 100)   x " ).should == "100"
    @nendo.replStr( " (define x true)  x " ).should == "#t"
    @nendo.replStr( " (define x false) x " ).should == "#f"
    @nendo.replStr( " (define x nil) x " ).should   == "nil"
    @nendo.replStr( " (define x '()) x " ).should   == "()"
    @nendo.replStr( " (define x '(1)) x " ).should   == "(1)"
    @nendo.replStr( " (define x (+ 1 2 3)) x " ).should   == "6"
    @nendo.replStr( " (define x (sprintf \"$%02X\" 17))    x  x  x " ).should   == '"$11"'
    @nendo.replStr( " 1 2 3 " ).should   == "3"
    @nendo.replStr( " (define x 3.14)  (set! x (* x 2))          x " ).should   == "6.28"
    @nendo.replStr( " 1 \n 2 \n 3 \n " ).should   == "3"
    @nendo.replStr( " (define a '(1 . 2))  (set-car! a 100)      a " ).should   == "(100 . 2)"
    @nendo.replStr( " (define a '(1 . 2))  (set-car! a '())      a " ).should   == "(() . 2)"
    @nendo.replStr( " (define a '(1 . 2))  (set-car! a #t)       a " ).should   == "(#t . 2)"
    @nendo.replStr( " (define a '(1 . 2))  (set-car! a #f)       a " ).should   == "(#f . 2)"
    @nendo.replStr( " (define a '(1 . 2))  (set-car! a nil)      a " ).should   == "(nil . 2)"
    @nendo.replStr( " (define a '(1 . 2))  (set-cdr! a 200)      a " ).should   == "(1 . 200)"
    @nendo.replStr( " (define a '(1 . 2))  (set-cdr! a '(2))     a " ).should   == "(1 2)"
    @nendo.replStr( " (define a '(1 . 2))  (set-cdr! a '())      a " ).should   == "(1)"
    @nendo.replStr( " (define a '(1 . 2))  (set-cdr! a #t)       a " ).should   == "(1 . #t)"
    @nendo.replStr( " (define a '(1 . 2))  (set-cdr! a #f)       a " ).should   == "(1 . #f)"
    @nendo.replStr( " (define a '(1 . 2))  (set-cdr! a nil)      a " ).should   == "(1 . nil)"
    @nendo.replStr( " (define a '((1 . 2) 3))    (set-car! (car a) 100)      a " ).should   == "((100 . 2) 3)"
    @nendo.replStr( " (define a '((1 . 2) 3))    (set-cdr! (car a) 200)      a " ).should   == "((1 . 200) 3)"
    @nendo.replStr( " (define a '((1 . 2) . 3))  (set-cdr! a 300)            a " ).should   == "((1 . 2) . 300)"
  end
end

describe Nendo, "when call replStr() with undefined variable" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    lambda { @nendo.replStr( " true " ) }.should_not                   raise_error
    lambda { @nendo.replStr( " false " ) }.should_not                  raise_error
    lambda { @nendo.replStr( " nil " ) }.should_not                    raise_error
    lambda { @nendo.replStr( " line1 " ) }.should                      raise_error( NameError )
    lambda { @nendo.replStr( " true \n line2 " ) }.should              raise_error( NameError )
    lambda { @nendo.replStr( " true \n true \n line3 " ) }.should      raise_error( NameError )
    lambda { @nendo.replStr( " (+ 1 x) " ) }.should                    raise_error( NameError )
    lambda { @nendo.replStr( " true \n (+ 1 y) " ) }.should            raise_error( NameError )
  end
end

describe Nendo, "when call replStr() with built-in special forms" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " (begin 1) " ).should == "1"
    @nendo.replStr( " (begin 1 2) " ).should == "2"
    @nendo.replStr( " (begin 1 2 3) " ).should == "3"
    @nendo.replStr( " (set! x 2) (set! y (begin (set! x (* x 2)) (set! x (* x 2)) (set! x (* x 2)) 100))  (+ x y)" ).should == "116"
    @nendo.replStr( " (let ()                 100) " ).should == "100"
    @nendo.replStr( " (let ((a 11))           a) " ).should == "11"
    @nendo.replStr( " (let ((a 11) (b 22))    (+ a b)) " ).should == "33"
    @nendo.replStr( " (let ((a 22)) (let ((b 33))   (+ a b))) " ).should == "55"
    @nendo.replStr( " (let ((a 22)(b 33)) (let ((c 44) (d 55))   (+ a b c d))) " ).should == "154"
    @nendo.replStr( " (let  ((a (let ((b 2))   (+ 100 b))))  a) " ).should == "102"
    @nendo.replStr( " (letrec ()                 100) " ).should == "100"
    @nendo.replStr( " (letrec ((a 11))           a) " ).should == "11"
    @nendo.replStr( " (letrec ((a 11) (b 22))    (+ a b)) " ).should == "33"
    @nendo.replStr( " (letrec ((a 22)) (let ((b 33))   (+ a b))) " ).should == "55"
    @nendo.replStr( " (letrec ((a 22)(b 33)) (let ((c 44) (d 55))   (+ a b c d))) " ).should == "154"
    @nendo.replStr( " (letrec  ((a (let ((b 2))   (+ 100 b))))  a) " ).should == "102"
    @nendo.replStr( " (letrec ( (func1 (lambda (x) 13))             (func2 (lambda (x) (* 2 (func1))))  )     (list (func2) (func1))) " ).should == "(26 13)"
    @nendo.replStr( " (letrec ( (func2 (lambda (x) (* 2 (func1))))  (func1 (lambda (x) 7))              )     (list (func2) (func1))) " ).should == "(14 7)"
    @nendo.replStr( " (if true   't 'f)" ).should == "t"
    @nendo.replStr( " (if true   '(1) '(2))" ).should == "(1)"
    @nendo.replStr( " (if false  't 'f)" ).should == "f"
    @nendo.replStr( " (if false  '(1) '(2))" ).should == "(2)"
    @nendo.replStr( " (set! x 0) (if true  (set! x 1) (set! x 2))   x" ).should == "1"
    @nendo.replStr( " (set! x 0) (if false (set! x 1) (set! x 2))   x" ).should == "2"
    @nendo.replStr( " (set! func (lambda (arg1) arg1))              (list (func 1) (func 2))" ).should == "(1 2)"
    @nendo.replStr( " ((lambda (arg1) arg1)  3)" ).should == "3" 
    @nendo.replStr( " ((lambda (arg1) arg1)  (+ 1 2 3))" ).should == "6" 
    @nendo.replStr( " ((if #t + *) 3 4)" ).should == "7" 
    @nendo.replStr( " ((if #f + *) 3 4)" ).should == "12" 
    lambda { @nendo.replStr( " (error \"My Runtime Error\") " ) }.should            raise_error( RuntimeError )
  end
end

describe Nendo, "when call replStr() with global and lexical scope variable" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " (define var 111) " ).should == "111"
    @nendo.replStr( " (let ((var 222)) var) " ).should == "222"
    @nendo.replStr( " (let ((var 222)) (set! var 333) var) " ).should == "333"
    @nendo.replStr( " (let ((var 222)) (set! var 333)) var " ).should == "111"
    @nendo.replStr( " (define global1 \"G\") " ).should == '"G"'
    @nendo.replStr( " " +
                    "(let ((local1 \"L\")" +
                    "      (local2 \"L\"))" +
                    "  (set! global1 (+ global1 \"lobal1\"))" +
                    "  (set! local1  (+ local1   \"ocal1\"))" +
                    "  (set! local2  (+ local2   \"ocal2\"))" +
                    "  (list global1" +
                    "        local1" +
                    "        local2" +
                    "        (let ((local1 \"A\")" +
                    "              (local2 \"B\"))" +
                    "          (set! local1  (+ local1   \"a\"))" +
                    "          (set! local2  (+ local2   \"b\"))" +
                    "          (list local1 local2" +
                    "                (let ((local1 \"CCC\"))" +
                    "                  (list global1 local1 local2))))))" ).should == '("Global1" "Local1" "Local2" ("Aa" "Bb" ("Global1" "CCC" "Bb")))'
  end
end

describe Nendo, "when call replStr() with macroexpand-1 function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.replStr( " (set! twice (macro (x) (list 'begin x x)))           (macroexpand-1 '(twice (+ 1 1))) " ).should == "(begin (+ 1 1) (+ 1 1))"
    @nendo.replStr( " (set! inc (macro (x) (list 'set! x (list '+ x 1))))  (macroexpand-1 '(inc a)) " ).should == "(set! a (+ a 1))"
    @nendo.replStr( " (set! a 10) (inc a) " ).should == "11"
    @nendo.replStr( " (set! a 10) (inc a) (inc a)" ).should == "12"
    @nendo.replStr( " (macroexpand-1 '(twice (twice (inc a))))" ).should ==
      "(begin (twice (inc a)) (twice (inc a)))"
    @nendo.replStr( " (macroexpand-1 (macroexpand-1 '(twice (twice (inc a)))))" ).should ==
      "(begin (begin (inc a) (inc a)) (begin (inc a) (inc a)))"
    @nendo.replStr( " (macroexpand-1 (macroexpand-1 (macroexpand-1 '(twice (twice (inc a))))))" ).should ==
      "(begin (begin (set! a (+ a 1)) (set! a (+ a 1))) (begin (inc a) (inc a)))"
    @nendo.replStr( " (macroexpand-1 (macroexpand-1 (macroexpand-1 (macroexpand-1 '(twice (twice (inc a)))))))" ).should ==
      "(begin (begin (set! a (+ a 1)) (set! a (+ a 1))) (begin (set! a (+ a 1)) (set! a (+ a 1))))"
    @nendo.replStr( " (set! a 10) (twice (twice (inc a)))" ).should == "14"
  end
end

describe Nendo, "when call functions in init.nnd " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
    @nendo.loadInitFile  # to self optimizing.  The init.nnd file will be loaded twice, so `map' can be optimized on second loading phase.
  end
  it "should" do
    @nendo.replStr( " (cadr '(1 2 3 4)) " ).should == "2"
    @nendo.replStr( " (caddr '(1 2 3 4)) " ).should == "3"
    @nendo.replStr( " (cadddr '(1 2 3 4)) " ).should == "4"
    @nendo.replStr( " (caar '((5 6 7 8))) " ).should == "5"
    @nendo.replStr( " (cdar '((5 6 7 8))) " ).should == "(6 7 8)"
    @nendo.replStr( " (cadar '((5 6 7 8))) " ).should == "6"
    @nendo.replStr( " (cddar '((5 6 7 8))) " ).should == "(7 8)"
    @nendo.replStr( " (iota 1) " ).should == "(0)"
    @nendo.replStr( " (iota 3) " ).should == "(0 1 2)"
    @nendo.replStr( " (append '() '()) " ).should == "()"
    @nendo.replStr( " (append '(1) '()) " ).should == "(1)"
    @nendo.replStr( " (append '() '(2)) " ).should == "(2)"
    @nendo.replStr( " (append '(1) '(2)) " ).should == "(1 2)"
    @nendo.replStr( " (append '(1 2) '(3 4)) " ).should == "(1 2 3 4)"
    @nendo.replStr( " (pair? '()) " ).should == "#f"
    @nendo.replStr( " (pair? '(1)) " ).should == "#t"
    @nendo.replStr( " (pair? '(1 2)) " ).should == "#t"
    @nendo.replStr( " (pair? '(1 2 3)) " ).should == "#t"
    @nendo.replStr( " (pair? '(1 . 2)) " ).should == "#t"
    @nendo.replStr( " (pair? '(())) " ).should == "#t"
    @nendo.replStr( " (pair? 1) " ).should == "#f"
    @nendo.replStr( " (pair? \"str\") " ).should == "#f"
    @nendo.replStr( " (list? '()) " ).should == "#t"
    @nendo.replStr( " (list? '(1)) " ).should == "#t"
    @nendo.replStr( " (list? '(1 2)) " ).should == "#t"
    @nendo.replStr( " (list? '(1 2 3)) " ).should == "#t"
    @nendo.replStr( " (list? '(1 . 2)) " ).should == "#f"
    @nendo.replStr( " (list? '(1 2 . 3)) " ).should == "#f"
    @nendo.replStr( " (list? '(())) " ).should == "#t"
    @nendo.replStr( " (list? 1) " ).should == "#f"
    @nendo.replStr( " (list? \"str\") " ).should == "#f"
    @nendo.replStr( " (even? 2) " ).should == "#t"
    @nendo.replStr( " (even? 1) " ).should == "#f"
    @nendo.replStr( " (even? 0) " ).should == "#t"
    @nendo.replStr( " (even? -1) " ).should == "#f"
    @nendo.replStr( " (even? -2) " ).should == "#t"
    @nendo.replStr( " (odd? 2) " ).should == "#f"
    @nendo.replStr( " (odd? 1) " ).should == "#t"
    @nendo.replStr( " (odd? 0) " ).should == "#f"
    @nendo.replStr( " (odd? -1) " ).should == "#t"
    @nendo.replStr( " (odd? -2) " ).should == "#f"
    @nendo.replStr( " (zero? 0) " ).should == "#t"
    @nendo.replStr( " (zero? #f) " ).should == "#f"
    @nendo.replStr( " (zero? #t) " ).should == "#f"
    @nendo.replStr( " (zero? 1) " ).should == "#f"
    @nendo.replStr( " (zero? 2) " ).should == "#f"
    @nendo.replStr( " (zero? -1) " ).should == "#f"
    @nendo.replStr( " (zero? \"str\") " ).should == "#f"
    @nendo.replStr( " (zero? zero?) " ).should == "#f"
    @nendo.replStr( " (positive? 1) " ).should == "#t"
    @nendo.replStr( " (positive? 0) " ).should == "#f"
    @nendo.replStr( " (positive? -1) " ).should == "#f"
    @nendo.replStr( " (negative? 1) " ).should == "#f"
    @nendo.replStr( " (negative? 0) " ).should == "#f"
    @nendo.replStr( " (negative? -1) " ).should == "#t"
    @nendo.replStr( " (abs -1) " ).should == "1"
    @nendo.replStr( " (abs 1) " ).should == "1"
    @nendo.replStr( " (abs -1000) " ).should == "1000"
    @nendo.replStr( " (abs 1000) " ).should == "1000"
    @nendo.replStr( " (max -2 1 0 1 2 3 4 5) " ).should == "5"
    @nendo.replStr( " (max 5 4 3 2 1 0 -1 -2) " ).should == "5"
    @nendo.replStr( " (max 1000000000 10 -10000) " ).should == "1000000000"
    @nendo.replStr( " (min -2 1 0 1 2 3 4 5) " ).should == "-2"
    @nendo.replStr( " (min 5 4 3 2 1 0 -1 -2) " ).should == "-2"
    @nendo.replStr( " (min 1000000000 10 -10000) " ).should == "-10000"
    @nendo.replStr( " (succ -1) " ).should == "0"
    @nendo.replStr( " (succ 0) " ).should == "1"
    @nendo.replStr( " (succ 1) " ).should == "2"
    @nendo.replStr( " (pred -1) " ).should == "-2"
    @nendo.replStr( " (pred 0) " ).should == "-1"
    @nendo.replStr( " (pred 1) " ).should == "0"
    @nendo.replStr( " (pred 2) " ).should == "1"
    @nendo.replStr( " (min 1000000000 10 -10000) " ).should == "-10000"
    @nendo.replStr( " (nth 0  '(100 200 300)) " ).should == "100"
    @nendo.replStr( " (nth 1  '(100 200 300)) " ).should == "200"
    @nendo.replStr( " (nth 2  '(100 200 300)) " ).should == "300"
    @nendo.replStr( " (nth 3  '(100 200 300)) " ).should == "()"
    @nendo.replStr( " (nth -1 '(100 200 300)) " ).should == "()"
    @nendo.replStr( " (first   '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "100"
    @nendo.replStr( " (second  '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "200"
    @nendo.replStr( " (third   '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "300"
    @nendo.replStr( " (fourth  '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "400"
    @nendo.replStr( " (fifth   '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "500"
    @nendo.replStr( " (sixth   '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "600"
    @nendo.replStr( " (seventh '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "700"
    @nendo.replStr( " (eighth  '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "800"
    @nendo.replStr( " (ninth   '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "900"
    @nendo.replStr( " (tenth   '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "1000"
    @nendo.replStr( " (first   '()) " ).should == "()"
    @nendo.replStr( " (tenth   '()) " ).should == "()"
    @nendo.replStr( " (to-s      10) " ).should == '"10"'
    @nendo.replStr( " (to_s      10) " ).should == '"10"'
    @nendo.replStr( " (x->string 10) " ).should == '"10"'
    @nendo.replStr( " (to-s      2.1) " ).should == '"2.1"'
    @nendo.replStr( " (to_s      2.1) " ).should == '"2.1"'
    @nendo.replStr( " (x->string 2.1) " ).should == '"2.1"'
    @nendo.replStr( " (to_i    \"22\") " ).should == '22'
    @nendo.replStr( " (to-i    \"22\") " ).should == '22'
    @nendo.replStr( " (to_i    \"10000\") " ).should == '10000'
    @nendo.replStr( " (to-i    \"10000\") " ).should == '10000'
    @nendo.replStr( " (let1 aaa 111 aaa) " ).should == "111"
    @nendo.replStr( " (let1 aaa (+ 2 3) aaa) " ).should == "5"
    @nendo.replStr( " (let1 aaa 333 (let1 bbb 444 (+ aaa bbb))) " ).should == "777"
    @nendo.replStr( " (let1 aaa 333 (let1 bbb 444 (set! bbb 555) (+ aaa bbb))) " ).should == "888"
    @nendo.replStr( " (let1 v (map (lambda (x) x) '(1 2 3))  v) " ).should == "(1 2 3)"
    @nendo.replStr( " (let  ((v (map (lambda (x) x) '(1 2 3)))) v) " ).should == "(1 2 3)"
    @nendo.replStr( " (cond (true  1) (false 2)) " ).should == "1"
    @nendo.replStr( " (cond (true   ) (false  )) " ).should == "#t"
    @nendo.replStr( " (cond (false 1) (true  2)) " ).should == "2"
    @nendo.replStr( " (cond (true  1) (true  2)) " ).should == "1"
    @nendo.replStr( " (cond (false 1) (false 2)) " ).should == "()"
    @nendo.replStr( " (cond (false 1) (false 2) (else 3)) " ).should == "3"
    @nendo.replStr( " (cond ((- 10 9) => (lambda (x) (+ \"<\" (to_s x) \">\"))) (else 2)) " ).should == '"<1>"'
    @nendo.replStr( " (cond (true  1) ((- 10 8) => (lambda (x) (+ \"<\" (to_s x) \">\"))) (else 3)) " ).should == "1"
    @nendo.replStr( " (or) " ).should == "#f"
    @nendo.replStr( " (or true) " ).should == "#t"
    @nendo.replStr( " (or false) " ).should == "#f"
    @nendo.replStr( " (or nil) " ).should == "#f"
    @nendo.replStr( " (or '(1)) " ).should == "(1)"
    @nendo.replStr( " (or '()) " ).should == "()"
    @nendo.replStr( " (or true true true) " ).should == "#t"
    @nendo.replStr( " (or 1 2 3) " ).should == "1"
    @nendo.replStr( " (or false 2) " ).should == "2"
    @nendo.replStr( " (or false false 3) " ).should == "3"
    @nendo.replStr( " (or false '(2) false) " ).should == "(2)"
    @nendo.replStr( " (and) " ).should == "#t"
    @nendo.replStr( " (and true) " ).should == "#t"
    @nendo.replStr( " (and false) " ).should == "#f"
    @nendo.replStr( " (and nil) " ).should == "nil"
    @nendo.replStr( " (and '(1)) " ).should == "(1)"
    @nendo.replStr( " (and '()) " ).should == "()"
    @nendo.replStr( " (and true true true) " ).should == "#t"
    @nendo.replStr( " (and 1 2 3) " ).should == "3"
    @nendo.replStr( " (and false 2) " ).should == "#f"
    @nendo.replStr( " (and false false 3) " ).should == "#f"
    @nendo.replStr( " (and true  2) " ).should == "2"
    @nendo.replStr( " (and true  true  3) " ).should == "3"
    @nendo.replStr( " (and true  true  3 false) " ).should == "#f"
    @nendo.replStr( " (and true '(2) true) " ).should == "#t"
    @nendo.replStr( " (and true true '(2)) " ).should == "(2)"
    @nendo.replStr( " (and true '(2) false) " ).should == "#f"
    @nendo.replStr( " (define total 0) (and 1 2       (set! total (+ total 1)) (set! total (+ total 2)) 5)  total" ).should == "3"
    @nendo.replStr( " (define total 1) (and 1 2 false (set! total (+ total 2)) (set! total (+ total 3)) 5)  total" ).should == "1"
    @nendo.replStr( " (apply + 100 '()) " ).should == "100"
    @nendo.replStr( " (apply + '(1 2)) " ).should == "3"
    @nendo.replStr( " (apply + 1 2 '(3)) " ).should == "6"
    @nendo.replStr( " (apply + 1 2 '(3 4)) " ).should == "10"
    @nendo.replStr( " (apply + 1 2 3 '(4)) " ).should == "10"
    @nendo.replStr( ' (apply + \'("a" "b" "c")) ' ).should == '"abc"'
    @nendo.replStr( " (range 5) " ).should == "(0 1 2 3 4)"
    @nendo.replStr( " (range 5 1) " ).should == "(1 2 3 4 5)"
    @nendo.replStr( " (range 5 2) " ).should == "(2 3 4 5 6)"
    @nendo.replStr( " (iota  5 2) " ).should == "(2 3 4 5 6)"
    @nendo.replStr( " (apply + (range 11)) " ).should == "55"
    @nendo.replStr( " (apply + (map (lambda (x) (+ x 1)) (range 10))) " ).should == "55"
    @nendo.replStr( " (apply + (append (range 11) '(100))) " ).should == "155"
    @nendo.replStr( " (map (lambda (x) (* x 2)) '(1 2 3)) " ).should == "(2 4 6)"
    @nendo.replStr( " (map (lambda (x) (+ x 1)) '(1 2 3)) " ).should == "(2 3 4)"
    @nendo.replStr( " (map (lambda (a b)   (+ a b))   '(1 2 3) '(10 20 30)) " ).should == "(11 22 33)"
    @nendo.replStr( " (map (lambda (a b)   (- b a))   '(1 2 3) '(10 20 30)) " ).should == "(9 18 27)"
    @nendo.replStr( " (map (lambda (a b c) (+ a b c)) '(1 2 3) '(10 20 30) '(100 200 300)) " ).should == "(111 222 333)"
    @nendo.replStr( " (define _result"+
                    "   (map"+
                    "    (lambda (x)"+
                    "      (* x 2))"+
                    "    (range 10000 1)))"+
                    " (list"+
                    "  (first  _result)"+
                    "  (second _result)"+
                    "  (last-pair _result))" ).should == "(2 4 (20000))"
    @nendo.replStr( " (define _lst '())  (for-each (lambda (x) (set! _lst (cons (* x 2) _lst))) '(1 2 3))  _lst" ).should == "(6 4 2)"
    @nendo.replStr( " (define _lst '())  (for-each (lambda (x) (set! _lst (cons (+ x 1) _lst))) '(1 2 3))  _lst" ).should == "(4 3 2)"
    @nendo.replStr( " (define _lst '())  (for-each (lambda (a b) (set! _lst (cons (cons a b) _lst))) '(1 2 3) '(10 20 30))  _lst" ).should ==
      "((3 . 30) (2 . 20) (1 . 10))"
    @nendo.replStr( " (define _cnt 0) (for-each   (lambda (x) (set! _cnt (+ _cnt 1))) (range 10000)) _cnt" ).should == "10000"
    @nendo.replStr( " (filter     (lambda (x) (= x 100))     '(1 2 3)) " ).should == "()"
    @nendo.replStr( " (filter     (lambda (x) (= x 2))       '(1 2 3)) " ).should == "(2)"
    @nendo.replStr( " (filter     (lambda (x) (not (= x 2))) '(1 2 3)) " ).should == "(1 3)"
    @nendo.replStr( " (filter     (lambda (x) (if (= x 2) (* x 100) false))   '(1 2 3)) " ).should == "(2)"
    @nendo.replStr( " (find       (lambda (x) (= x 100))     '(1 2 3)) " ).should == "#f"
    @nendo.replStr( " (find       (lambda (x) (= x 2))       '(1 2 3)) " ).should == "2"
    @nendo.replStr( " (find       (lambda (x) (not (= x 2))) '(1 2 3)) " ).should == "1"
    @nendo.replStr( " (find       (lambda (x) (if (= x 2) (* x 100) false))   '(1 2 3)) " ).should == "2"
    @nendo.replStr( " (filter-map (lambda (x) (= x 100))     '(1 2 3)) " ).should == "()"
    @nendo.replStr( " (filter-map (lambda (x) (= x 2))       '(1 2 3)) " ).should == "(#t)"
    @nendo.replStr( " (filter-map (lambda (x) (not (= x 2))) '(1 2 3)) " ).should == "(#t #t)"
    @nendo.replStr( " (filter-map (lambda (x) (if (= x 2) (* x 10) false)) '(1 2 3)) " ).should == "(20)"
    @nendo.replStr( " (filter-map (lambda (x) (if (not (= x 2)) (* x 10) false)) '(1 2 3)) " ).should == "(10 30)"
    @nendo.replStr( " " +
                    "(let1 result '()" +
                    "  (do" +
                    "      ((i 0 (+ i 1)))" +
                    "      ((< 10 i) #f)" +
                    "    (set! result (cons i result)))" +
                    "  (reverse result))" ).should == "(0 1 2 3 4 5 6 7 8 9 10)"
    @nendo.replStr( " " +
                    "(let1 result '()" +
                    "  (do" +
                    "      ((i 0 (+ i 3)))" +
                    "      ((< (* 3 10) i) #f)" +
                    "    (set! result (cons i result)))" +
                    "  (reverse result))" ).should == "(0 3 6 9 12 15 18 21 24 27 30)"
  end
end

describe Nendo, "when use values " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " (values? (make-values '())) " ).should == "#t"
    lambda { @nendo.replStr( " (make-values '(1))) " ) }.should        raise_error(ArgumentError)
    @nendo.replStr( " (values? (make-values '(1 2))) " ).should == "#t"
    @nendo.replStr( " (values? (make-values '(1 2 3))) " ).should == "#t"
    @nendo.replStr( " (values? (values)) " ).should == "#t"
    @nendo.replStr( " (values? (values 1)) " ).should == "#f"
    @nendo.replStr( " (values 1) " ).should == "1"
    @nendo.replStr( " (values? (values 1 2)) " ).should == "#t"
    @nendo.replStr( " (values? (values 1 2 3)) " ).should == "#t"
    @nendo.replStr( " (values? (values '(a) \"b\" '(\"C\"))) " ).should == "#t"
    @nendo.replStr( " (values-values (values)) " ).should == "()"
    lambda { @nendo.replStr( " (values-values (values 1)) " ) }.should     raise_error(TypeError)
    @nendo.replStr( " (values-values (values 1 2)) " ).should == "(1 2)"
    @nendo.replStr( " (values-values (values 1 2 3)) " ).should == "(1 2 3)"
    @nendo.replStr( " (values-values (values '(a) \"b\" '(\"C\"))) " ).should == '((a) "b" ("C"))'
    @nendo.replStr( "" +
                    " (call-with-values" +
                    "     (lambda () (values 4 5)) " +
                    "   (lambda (a b) b))" ).should == "5"
    @nendo.replStr( "" +
                    " (call-with-values" +
                    "     (lambda () (values 1 2)) " +
                    "   cons)" ).should == "(1 . 2)"
    @nendo.replStr( "" +
                    " (call-with-values" +
                    "     (lambda () (values 10)) " +
                    "   list)" ).should == "(10)"
    @nendo.replStr( "" +
                    " (call-with-values" +
                    "     (lambda () (values)) " +
                    "   list)" ).should == "()"
    @nendo.replStr( " (call-with-values * -) " ).should == "-1"
    @nendo.replStr( " (receive (a)       (values)           (list a))       " ).should == "()"
    @nendo.replStr( " (receive (a)       (values 10)        (list a))       " ).should == "(10)"
    @nendo.replStr( " (receive (a b)     (values 10 20)     (list a b))     " ).should == "(10 20)"
    @nendo.replStr( " (receive (a b c)   (values 10 20 30)  (list a b c))   " ).should == "(10 20 30)"
    @nendo.replStr( " (receive (a . b)   (values 10)        (list a b))     " ).should == "(10 ())"
    @nendo.replStr( " (receive (a . b)   (values 10 20)     (list a b))     " ).should == "(10 (20))"
    @nendo.replStr( " (receive (a . b)   (values 10 20 30)  (list a b))     " ).should == "(10 (20 30))"
    @nendo.replStr( " (receive all       (values)           all)            " ).should == "()"
    @nendo.replStr( " (receive all       (values 10)        all)            " ).should == "(10)"
    @nendo.replStr( " (receive all       (values 10 20)     all)            " ).should == "(10 20)"
    @nendo.replStr( " (receive all       (values 10 20 30)  all)            " ).should == "(10 20 30)"
  end
end

describe Nendo, "when toplevel variable was overwritten " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " (define a 1) a" ).should == "1"
    lambda { @nendo.replStr( " (define (c-func) (+ a b)) (c-func)" ) }.should   raise_error( NameError )
    @nendo.replStr( " (define b 2) b" ).should == "2"
    @nendo.replStr( " (c-func) " ).should == "3"
    @nendo.replStr( " (define b 20) " ).should == "20"
    @nendo.replStr( " (c-func) " ).should == "21"

    @nendo.replStr( " (define (a-func) 10) (a-func)" ).should == "10"
    lambda { @nendo.replStr( " (define (c-func) (* (a-func) (b-func))) (c-func)" ) }.should   raise_error( NameError )
    @nendo.replStr( " (define (b-func) 20)  (b-func)" ).should == "20"
    @nendo.replStr( " (c-func) " ).should == "200"
    @nendo.replStr( " (define (b-func) 200) (b-func)" ).should == "200"
    @nendo.replStr( " (c-func) " ).should == "2000"
  end
end

describe Nendo, "when use quasiquote macro " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " '(a b c) " ).should == "(a b c)"
    @nendo.replStr( " `(a b c) " ).should == "(a b c)"
    @nendo.replStr( " `(1 2 3) " ).should == "(1 2 3)"
    @nendo.replStr( " (set! a 3) `(1 2 ,a) " ).should == "(1 2 3)"
    @nendo.replStr( " (set! a 3) `(1 2 ,@(list a)) " ).should == "(1 2 3)"
    @nendo.replStr( " (set! a 3) `(1 ,@(list 2 a)) " ).should == "(1 2 3)"
    @nendo.replStr( " (set! a 11) `,a " ).should == "11"
    @nendo.replStr( " (set! a 12) ``,a " ).should == "`,a"
    @nendo.replStr( " `(list ,(+ 1 2) 4) " ).should == "(list 3 4)"
    @nendo.replStr( " (let ((name 'a)) `(list ,name ',name)) " ).should == "(list a 'a)"
    @nendo.replStr( " `(a `(b ,(+ 1 2) ,(foo ,(+ 1 3) d) e) f) " ).should == "(a `(b ,(+ 1 2) ,(foo 4 d) e) f)"
    @nendo.replStr( " `(( foo ,(- 10 3)) ,@(cdr '(c)) . ,(car '(cons))) " ).should == "((foo 7) . cons)"
  end
end

describe Nendo, "when use macros made by quasiquote. " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " (case (length '(1      )) ((1) \"one\") ((2) \"two\") (else \"else\")) " ).should == '"one"'
    @nendo.replStr( " (case (length '(1 2    )) ((1) \"one\") ((2) \"two\") (else \"else\")) " ).should == '"two"'
    @nendo.replStr( " (case (length '(1 2 3  )) ((1) \"one\") ((2) \"two\") (else \"else\")) " ).should == '"else"'
    @nendo.replStr( " (case (length '(1 2 3 4)) ((1) \"one\") ((2) \"two\") (else \"else\")) " ).should == '"else"'
    @nendo.replStr( " (case   100               ((1) \"one\") ((2) \"two\") (else \"else\")) " ).should == '"else"'
    @nendo.replStr( " (let* ((a 1)   (b (+ a 2)))  (cons a b)) " ).should == "(1 . 3)"
    @nendo.replStr( " (let* ((a 10)  (b (* a 2)))  (cons a b)) " ).should == "(10 . 20)"
    @nendo.replStr( " (let* ((a 10)  (b (* a 2)) (c (* b 3)))  (list a b c)) " ).should == "(10 20 60)"
    @nendo.replStr( " (begin0 1 2 3) " ).should == "1"
    @nendo.replStr( " (define a 2) (begin0 (set! a (* a 2)) (set! a (* a 2)) (set! a (* a 2)) ) " ).should == "4"
    @nendo.replStr( " (begin0 100) " ).should == "100"
    @nendo.replStr( " (begin0) " ).should == "#f"
    @nendo.replStr( " " +
                    "(receive (a b)" +
                    "    (begin0" +
                    "      (values 1 2)" +
                    "      (values 10 20)" +
                    "      (values 100 200))" +
                    " (cons a b))" ).should == "(1 . 2)"
  end
end

describe Nendo, "when use define and lambda macro " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " (macroexpand '(define (main argv) (newline) 0)) " ).should == "(define main (lambda (argv) (newline) 0))"
    @nendo.replStr( " (macroexpand '(define (main argv) (define (foo x) x) (+ 10 20) 0 (foo 111))) " ).should == "(define main (lambda (argv) (letrec ((foo (lambda (x) x))) (+ 10 20) (foo 111))))"
    @nendo.replStr( " (define (main argv) (define (foo x) x) (+ 10 20) 0 (foo 111)) (main) " ).should == "111"
    @nendo.replStr( " (define (main argv) (define (foo1 x) (+ 1 x)) (define (foo2 x) (+ 2 x)) (* (foo1 20) (foo2 30)))   (main '()) " ).should == "672"
    @nendo.replStr( " (macroexpand '(define (main argv) 0)) " ).should == "(define main (lambda (argv) 0))"
  end
end

describe Nendo, "when use macros expands some syntax. " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( "" +
                    "  (let1 total 0" +
                    "    (let loop ((cnt 10))" +
                    "      (if (< 0 cnt)" +
                    "          (begin" +
                    "            (set! total (+ total cnt))" +
                    "            (loop (- cnt 1)))))" +
                    "    total)" +
                    "" ).should == "55"
    @nendo.replStr( "" +
                    "(let label ((a 2)" +
                    "            (b 3))" +
                    "  (if (<= 9 (+ a b))" +
                    "      (* a b)" +
                    "      (label 4 5)))" +
                    "" ).should == "20"
    @nendo.replStr( "" +
                    "(macroexpand '(let loop ((x 1)) "+
                    "                 1"+
                    "                 2"+
                    "                 (loop 100)))" ).should == "(letrec ((loop (lambda (x) 1 2 (loop 100)))) (loop 1))"
  end
end

describe Nendo, "when use dot-operator (.) macro " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " (macroexpand '(. a b)) " ).should == "(a.b)"
    @nendo.replStr( " (macroexpand '(. a b c)) " ).should == "(a.b c)"
    @nendo.replStr( " (macroexpand '(. Kernel open)) " ).should == "(Kernel.open)"
    lambda { @nendo.replStr( " (macroexpand '(. open)) " ) }.should                   raise_error( ArgumentError )
    lambda { @nendo.replStr( " (macroexpand '(. open \"aaa\")) " ) }.should           raise_error( TypeError )
    @nendo.replStr( " (macroexpand '(. a size)) " ).should == "(a.size)"
    @nendo.replStr( " (macroexpand '(. (. a size) to_s)) " ).gsub( /10[0-9][0-9][0-9]/, "10000" ).should == "(let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_10000 (a.size))) (__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_10000.to_s))"
    @nendo.replStr( " (macroexpand '(. (. (. a size) to_s) to_i)) " ).gsub( /10[0-9][0-9][0-9]/, "10000" ).should == "(let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_10000 (let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_10000 (a.size))) (__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_10000.to_s)))) (__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_10000.to_i))"
    lambda { @nendo.replStr( " (macroexpand '(. (. a size))) " ) }.should             raise_error( ArgumentError )
    @nendo.replStr( " (set! str \"str\") str.size " ).should == "3"
    @nendo.replStr( " (set! str \"str\") (. str size) " ).should == "3"
    @nendo.replStr( " (set! str \"str\") (+ 1 (. str size)) " ).should == "4"
    @nendo.replStr( " (set! str \"string\") (. (. str size) to_s) " ).should == '"6"'
    @nendo.replStr( " (to-s str.size) " ).should == '"6"'
    @nendo.replStr( " (to-s 'str.size) " ).should == '"str.size"'
    @nendo.replStr( " (require \"date\") " ).should == "#f"
    @nendo.replStr( " (. (Date.new 0) strftime \"%x\") " ).should == '"01/01/00"'
    @nendo.replStr( " (. (Date.new 0) strftime \"%s\") " ).should == '"-62167392000"'
    @nendo.replStr( " (require \"digest/md5\") " ).should == "#f"
    @nendo.replStr( " (Digest::MD5.hexdigest \"abc\") " ).should ==           '"900150983cd24fb0d6963f7d28e17f72"'
    @nendo.replStr( " (Digest::MD5.hexdigest \"source text\") " ).should ==   '"20f79a1416626eeacc0bd9a8db87faa2"'
    @nendo.replStr( " (define a 1) (a.is_a? Fixnum) " ).should ==     "#t"
    @nendo.replStr( " (define a 1) (a.is_a? Float) " ).should ==      "#f"
    @nendo.replStr( " (define a 1) (a.is_a? String) " ).should ==     "#f"
    @nendo.replStr( " (define a 1.1) (a.is_a? Fixnum) " ).should ==   "#f"
    @nendo.replStr( " (define a 1.1) (a.is_a? Float) " ).should ==    "#t"
    @nendo.replStr( " (define a 1.1) (a.is_a? String) " ).should ==   "#f"
    @nendo.replStr( " (define a \"s\") (a.is_a? Fixnum) " ).should == "#f"
    @nendo.replStr( " (define a \"s\") (a.is_a? Float) " ).should ==  "#f"
    @nendo.replStr( " (define a \"s\") (a.is_a? String) " ).should == "#t"
  end
end

describe Nendo, "when use keyword feature " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " (keyword? :a) " ).should == "#t"
    @nendo.replStr( ' (keyword? (intern ":a")) ' ).should == "#f"
    @nendo.replStr( ' (symbol?  (intern ":a")) ' ).should == "#t"
    @nendo.replStr( " (keyword? ':a) " ).should == "#t"
    @nendo.replStr( " (symbol? ':a) " ).should == "#f"
    @nendo.replStr( " (eq?  :a :a) " ).should == "#t"
    @nendo.replStr( " (eqv? :a :a) " ).should == "#t"
    @nendo.replStr( ' (eq?  :a (intern ":a")) ' ).should == "#f"
    @nendo.replStr( ' (eqv? :a (intern ":a")) ' ).should == "#f"
    @nendo.replStr( ' (keyword? (make-keyword "a")) ' ).should == "#t"
    @nendo.replStr( " :a " ).should == ":a"
    @nendo.replStr( " ::a " ).should == "::a"
    @nendo.replStr( " :::key " ).should == ":::key"
    @nendo.replStr( ' (make-keyword "a") ' ).should == ":a"
    @nendo.replStr( ' (make-keyword ":a") ' ).should == "::a"
    @nendo.replStr( " (make-keyword 'a) " ).should == ":a"
    @nendo.replStr( " (keyword->string :a) " ).should == '"a"'
    @nendo.replStr( " (keyword->string :abcde) " ).should == '"abcde"'
    lambda { @nendo.replStr( " (keyword->string 'a) " ) }.should                  raise_error( TypeError )
    @nendo.replStr( " : " ).should == ':'
    @nendo.replStr( " (keyword->string :) " ).should == '""'
    @nendo.replStr( ' (make-keyword "") ' ).should == ":"
    @nendo.replStr( " (get-keyword :y '(:x 1 :y 2 :z 3)) " ).should == "2"
    @nendo.replStr( " (get-keyword 'z '(x 1 y 2 z 3)) " ).should == "3"
    lambda { @nendo.replStr( " (get-keyword 'z '(x 1 y 2 z)) " ) }.should         raise_error( RuntimeError )
    lambda { @nendo.replStr( " (get-keyword :t '(:x 1 :y 2 :z 3)) " ) }.should    raise_error( RuntimeError )
    @nendo.replStr( " (get-keyword :t '() #f) " ).should == "#f"
    @nendo.replStr( " (get-keyword :t '(:x) #f) " ).should == "#f"
    lambda { @nendo.replStr( " (get-keyword :t '()) " ) }.should                  raise_error( RuntimeError )
    lambda { @nendo.replStr( " (get-keyword :t '(:x)) " ) }.should                raise_error( RuntimeError )
    lambda { @nendo.replStr( " (get-keyword :t 1) " ) }.should                    raise_error( RuntimeError )
    @nendo.replStr( " (get-keyword :t 1 #f) " ).should == "#f"
  end
end

describe Nendo, "when use hash-table feature " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " (define h (make-hash-table)) " ).should == "{}"
    @nendo.replStr( " (hash-table? 1) " ).should == "#f"
    @nendo.replStr( " (hash-table? '(1)) " ).should == "#f"
    @nendo.replStr( " (hash-table? (Array.new)) " ).should == "#f"
    @nendo.replStr( " (hash-table? (Hash.new)) " ).should == "#t"
    @nendo.replStr( " h " ).should == "{}"
    @nendo.replStr( " (hash-table-put! h 'k1 'v1) h" ).should == "{:k1=>:v1}"
    @nendo.replStr( " (hash-table-put! h 'k2 200) h" ).should == "{:k1=>:v1, :k2=>200}"
    @nendo.replStr( " (hash-table-get  h 'k1)" ).should == "v1"
    @nendo.replStr( " (hash-table-get  h 'k2)" ).should == "200"
    @nendo.replStr( " (hash-table-exist? h 'k1)" ).should == "#t"
    @nendo.replStr( " (hash-table-exist? h 'k2)" ).should == "#t"
    @nendo.replStr( " (hash-table-exist? h 'k3)" ).should == "#f"
    @nendo.replStr( " (hash-table-exist? h \"k1\")" ).should == "#f"
    @nendo.replStr( " (hash-table-num-entries h)" ).should == "2"
    @nendo.replStr( " (hash-table-delete! h 'k1)" ).should == "v1"
    lambda { @nendo.replStr( " (hash-table-get h 'k1)" ) }.should                 raise_error( RuntimeError )
    @nendo.replStr( " (hash-table-get h 'k1 #f) " ).should == "#f"
    @nendo.replStr( " (hash-table-num-entries h)" ).should == "1"
    @nendo.replStr( " (hash-table-clear! h)" ).should == "{}"
    @nendo.replStr( " (hash-table-num-entries h)" ).should == "0"
    @nendo.replStr( " (set! h (hash-table '(\"a\" \"AAA\")   '(\"b\" \"BBB\")   '(\"c\" \"CCC\")))    h" ).should == "{\"a\"=>\"AAA\", \"b\"=>\"BBB\", \"c\"=>\"CCC\"}"
    @nendo.replStr( " (set! h (hash-table '(\"a\" . \"AAA\") '(\"b\" . \"BBB\") '(\"c\" . \"CCC\")))  h" ).should == "{\"a\"=>\"AAA\", \"b\"=>\"BBB\", \"c\"=>\"CCC\"}"
    @nendo.replStr( " (hash-table-keys       h)" ).should == '("a" "b" "c")'
    @nendo.replStr( " (hash-table-values     h)" ).should == '("AAA" "BBB" "CCC")'
    @nendo.replStr( " (hash-table-map        h (lambda (a b) (+ a b)))" ).should == '("aAAA" "bBBB" "cCCC")'
    @nendo.replStr( " (hash-table-for-each   h (lambda (a b) (+ a b)))" ).should == '("aAAA" "bBBB" "cCCC")'
    @nendo.replStr( " (set! h (hash-table '(a   AAA) '(b   BBB)))  h" ).should   == "{:a=>:AAA, :b=>:BBB}"
    @nendo.replStr( " (set! h (hash-table '(a . AAA) '(b   BBB)))  h" ).should   == "{:a=>:AAA, :b=>:BBB}"
    @nendo.replStr( " (set! h (hash-table '(a   AAA) '(b . BBB)))  h" ).should   == "{:a=>:AAA, :b=>:BBB}"
    @nendo.replStr( " (define alist (hash-table->alist h)) alist" ).should   == "((a . AAA) (b . BBB))"
    @nendo.replStr( " (define h2 (alist->hash-table alist)) h2" ).should   == "{:a=>:AAA, :b=>:BBB}"
    @nendo.replStr( " (set! h (make-hash-table)) " ).should == "{}"
    @nendo.replStr( " (hash-table-push! h 'a :AAA_1)  (hash-table->alist h)" ).should == "((a :AAA_1))"
    @nendo.replStr( " (hash-table-push! h 'a :AAA_2)  (hash-table->alist h)" ).should == "((a :AAA_2 :AAA_1))"
    @nendo.replStr( " (hash-table-push! h 'b :BBB_1)  (hash-table->alist h)" ).should == "((a :AAA_2 :AAA_1) (b :BBB_1))"
    @nendo.replStr( " (hash-table-push! h 'b :BBB_2)  (hash-table->alist h)" ).should == "((a :AAA_2 :AAA_1) (b :BBB_2 :BBB_1))"
  end
end

describe Nendo, "when use vector feature " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " (define v (vector)) v" ).should == "#()"
    @nendo.replStr( " (vector? 1) " ).should == "#f"
    @nendo.replStr( " (vector? (vector)) " ).should == "#t"
    @nendo.replStr( " (vector? (vector 1)) " ).should == "#t"
    @nendo.replStr( " (vector? (vector 1 2)) " ).should == "#t"
    @nendo.replStr( " (vector? '#(1)) " ).should == "#t"
    @nendo.replStr( " (vector? '#(1 2)) " ).should == "#t"
    @nendo.replStr( " (vector? (Array.new)) " ).should == "#t"
    @nendo.replStr( " (vector? (Hash.new)) " ).should == "#f"
    @nendo.replStr( " (vector? 1.1) " ).should == "#f"
    @nendo.replStr( " (vector? \"str\") " ).should == "#f"
    @nendo.replStr( " (define v (make-vector 4))" ).should == "#(nil nil nil nil)"
    @nendo.replStr( " (vector-set! v 0 'v1)  v" ).should ==   "#(v1 nil nil nil)"
    @nendo.replStr( " (vector-set! v 1 '100) v" ).should ==  "#(v1 100 nil nil)"
    @nendo.replStr( " (vector-set! v 2 '200) v" ).should ==    "#(v1 100 200 nil)"
    @nendo.replStr( " (vector-set! v 3 '(a b c))  v" ).should ==     "#(v1 100 200 (a b c))"
    @nendo.replStr( " (vector-length v)" ).should == "4"
    @nendo.replStr( " (vector-ref v 0) " ).should == "v1"
    @nendo.replStr( " (vector-ref v 1) " ).should == "100"
    @nendo.replStr( " (vector-ref v 2) " ).should == "200"
    @nendo.replStr( " (vector-ref v 3) " ).should == "(a b c)"
    lambda { @nendo.replStr( " (vector-ref v -1)" ) }.should                 raise_error( RuntimeError )
    lambda { @nendo.replStr( " (vector-ref v -2)" ) }.should                 raise_error( RuntimeError )
    lambda { @nendo.replStr( " (vector-ref v  5)" ) }.should                 raise_error( RuntimeError )
    lambda { @nendo.replStr( " (vector-ref v  6)" ) }.should                 raise_error( RuntimeError )
    @nendo.replStr( " (vector-ref v -1 1000)" ).should == "1000"
    @nendo.replStr( " (vector-ref v -2 2000)" ).should == "2000"
    @nendo.replStr( " (vector-ref v  5 3000)" ).should == "3000"
    @nendo.replStr( " (vector-ref v  6 4000)" ).should == "4000"
    @nendo.replStr( " (vector-ref v  7 #f)" ).should   == "#f"
    @nendo.replStr( " (define v   (make-vector 10)) v" ).should == "#(nil nil nil nil nil nil nil nil nil nil)"
    @nendo.replStr( " (vector->list v)" ).should == "(nil nil nil nil nil nil nil nil nil nil)"
    @nendo.replStr( " (define lst '(a b c (d)))" ).should == "(a b c (d))"
    @nendo.replStr( " (list->vector lst)" ).should == "#(a b c (d))"
    @nendo.replStr( " (list->vector (range 10 1))" ).should == "#(1 2 3 4 5 6 7 8 9 10)"
  end
end

describe Nendo, "tail call optimization " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
    @nendo.loadInitFile  # to self optimizing.  The init.nnd file will be loaded twice, so `filter' can be optimized on second loading phase.
  end
  it "should" do
    @nendo.replStr( " (setup-tailcall-mark '(print \"abc\")) " ).should == "(%tailcall (print \"abc\"))"
    @nendo.replStr( " (setup-tailcall-mark '(begin (print \"abc\") 1 2 3)) " ).should == "(begin (print \"abc\") 1 2 3)"
    @nendo.replStr( " (setup-tailcall-mark '(begin 1 2 (print \"abc\") 3)) " ).should == "(begin 1 2 (print \"abc\") 3)"
    @nendo.replStr( " (setup-tailcall-mark '(begin 1 2 3 (print \"abc\"))) " ).should == "(begin 1 2 3 (%tailcall (print \"abc\")))"
    @nendo.replStr( "" +
                    "(setup-tailcall-mark"+
                    "  '(lambda '(x)"+
                    "    1"+
                    "    2"+
                    "    (print \"abc\")))" ).should == "(lambda '(x) 1 2 (%tailcall (print \"abc\")))"
    @nendo.replStr( "" +
                    "(setup-tailcall-mark"+
                    "  '(lambda (x)"+
                    "     1"+
                    "     2"+
                    "     (if #t"+
                    "         (begin 1 2 (print \"abc\"))"+
                    "         (begin 1 2 (print \"ABC\")))))" ).should == "(lambda (x) 1 2 (if #t (begin 1 2 (%tailcall (print \"abc\"))) (begin 1 2 (%tailcall (print \"ABC\")))))"
    @nendo.replStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(define (foo) (foo))"+
                    "  ))" ).should == "(define foo (lambda () (%tailcall (foo))))"
    @nendo.replStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(values? (make-values '()))"+
                    "  ))" ).should == "(%tailcall (values? (make-values '())))"
    @nendo.replStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(cond (false  1) (false  2))"+
                    "  ))" ).should == "(if #f (begin 1) (if #f (begin 2) ()))"
    @nendo.replStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(cond (false 1) (false 2) (else 3))"+
                    "  ))" ).should == "(if #f (begin 1) (if #f (begin 2) (if #t (begin 3) ())))"
    @nendo.replStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(and (foo 1) (bar 2))"+
                    "  ))" ).should == "(if (not (eq? #f (foo 1))) (%tailcall (bar 2)) #f)"
    @nendo.replStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(or (foo 1) (bar 2))"+
                    "  ))" ).gsub( /20[0-9][0-9][0-9]/, "20000" ).should == "(let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_20000 (foo 1))) (if __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_20000 __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_20000 (let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_20000 (bar 2))) (if __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_20000 __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_20000 #f))))"
    @nendo.replStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(let loop ((x 1))  1 2 (loop 100))"+
                    "  ))" ).should == "(letrec ((loop (lambda (x) 1 2 (%tailcall (loop 100))))) (%tailcall (loop 1)))"
    @nendo.replStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(let1 aaa 111 aaa)"+
                    "  ))" ).should == "(let ((aaa 111)) aaa)"
    @nendo.replStr( "" +
                    "(setup-tailcall-mark"+
                    "  '(letrec ((func1 "+
                    "             (lambda (x)"+
                    "                1"+
                    "                (func2)))"+
                    "            (func2 "+
                    "             (lambda (x)"+
                    "                2"+
                    "                (func1))))"+
                    "     (func1 100)))" ).should == "(letrec ((func1 (lambda (x) 1 (%tailcall (func2)))) (func2 (lambda (x) 2 (%tailcall (func1))))) (%tailcall (func1 100)))"
    @nendo.replStr( "(filter (lambda (x) (< x 10)) (range   1000)) " ).should == "(0 1 2 3 4 5 6 7 8 9)"
    @nendo.replStr( "(filter (lambda (x) (< x 10)) (range  10000)) " ).should == "(0 1 2 3 4 5 6 7 8 9)"
    @nendo.replStr( "(define str (if #t (car '(\"a\")) (car '(\"b\")))) (sprintf \"A%sZ\" str) " ).should == '"AaZ"'
    @nendo.replStr( "(letrec ((str (if #t (+ \"a\" \"A\") '())))   str.class) " ).should == 'String'
    @nendo.replStr( "(letrec ((str (if #t (+ \"a\" \"A\") '())))   (+ str \"...\")) " ).should == '"aA..."'
  end
end


describe Nendo, "optional argument parser " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " (get-optional '() 100) " ).should == "100"
    @nendo.replStr( " (get-optional '(1) 100) " ).should == "1"
    @nendo.replStr( " (get-optional '(2) 100) " ).should == "2"
    @nendo.replStr( " (get-optional '(3 4) 100) " ).should == "3"
    @nendo.replStr( " (get-optional '() #t) " ).should == "#t"
    @nendo.replStr( " (get-optional '() #f) " ).should == "#f"
  end
end


