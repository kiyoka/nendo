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

describe Nendo, "Japanese characters in regex " do
  before do
    @matchData = "ABC漢字あいうえお漢字ABC".match( /([あ-ん])([あ-ん])([あ-ん])([あ-ん])([あ-ん])/ )
  end
  it "should" do
    @matchData.should be_true
    @matchData[0].should == "あいうえお"
    @matchData[1].should == "あ"
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
    @evaluator = Evaluator.new(Nendo::Core.new())
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
    @evaluator.toRubySymbol( '...' ).should  == '__DOTDOTDOT'
    @evaluator.toRubySymbol( '<...>' ).should  == '__LTMARK_DOTDOTDOT_GTMARK'
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
    @evaluator.toLispSymbol( "__DOTDOTDOT" ).should == "..."
    @evaluator.toLispSymbol( "__LTMARK_DOTDOTDOT_GTMARK" ).should == "<...>"
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

describe Nendo, "when call evalStr() with literals" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " 1 " ).should == "1"
    @nendo.evalStr( " 100000 " ).should == "100000"
    @nendo.evalStr( " 1.1 " ).should == "1.1"
    @nendo.evalStr( " 1.0 " ).should == "1.0"
    @nendo.evalStr( ' "a" ' ).should == '"a"'
    @nendo.evalStr( ' "\n" ' ).should == "\"\n\""
    @nendo.evalStr( ' "\r" ' ).should == "\"\\r\""
    @nendo.evalStr( ' "\t" ' ).should == "\"\\t\""
    @nendo.evalStr( ' "a" ' ).should == '"a"'
    @nendo.evalStr( ' "a\"b" ' ).should == '"a\"b"'
    @nendo.evalStr( " true " ).should == "#t"
    @nendo.evalStr( " false " ).should == "#f"
    @nendo.evalStr( " nil " ).should == "nil"
    @nendo.evalStr( " #t " ).should == "#t"
    @nendo.evalStr( " #f " ).should == "#f"
    pending( "JRuby can't compute correctly" ) if defined? JRUBY_VERSION
    @nendo.evalStr( ' "日本語" ' ).should == '"日本語"'
    @nendo.evalStr( ' "日\"本\"語" ' ).should == '"日\"本\"語"'
  end
end

describe Nendo, "when call evalStr() with comparative operators" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " (= 1 1) " ).should == "#t"
    @nendo.evalStr( " (= 1 2) " ).should == "#f"
    @nendo.evalStr( " (= #t #t) " ).should == "#t"
    @nendo.evalStr( " (= #f #f) " ).should == "#t"
    @nendo.evalStr( " (= true true) " ).should == "#t"
    @nendo.evalStr( " (= false false) " ).should == "#t"
    @nendo.evalStr( " (= #t true) " ).should == "#t"
    @nendo.evalStr( " (= #f false) " ).should == "#t"
    @nendo.evalStr( " (= #t #f) " ).should == "#f"
    @nendo.evalStr( " (= true false) " ).should == "#f"
    @nendo.evalStr( " (eq? 1 1) " ).should == "#t"
    @nendo.evalStr( " (eq? 1 2) " ).should == "#f"
    @nendo.evalStr( " (eq? 'a 'a) " ).should == "#t"
    @nendo.evalStr( " (eq? 'b 'b) " ).should == "#t"
    @nendo.evalStr( " (eq? 'a-b 'a-b) " ).should == "#t"
    @nendo.evalStr( " (eq? 'a_b 'a-b) " ).should == "#f"
    @nendo.evalStr( " (eq? 'a-b 'a_b) " ).should == "#f"
    @nendo.evalStr( " (< 1 1) " ).should == "#f"
    @nendo.evalStr( " (< 1 2) " ).should == "#t"
    @nendo.evalStr( " (> 1 1) " ).should == "#f"
    @nendo.evalStr( " (> 2 1) " ).should == "#t"
    @nendo.evalStr( " (<= 1 0) " ).should == "#f"
    @nendo.evalStr( " (<= 1 1) " ).should == "#t"
    @nendo.evalStr( " (<= 1 2) " ).should == "#t"
    @nendo.evalStr( " (>= 0 1) " ).should == "#f"
    @nendo.evalStr( " (>= 1 1) " ).should == "#t"
    @nendo.evalStr( " (equal? 1 1) " ).should == "#t"
    @nendo.evalStr( " (equal? 1 2) " ).should == "#f"
    @nendo.evalStr( " (equal? 2 2) " ).should == "#t"
    @nendo.evalStr( " (equal? '() '()) " ).should == "#t"
    @nendo.evalStr( " (equal? '(1) '(1)) " ).should == "#t"
    @nendo.evalStr( " (equal? '(1) '(2)) " ).should == "#f"
    @nendo.evalStr( " (equal? '(1 2 3) '(1 2 3)) " ).should == "#t"
    @nendo.evalStr( " (equal? '(1 2 . 3) '(1 2 . 3)) " ).should == "#t"
    @nendo.evalStr( " (equal? '(1 2 (3)) '(1 2 (3))) " ).should == "#t"
    @nendo.evalStr( " (equal? '(1 2 (3)) '(1 2 (4))) " ).should == "#f"
    @nendo.evalStr( " (equal? '(1 2 (3 (4))) '(1 2 (3 (4)))) " ).should == "#t"
    @nendo.evalStr( " (equal? '((1) 2 3 4) '((2) 2 3 4)) " ).should == "#f"
    @nendo.evalStr( " (equal? \"aaa\" \"aaa\") " ).should == "#t"
    @nendo.evalStr( " (equal? \"aaa\" \"aax\") " ).should == "#f"
    @nendo.evalStr( " (equal? '(\"aaa\") '(\"aaa\")) " ).should == "#t"
    @nendo.evalStr( " (equal? '(\"aaa\" (1)) '(\"aaa\" (1))) " ).should == "#t"
    @nendo.evalStr( " (equal? '(\"aaa\" (1)) '(\"aaa\" (2))) " ).should == "#f"
  end
end

describe Nendo, "when reference global-variables." do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " (pair? *load-path*) " ).should == "#t"
    @nendo.evalStr( " (string? (car *load-path*)) " ).should == "#t"
    @nendo.evalStr( " (to-arr   *load-path*)  " ).should include( "./spec")
    @nendo.evalStr( " (to-arr   *load-path*)  " ).should include( "./lib")
    @nendo.evalStr( " (string? (*FILE*)) " ).should == "#t"
    @nendo.evalStr( " (number? (*LINE*)) " ).should == "#t"
    @nendo.evalStr( " *nendo-version* " ).should == '"' + Nendo::Core.version + '"'
    @nendo.evalStr( " (string? *nendo-version*) " ).should == "#t"
  end
end

describe Nendo, "when call evalStr() with boolean operators" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " true " ).should == "#t"
    @nendo.evalStr( " false " ).should == "#f"
    @nendo.evalStr( " #t " ).should == "#t"
    @nendo.evalStr( " #f " ).should == "#f"
    @nendo.evalStr( " (not true) " ).should == "#f"
    @nendo.evalStr( " (not #t) " ).should == "#f"
    @nendo.evalStr( " (not 1) " ).should == "#f"
    @nendo.evalStr( " (not false) " ).should == "#t"
    @nendo.evalStr( " (not #f) " ).should == "#t"
    @nendo.evalStr( " (not \"str\") " ).should == "#f"
    @nendo.evalStr( " (not not) " ).should == "#f"
    @nendo.evalStr( " (not (not true)) " ).should == "#t"
    @nendo.evalStr( " (not (not #t)) " ).should == "#t"
    @nendo.evalStr( " (not '()) " ).should == "#f"
    @nendo.evalStr( " (not '(1)) " ).should == "#f"
  end
end

describe Nendo, "when call evalStr() with `+' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " (+ 1) " ).should == "1"
    @nendo.evalStr( " (+ 1 1) " ).should == "2"
    @nendo.evalStr( " (+ 1 1 1 1 1 1 1 1 1 1) " ).should == "10"
    @nendo.evalStr( " (+ 1 2 3 4 5) " ).should == "15"
    @nendo.evalStr( " (+ 1 (+ 2 (+ 3 (+ 4 (+ 5))))) " ).should == "15"
    @nendo.evalStr( " (+ 1   1.1) " ).should == "2.1"
    @nendo.evalStr( " (+ 1.1 1.2) " ).should == "2.3"
    @nendo.evalStr( " (+ \"a\" ) " ).should == '"a"'
    @nendo.evalStr( " (+ \"a\" \"B\" \"c\" ) " ).should == '"aBc"'
    @nendo.evalStr( " (+) " ).should == "0"
    lambda { @nendo.evalStr( " (+ '() ) " ) }.should         raise_error(TypeError)
    lambda { @nendo.evalStr( " (+ 1 '() ) " ) }.should       raise_error(TypeError)
    lambda { @nendo.evalStr( " (+ 1.1 '() ) " ) }.should     raise_error(TypeError)
    lambda { @nendo.evalStr( " (+ '(1) ) " ) }.should        raise_error(TypeError)
    lambda { @nendo.evalStr( " (+ 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
    lambda { @nendo.evalStr( " (+ \"a\" 1) " ) }.should      raise_error(TypeError)
    lambda { @nendo.evalStr( " (+ \"a\" 1.1) " ) }.should    raise_error(TypeError)
  end
end

describe Nendo, "when call evalStr() with `-' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " (- 1) " ).should == "-1"
    @nendo.evalStr( " (- 2 1) " ).should == "1"
    @nendo.evalStr( " (- 2 5) " ).should == "-3"
    @nendo.evalStr( " (- 100 1 1 1 1 1 1 1 1 1 1) " ).should == "90"
    @nendo.evalStr( " (- 100 (- 10 3)) " ).should == "93"
    @nendo.evalStr( " (- 1.1 1) " ).should == (1.1-1).to_s
    @nendo.evalStr( " (- 1.3 1.1) " ).should == (1.3-1.1).to_s
    lambda { @nendo.evalStr( " (- 1 '() ) " ) }.should       raise_error(TypeError)
    lambda { @nendo.evalStr( " (- 1.1 '() ) " ) }.should     raise_error(TypeError)
    lambda { @nendo.evalStr( " (-) " ) }.should              raise_error(ArgumentError)
    lambda { @nendo.evalStr( " (- '(1) ) " ) }.should        raise_error(TypeError)
    lambda { @nendo.evalStr( " (- '() ) " ) }.should         raise_error(TypeError)
    lambda { @nendo.evalStr( " (- 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
  end
end

describe Nendo, "when call evalStr() with `*' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " (* 1) " ).should == "1"
    @nendo.evalStr( " (* 2 1) " ).should == "2"
    @nendo.evalStr( " (* 2 5) " ).should == "10"
    @nendo.evalStr( " (* 1 2 3 4 5 6 7 8 9 10) " ).should == "3628800"
    @nendo.evalStr( " (* 100 (* 10 10 10)) " ).should == "100000"
    @nendo.evalStr( " (* 1.1 1) " ).should == "1.1"
    @nendo.evalStr( " (* 1.3 1.1) " ).should == (1.3*1.1).to_s
    @nendo.evalStr( " (*) " ).should == "1"
    lambda { @nendo.evalStr( " (* '() ) " ) }.should         raise_error(TypeError)
    lambda { @nendo.evalStr( " (* 1 '() ) " ) }.should       raise_error(TypeError)
    lambda { @nendo.evalStr( " (* 1.1 '() ) " ) }.should     raise_error(TypeError)
    lambda { @nendo.evalStr( " (* '(1) ) " ) }.should        raise_error(TypeError)
    lambda { @nendo.evalStr( " (* 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
    lambda { @nendo.evalStr( " (* \"a\" 1) " ) }.should      raise_error(TypeError)
    lambda { @nendo.evalStr( " (* \"a\" 1.1) " ) }.should    raise_error(TypeError)
  end
end

describe Nendo, "when call evalStr() with `/' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " (/ 1) " ).should == "1"
    @nendo.evalStr( " (/ 1.1) " ).should ==
      (1/1.1).to_s
    @nendo.evalStr( " (/ 2 1) " ).should == "2"
    @nendo.evalStr( " (/ 2 2) " ).should == "1"
    @nendo.evalStr( " (/ 2 2.0) " ).should == "1.0"
    @nendo.evalStr( " (/ 2 5.0) " ).should == "0.4"
    @nendo.evalStr( " (/ 10.0 2 2 2 2 2 2 2 2 2 2) " ).should == "0.009765625"
    @nendo.evalStr( " (/ 100 (/ 100 10) 10) " ).should == "1"
    @nendo.evalStr( " (/ 1 1.11) " ).should ==
      (1/1.11).to_s
    @nendo.evalStr( " (/ 1.3 1.1) " ).should ==
      (1.3/1.1).to_s
    lambda { @nendo.evalStr( " (/ 1 '() ) " ) }.should      raise_error(TypeError)
    lambda { @nendo.evalStr( " (/ 1.1 '() ) " ) }.should    raise_error(TypeError)
    lambda { @nendo.evalStr( " (/) " ) }.should             raise_error(ArgumentError)
    lambda { @nendo.evalStr( " (/ '() ) " ) }.should        raise_error(TypeError)
    lambda { @nendo.evalStr( " (/ 1.1 \"a\" ) " ) }.should  raise_error(TypeError)
  end
end

describe Nendo, "when call evalStr() with `%' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " (% 1) " ).should == "0"
    @nendo.evalStr( " (% 1.1) " ).should == "1.0"
    @nendo.evalStr( " (% 2 1) " ).should == "0"
    @nendo.evalStr( " (% 2 2) " ).should == "0"
    @nendo.evalStr( " (% 2 2.0) " ).should == "0.0"
    @nendo.evalStr( " (% 2 5.0) " ).should == "2.0"
    @nendo.evalStr( " (% 100 (% 103 10)) " ).should == "1"
    @nendo.evalStr( " (% 1 1.11) " ).should == "1.0"
    @nendo.evalStr( " (% 1.3 1.1) " ).should == (1.3%1.1).to_s
    lambda { @nendo.evalStr( " (% 1 '() ) " ) }.should       raise_error(TypeError)
    lambda { @nendo.evalStr( " (% 1.1 '() ) " ) }.should     raise_error(TypeError)
    lambda { @nendo.evalStr( " (\%) " ) }.should             raise_error(ArgumentError)
    lambda { @nendo.evalStr( " (\% '() ) " ) }.should        raise_error(TypeError)
    lambda { @nendo.evalStr( " (\% 1.1 \"a\" ) " ) }.should  raise_error(TypeError)
  end
end

describe Nendo, "when call evalStr() with `quotient' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " (quotient 2 1) " ).should == "2"
    @nendo.evalStr( " (quotient 2 2) " ).should == "1"
    @nendo.evalStr( " (quotient 2 2.0) " ).should == "1"
    @nendo.evalStr( " (quotient 2 5.0) " ).should == "0"
    @nendo.evalStr( " (quotient 1 1.11) " ).should == "0"
    @nendo.evalStr( " (quotient  10  3) " ).should == "3"
    @nendo.evalStr( " (quotient -10  3) " ).should == "-3"
    @nendo.evalStr( " (quotient  10 -3) " ).should == "-3"
    @nendo.evalStr( " (quotient  10 -2) " ).should == "-5"
    lambda { @nendo.evalStr( " (quotient 1 ) " ) }.should           raise_error(ArgumentError)
    lambda { @nendo.evalStr( " (quotient 1.1 ) " ) }.should         raise_error(ArgumentError)
    lambda { @nendo.evalStr( " (quotient) " ) }.should              raise_error(ArgumentError)
    lambda { @nendo.evalStr( " (quotient '() ) " ) }.should         raise_error(ArgumentError)
    lambda { @nendo.evalStr( " (quotient 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
    lambda { @nendo.evalStr( " (quotient \"a\" 1.1 ) " ) }.should   raise_error(TypeError)
  end
end

describe Nendo, "when call evalStr() with `remainder' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " (remainder 2 1) " ).should == "0"
    @nendo.evalStr( " (remainder 2 2) " ).should == "0"
    @nendo.evalStr( " (remainder 2 2.0) " ).should == "0.0"
    @nendo.evalStr( " (remainder 2 5.0) " ).should == "2.0"
    @nendo.evalStr( " (remainder 1 1.11) " ).should == "1.0"
    @nendo.evalStr( " (remainder  10  3) " ).should == "1"
    @nendo.evalStr( " (remainder -10  3) " ).should == "-1"
    @nendo.evalStr( " (remainder  10 -3) " ).should == "1"
    @nendo.evalStr( " (remainder -10 -3) " ).should == "-1"
    @nendo.evalStr( " (remainder  10 -2) " ).should == "0"
    lambda { @nendo.evalStr( " (remainder 1 '() ) " ) }.should       raise_error(TypeError)
    lambda { @nendo.evalStr( " (remainder 1.1 '() ) " ) }.should     raise_error(TypeError)
    lambda { @nendo.evalStr( " (remainder) " ) }.should              raise_error(ArgumentError)
    lambda { @nendo.evalStr( " (remainder '() ) " ) }.should         raise_error(ArgumentError)
    lambda { @nendo.evalStr( " (remainder 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
  end
end

describe Nendo, "when call evalStr() with `modulo' function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " (modulo 2 1) " ).should == "0"
    @nendo.evalStr( " (modulo 2 2) " ).should == "0"
    @nendo.evalStr( " (modulo 2 2.0) " ).should == "0.0"
    @nendo.evalStr( " (modulo 2 5.0) " ).should == "2.0"
    @nendo.evalStr( " (modulo 100 (modulo 103 10)) " ).should == "1"
    @nendo.evalStr( " (modulo 1 1.11) " ).should == "1.0"
    @nendo.evalStr( " (modulo  10  3) " ).should == "1"
    @nendo.evalStr( " (modulo -10  3) " ).should == "2"
    @nendo.evalStr( " (modulo  10 -3) " ).should == "-2"
    @nendo.evalStr( " (modulo -10 -3) " ).should == "-1"
    @nendo.evalStr( " (modulo  10 -2) " ).should == "0"
    lambda { @nendo.evalStr( " (modulo 1 '() ) " ) }.should       raise_error(TypeError)
    lambda { @nendo.evalStr( " (modulo 1.1 '() ) " ) }.should     raise_error(TypeError)
    lambda { @nendo.evalStr( " (modulo) " ) }.should              raise_error(ArgumentError)
    lambda { @nendo.evalStr( " (modulo '() ) " ) }.should         raise_error(TypeError)
    lambda { @nendo.evalStr( " (modulo 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
  end
end

describe Nendo, "when use quote and syntax-quote " do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " '() " ).should                                                 == "()"
    @nendo.evalStr( " '1 " ).should                                                  == "1"
    @nendo.evalStr( " '\"str\" " ).should                                            == '"str"'
    @nendo.evalStr( " '(1 . 2) " ).should                                            == "(1 . 2)"
    @nendo.evalStr( " (quote ())" ).should                                           == "()"
    @nendo.evalStr( " (quote 1)" ).should                                            == "1"
    @nendo.evalStr( " (quote \"str\") " ).should                                     == '"str"'
    @nendo.evalStr( " (quote (1 . 2)) " ).should                                     == "(1 . 2)"
    @nendo.evalStr( " (syntax-quote ())" ).should                                    == "()"
    @nendo.evalStr( " (syntax-quote 1)" ).should                                     == "1"
    @nendo.evalStr( " (syntax-quote \"str\") " ).should                              == '"str"'
    @nendo.evalStr( " (syntax-quote (1 . 2)) " ).should                              == "(1 . 2)"
    @nendo.evalStr( " (quote quote) " ).should                                       == "'"
    @nendo.evalStr( " 'quote " ).should                                              == "'"
    @nendo.evalStr( " ''1 " ).should                                                 == "'1"
    @nendo.evalStr( " (quote syntax-quote) " ).should                                == "syntax-quote"
    @nendo.evalStr( " (syntax-quote '1) " ).should                                   == "'1"
    @nendo.evalStr( " (syntax-quote (quote 1)) " ).should                            == "'1"
    @nendo.evalStr( " (quote (syntax-quote 1)) " ).should                            == "(syntax-quote 1)"
  end
end

describe Nendo, "when read various list expressions" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " '() " ).should == "()"
    @nendo.evalStr( " '[] " ).should == "()"
    @nendo.evalStr( " '(1 . 1) " ).should == "(1 . 1)"
    @nendo.evalStr( " '[1 . 1) " ).should == "(1 . 1)"
    @nendo.evalStr( " '(1 . 1] " ).should == "(1 . 1)"
    @nendo.evalStr( " '(1 1 . 1) " ).should == "(1 1 . 1)"
    @nendo.evalStr( " '(1 2 . 3) " ).should == "(1 2 . 3)"
    @nendo.evalStr( " '(1 2 3) " ).should == "(1 2 3)"
    @nendo.evalStr( " '(1.1 2.2 3.3) " ).should == "(1.1 2.2 3.3)"
    @nendo.evalStr( " '(a bb ccc dddd) " ).should == "(a bb ccc dddd)"
    @nendo.evalStr( " '(a (b) ((c)) (((d)))) " ).should == "(a (b) ((c)) (((d))))"
    @nendo.evalStr( " '[a (b) ((c)) (((d)))] " ).should == "(a (b) ((c)) (((d))))"
    @nendo.evalStr( " '(a [b] ([c]) (([d]))) " ).should == "(a (b) ((c)) (((d))))"
    @nendo.evalStr( " '[a [b] [[c]] [[[d]]]] " ).should == "(a (b) ((c)) (((d))))"
    @nendo.evalStr( " '('a)" ).should == "('a)"
    @nendo.evalStr( " '(''a)" ).should == "(''a)"
    @nendo.evalStr( " '('a 'b 'c)" ).should == "('a 'b 'c)"
    @nendo.evalStr( ' \'("str") ' ).should == '("str")'
    @nendo.evalStr( ' \'("str" . 1) ' ).should == '("str" . 1)'
    @nendo.evalStr( ' \'(1 . "str") ' ).should == '(1 . "str")'
    @nendo.evalStr( ' \'(1 2 . "str") ' ).should == '(1 2 . "str")'
    @nendo.evalStr( " '((a)(b)(c)) " ).should == "((a) (b) (c))"
    @nendo.evalStr( " 'a " ).should == "a"
    @nendo.evalStr( " 'symbol " ).should == "symbol"
    @nendo.evalStr( " 'SYMBOL " ).should == "SYMBOL"
    @nendo.evalStr( " 'SyMbOl " ).should == "SyMbOl"
    @nendo.evalStr( " ''a " ).should == "'a"
    @nendo.evalStr( " '1 " ).should == "1"
    @nendo.evalStr( " ''1 " ).should == "'1"
    @nendo.evalStr( " '''1 " ).should == "''1"
    @nendo.evalStr( " '1.1 " ).should == "1.1"
    @nendo.evalStr( " ''1.1 " ).should == "'1.1"
    @nendo.evalStr( " '''1.1 " ).should == "''1.1"
    @nendo.evalStr( " '() " ).should == "()"
    @nendo.evalStr( " '(()) " ).should == "(())"
    @nendo.evalStr( " '((())) " ).should == "((()))"
    @nendo.evalStr( " '(((()))) " ).should == "(((())))"
    @nendo.evalStr( " '(()  .  ()) " ).should == "(())"
    @nendo.evalStr( " '(a . ()) " ).should == "(a)"
    @nendo.evalStr( " '(a . #t) " ).should == "(a . #t)"
    @nendo.evalStr( " '(a . #f) " ).should == "(a . #f)"
    @nendo.evalStr( " '(a . nil) " ).should == "(a . nil)"
    @nendo.evalStr( " '(a b c d e  .  ()) " ).should == "(a b c d e)"
    @nendo.evalStr( " '(#t #t #f #f nil nil '() '()) " ).should == "(#t #t #f #f nil nil '() '())"
  end
end




class TestClassForBlockArgument
  def arg1
    yield 100
  end
  def arg2
    yield 100,200
  end
  def arg5
    yield 10,20,30,40,50
  end
end

describe Nendo, "when use &block(Ruby's block) " do
  before do
    @nendo = Nendo::Core.new()
  end

  it "should" do
    @nendo.evalStr( " (define testclass (TestClassForBlockArgument.new))  testclass.class" ).should == "TestClassForBlockArgument"
    @nendo.evalStr( " (testclass.arg1 (&block (a)    (list a)))  " ).should == "(100)"
    @nendo.evalStr( " (testclass.arg2 (&block (a b)  (cons a b))) " ).should == "(100 . 200)"
    @nendo.evalStr( " (testclass.arg5 (&block (a b c d e)  (list a b c d e))) " ).should == "(10 20 30 40 50)"
    @nendo.evalStr( " (testclass.arg5 (&block (a b c d e)  (to-arr (list a b c d e)))) " ).should == "#(10 20 30 40 50)"
  end
end

describe Nendo, "when read various vector expressions" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " '() " ).should == "()"
    @nendo.evalStr( " '[] " ).should == "()"
    @nendo.evalStr( " '#( 1 ) " ).should == "#(1)"
    lambda { @nendo.evalStr( " '#(( 1 ) " )    }.should                               raise_error( RuntimeError )
    @nendo.evalStr( " '#( 1 2 ) " ).should == "#(1 2)"
    @nendo.evalStr( " '#( 1 () ) " ).should == "#(1 ())"
    @nendo.evalStr( " '#( () 2 ) " ).should == "#(() 2)"
    lambda { @nendo.evalStr( " '#( 1 . 2 ) " ) }.should                               raise_error( RuntimeError )
    lambda { @nendo.evalStr( " #(+ 1 2) " )    }.should                               raise_error( RuntimeError )
    @nendo.evalStr( " '#( 1 #( 11 )) " ).should == "#(1 #(11))"
    @nendo.evalStr( " '#( 1 #( 11 12 )) " ).should == "#(1 #(11 12))"
    @nendo.evalStr( " '#( 1 #( 11 #( 111 ))) " ).should == "#(1 #(11 #(111)))"
    @nendo.evalStr( " '#( 1 #( 11 #( 111 112))) " ).should == "#(1 #(11 #(111 112)))"
    @nendo.evalStr( " '#(1 2 3) " ).should == "#(1 2 3)"
    @nendo.evalStr( " '#(1.1 2.2 3.3) " ).should == "#(1.1 2.2 3.3)"
    @nendo.evalStr( " '#(a bb ccc dddd) " ).should == "#(a bb ccc dddd)"
    @nendo.evalStr( " '#(a (b) ((c)) (((d)))) " ).should == "#(a (b) ((c)) (((d))))"
  end
end

describe Nendo, "when call evalStr() with built-in functions" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " (car '(1 2 3 4)) " ).should == "1"
    @nendo.evalStr( " (cdr '(1 2 3 4)) " ).should == "(2 3 4)"
    @nendo.evalStr( " (null? '()) " ).should == "#t"
    @nendo.evalStr( " (null? '(1)) " ).should == "#f"
    @nendo.evalStr( " (null? false) " ).should == "#f"
    @nendo.evalStr( " (null? nil) " ).should == "#f"
    @nendo.evalStr( " (null? true) " ).should == "#f"
    @nendo.evalStr( " (cons 1 2) " ).should == "(1 . 2)"
    @nendo.evalStr( " (cons 1 '(2 3)) " ).should == "(1 2 3)"
    @nendo.evalStr( " (cons '(1 2) '(3 4)) " ).should == "((1 2) 3 4)"
    @nendo.evalStr( " (cons '(1 2) '((3 4))) " ).should == "((1 2) (3 4))"
    @nendo.evalStr( " (cons '() '()) " ).should == "(())"
    @nendo.evalStr( " (cons 1 '()) " ).should == "(1)"
    @nendo.evalStr( " (cons '() (cdr '(100))) " ).should == "(())"
    @nendo.evalStr( " (cons '() (car '(()))) " ).should == "(())"
    @nendo.evalStr( " (cons (car '(())) '()) " ).should == "(())"
    @nendo.evalStr( " (cons (car '(())) (car '(()))) " ).should == "(())"
    @nendo.evalStr( " (cons '() (cdr '(100))) " ).should == "(())"
    @nendo.evalStr( " (cons (cdr '(100)) '()) " ).should == "(())"
    @nendo.evalStr( " (cons (cdr '(100)) (cdr '(100))) " ).should == "(())"
    lambda { @nendo.evalStr( " (cons 1 2 3) " ) }.should    raise_error(ArgumentError)
    lambda { @nendo.evalStr( " (cons 1) " ) }.should        raise_error(ArgumentError)
    lambda { @nendo.evalStr( " (cons) " ) }.should          raise_error(ArgumentError)
    @nendo.evalStr( " (list 1 2 3) " ).should == "(1 2 3)"
    @nendo.evalStr( " (list '(1) '(2) '(3)) " ).should == "((1) (2) (3))"
    @nendo.evalStr( " (list 'a 'b 'c) " ).should == "(a b c)"
    @nendo.evalStr( " (list '(a) '((b c))) " ).should == "((a) ((b c)))"
    @nendo.evalStr( " (list) " ).should == "()"
    @nendo.evalStr( " (list 1) " ).should == "(1)"
    @nendo.evalStr( " (define !a 10) !a" ).should == "10"
    @nendo.evalStr( " (define $a 11) $a" ).should == "11"
    @nendo.evalStr( " (define %a 12) %a" ).should == "12"
    @nendo.evalStr( " (define &a 13) &a" ).should == "13"
    @nendo.evalStr( " (define *a 14) *a" ).should == "14"
    @nendo.evalStr( " (define +a 15) +a" ).should == "15"
    @nendo.evalStr( " (define -a 16) -a" ).should == "16"
    @nendo.evalStr( " (define /a 17) /a" ).should == "17"
    @nendo.evalStr( " (define <a 18) <a" ).should == "18"
    @nendo.evalStr( " (define =a 19) =a" ).should == "19"
    @nendo.evalStr( " (define ?a 20) ?a" ).should == "20"
    @nendo.evalStr( " (define @a 21) @a" ).should == "21"
    @nendo.evalStr( " (define ^a 22) ^a" ).should == "22"
    @nendo.evalStr( " (define ~a 23) ~a" ).should == "23"
    @nendo.evalStr( " (define a! 30) a!" ).should == "30"
    @nendo.evalStr( " (define a$ 31) a$" ).should == "31"
    @nendo.evalStr( " (define a% 32) a%" ).should == "32"
    @nendo.evalStr( " (define a& 33) a&" ).should == "33"
    @nendo.evalStr( " (define a* 34) a*" ).should == "34"
    @nendo.evalStr( " (define a+ 35) a+" ).should == "35"
    @nendo.evalStr( " (define a- 36) a-" ).should == "36"
    @nendo.evalStr( " (define a/ 37) a/" ).should == "37"
    @nendo.evalStr( " (define a< 38) a<" ).should == "38"
    @nendo.evalStr( " (define a= 39) a=" ).should == "39"
    @nendo.evalStr( " (define a? 40) a?" ).should == "40"
    @nendo.evalStr( " (define a@ 41) a@" ).should == "41"
    @nendo.evalStr( " (define a^ 42) a^" ).should == "42"
    @nendo.evalStr( " (define a~ 43) a~" ).should == "43"
    @nendo.evalStr( " (define aFunc (lambda (x) x)) true" ).should == "#t"
    @nendo.evalStr( " (define aMacro (macro (x) x)) true" ).should == "#t"
    @nendo.evalStr( " (define a! 123) a!" ).should == "123"
    @nendo.evalStr( " (define b? 321) b?" ).should == "321"
    @nendo.evalStr( " (define a-b 1234) a-b" ).should == "1234"
    @nendo.evalStr( " (define start-end!? 4321) start-end!?" ).should == "4321"
    @nendo.evalStr( " (procedure? car) " ).should == "#t"
    @nendo.evalStr( " (procedure? aFunc) " ).should == "#t"
    @nendo.evalStr( " (procedure? aMacro) " ).should == "#f"
    @nendo.evalStr( " (procedure? 1) " ).should == "#f"
    @nendo.evalStr( " (procedure? 1.1) " ).should == "#f"
    @nendo.evalStr( " (procedure? \"str\") " ).should == "#f"
    @nendo.evalStr( " (procedure? 'a) " ).should == "#f"
    @nendo.evalStr( " (procedure? '(1)) " ).should == "#f"
    @nendo.evalStr( " (procedure? '()) " ).should == "#f"
    @nendo.evalStr( " (symbol? car) " ).should == "#f"
    @nendo.evalStr( " (symbol? aFunc) " ).should == "#f"
    @nendo.evalStr( " (symbol? aMacro) " ).should == "#f"
    @nendo.evalStr( " (symbol? 1) " ).should == "#f"
    @nendo.evalStr( " (symbol? 1.1) " ).should == "#f"
    @nendo.evalStr( " (symbol? \"str\") " ).should == "#f"
    @nendo.evalStr( " (symbol? 'a) " ).should == "#t"
    @nendo.evalStr( " (symbol? '(1)) " ).should == "#f"
    @nendo.evalStr( " (symbol? '()) " ).should == "#f"
    @nendo.evalStr( " (pair? car) " ).should == "#f"
    @nendo.evalStr( " (pair? aFunc) " ).should == "#f"
    @nendo.evalStr( " (pair? aMacro) " ).should == "#f"
    @nendo.evalStr( " (pair? 1) " ).should == "#f"
    @nendo.evalStr( " (pair? 1.1) " ).should == "#f"
    @nendo.evalStr( " (pair? \"str\") " ).should == "#f"
    @nendo.evalStr( " (pair? 'a) " ).should == "#f"
    @nendo.evalStr( " (pair? '(1)) " ).should == "#t"
    @nendo.evalStr( " (pair? '()) " ).should == "#f"
    @nendo.evalStr( " (number? car) " ).should == "#f"
    @nendo.evalStr( " (number? aFunc) " ).should == "#f"
    @nendo.evalStr( " (number? aMacro) " ).should == "#f"
    @nendo.evalStr( " (number? 1) " ).should == "#t"
    @nendo.evalStr( " (number? 1.1) " ).should == "#t"
    @nendo.evalStr( " (number? \"str\") " ).should == "#f"
    @nendo.evalStr( " (number? 'a) " ).should == "#f"
    @nendo.evalStr( " (number? '(1)) " ).should == "#f"
    @nendo.evalStr( " (number? '()) " ).should == "#f"
    @nendo.evalStr( " (integer? car) " ).should == "#f"
    @nendo.evalStr( " (integer? aFunc) " ).should == "#f"
    @nendo.evalStr( " (integer? aMacro) " ).should == "#f"
    @nendo.evalStr( " (integer? 1) " ).should == "#t"
    @nendo.evalStr( " (integer? 1.1) " ).should == "#f"
    @nendo.evalStr( " (integer? \"str\") " ).should == "#f"
    @nendo.evalStr( " (integer? 'a) " ).should == "#f"
    @nendo.evalStr( " (integer? '(1)) " ).should == "#f"
    @nendo.evalStr( " (integer? '()) " ).should == "#f"
    @nendo.evalStr( " (string? car) " ).should == "#f"
    @nendo.evalStr( " (string? aFunc) " ).should == "#f"
    @nendo.evalStr( " (string? aMacro) " ).should == "#f"
    @nendo.evalStr( " (string? 1) " ).should == "#f"
    @nendo.evalStr( " (string? 1.1) " ).should == "#f"
    @nendo.evalStr( " (string? \"str\") " ).should == "#t"
    @nendo.evalStr( " (string? 'a) " ).should == "#f"
    @nendo.evalStr( " (string? '(1)) " ).should == "#f"
    @nendo.evalStr( " (string? '()) " ).should == "#f"
    @nendo.evalStr( " (macro? car) " ).should == "#f"
    @nendo.evalStr( " (macro? aFunc) " ).should == "#f"
    @nendo.evalStr( " (macro? aMacro) " ).should == "#t"
    @nendo.evalStr( " (macro? 1) " ).should == "#f"
    @nendo.evalStr( " (macro? 1.1) " ).should == "#f"
    @nendo.evalStr( " (macro? \"str\") " ).should == "#f"
    @nendo.evalStr( " (macro? 'a) " ).should == "#f"
    @nendo.evalStr( " (macro? '(1)) " ).should == "#f"
    @nendo.evalStr( " (macro? '()) " ).should == "#f"
    @nendo.evalStr( " (length '()) " ).should == "0"
    @nendo.evalStr( " (length '(1)) " ).should == "1"
    @nendo.evalStr( " (length '((1))) " ).should == "1"
    @nendo.evalStr( " (length '(1 2)) " ).should == "2"
    lambda { @nendo.evalStr( " (length \"str\") " ) }.should  raise_error(TypeError)
    lambda { @nendo.evalStr( " (length 1) " ) }.should  raise_error(TypeError)
    @nendo.evalStr( " (symbol->string 'sym) " ).should == '"sym"'
    @nendo.evalStr( " (string->symbol \"sym\") " ).should == 'sym'
    @nendo.evalStr( ' (string-join \'("Aa" "Bb" "Cc")    ) ' ).should  == '"AaBbCc"'
    @nendo.evalStr( ' (string-join \'("Aa" "Bb" "Cc") ":") ' ).should  == '"Aa:Bb:Cc"'
    @nendo.evalStr( ' (string-join \'("Aa" "Bb" "Cc") "//") ' ).should == '"Aa//Bb//Cc"'
    lambda { @nendo.evalStr( ' (string-join \'("Aa" "Bb" "Cc") 100) ' ) }.should  raise_error(TypeError)
    lambda { @nendo.evalStr( ' (string-join \'("Aa" "Bb" "Cc") :xx) ' ) }.should  raise_error(TypeError)
    @nendo.evalStr( ' (read-from-string "1") ' ).should == '1'
    @nendo.evalStr( ' (read-from-string "(+ 1 2)") ' ).should == '(+ 1 2)'
    @nendo.evalStr( ' (read-from-string "(\"Aa\" \"Bb\" \"Cc\")") ' ).should == '("Aa" "Bb" "Cc")'
    lambda { @nendo.evalStr( ' (read-from-string 100) ' ) }.should  raise_error(TypeError)
    @nendo.evalStr( ' (write-to-string 1) ' ).should == '"1"'
    @nendo.evalStr( ' (write-to-string \'(+ 1 2)) ' ).should == '"(+ 1 2)"'
    @nendo.evalStr( ' (write-to-string \'("Aa" "Bb" "Cc")) ' ).should == '"(\"Aa\" \"Bb\" \"Cc\")"'
  end
end

describe Nendo, "when call evalStr() with variable modifications" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " (define x 1)     x " ).should == "1"
    @nendo.evalStr( " (define x 2)     x " ).should == "2"
    @nendo.evalStr( " (define x 100)   x " ).should == "100"
    @nendo.evalStr( " (define x true)  x " ).should == "#t"
    @nendo.evalStr( " (define x false) x " ).should == "#f"
    @nendo.evalStr( " (define x nil) x " ).should   == "nil"
    @nendo.evalStr( " (define x '()) x " ).should   == "()"
    @nendo.evalStr( " (define x '(1)) x " ).should   == "(1)"
    @nendo.evalStr( " (define x (+ 1 2 3)) x " ).should   == "6"
    @nendo.evalStr( " (define x (sprintf \"$%02X\" 17))    x  x  x " ).should   == '"$11"'
    @nendo.evalStr( " 1 2 3 " ).should   == "3"
    @nendo.evalStr( " (define x 3.14)  (set! x (* x 2))          x " ).should   == "6.28"
    @nendo.evalStr( " 1 \n 2 \n 3 \n " ).should   == "3"
    @nendo.evalStr( " (define a '(1 . 2))  (set-car! a 100)      a " ).should   == "(100 . 2)"
    @nendo.evalStr( " (define a '(1 . 2))  (set-car! a '())      a " ).should   == "(() . 2)"
    @nendo.evalStr( " (define a '(1 . 2))  (set-car! a #t)       a " ).should   == "(#t . 2)"
    @nendo.evalStr( " (define a '(1 . 2))  (set-car! a #f)       a " ).should   == "(#f . 2)"
    @nendo.evalStr( " (define a '(1 . 2))  (set-car! a nil)      a " ).should   == "(nil . 2)"
    @nendo.evalStr( " (define a '(1 . 2))  (set-cdr! a 200)      a " ).should   == "(1 . 200)"
    @nendo.evalStr( " (define a '(1 . 2))  (set-cdr! a '(2))     a " ).should   == "(1 2)"
    @nendo.evalStr( " (define a '(1 . 2))  (set-cdr! a '())      a " ).should   == "(1)"
    @nendo.evalStr( " (define a '(1 . 2))  (set-cdr! a #t)       a " ).should   == "(1 . #t)"
    @nendo.evalStr( " (define a '(1 . 2))  (set-cdr! a #f)       a " ).should   == "(1 . #f)"
    @nendo.evalStr( " (define a '(1 . 2))  (set-cdr! a nil)      a " ).should   == "(1 . nil)"
    @nendo.evalStr( " (define a '((1 . 2) 3))    (set-car! (car a) 100)      a " ).should   == "((100 . 2) 3)"
    @nendo.evalStr( " (define a '((1 . 2) 3))    (set-cdr! (car a) 200)      a " ).should   == "((1 . 200) 3)"
    @nendo.evalStr( " (define a '((1 . 2) . 3))  (set-cdr! a 300)            a " ).should   == "((1 . 2) . 300)"
  end
end

describe Nendo, "when call evalStr() with undefined variable" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    lambda { @nendo.evalStr( " true " ) }.should_not                   raise_error
    lambda { @nendo.evalStr( " false " ) }.should_not                  raise_error
    lambda { @nendo.evalStr( " nil " ) }.should_not                    raise_error
    lambda { @nendo.evalStr( " line1 " ) }.should                      raise_error( NameError )
    lambda { @nendo.evalStr( " true \n line2 " ) }.should              raise_error( NameError )
    lambda { @nendo.evalStr( " true \n true \n line3 " ) }.should      raise_error( NameError )
    lambda { @nendo.evalStr( " (+ 1 x) " ) }.should                    raise_error( NameError )
    lambda { @nendo.evalStr( " true \n (+ 1 y) " ) }.should            raise_error( NameError )
  end
end

describe Nendo, "when call evalStr() with built-in special forms" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " (begin 1) " ).should == "1"
    @nendo.evalStr( " (begin 1 2) " ).should == "2"
    @nendo.evalStr( " (begin 1 2 3) " ).should == "3"
    @nendo.evalStr( " (set! x 2) (set! y (begin (set! x (* x 2)) (set! x (* x 2)) (set! x (* x 2)) 100))  (+ x y)" ).should == "116"
    @nendo.evalStr( " (let ()                 100) " ).should == "100"
    @nendo.evalStr( " (let ((a 11))           a) " ).should == "11"
    @nendo.evalStr( " (let ((a 11) (b 22))    (+ a b)) " ).should == "33"
    @nendo.evalStr( " (let ((a 22)) (let ((b 33))   (+ a b))) " ).should == "55"
    @nendo.evalStr( " (let ((a 22)(b 33)) (let ((c 44) (d 55))   (+ a b c d))) " ).should == "154"
    @nendo.evalStr( " (let  ((a (let ((b 2))   (+ 100 b))))  a) " ).should == "102"
    @nendo.evalStr( " (letrec ()                 100) " ).should == "100"
    @nendo.evalStr( " (letrec ((a 11))           a) " ).should == "11"
    @nendo.evalStr( " (letrec ((a 11) (b 22))    (+ a b)) " ).should == "33"
    @nendo.evalStr( " (letrec ((a 22)) (let ((b 33))   (+ a b))) " ).should == "55"
    @nendo.evalStr( " (letrec ((a 22)(b 33)) (let ((c 44) (d 55))   (+ a b c d))) " ).should == "154"
    @nendo.evalStr( " (letrec  ((a (let ((b 2))   (+ 100 b))))  a) " ).should == "102"
    @nendo.evalStr( " (letrec ( (func1 (lambda (x) 13))             (func2 (lambda (x) (* 2 (func1))))  )     (list (func2) (func1))) " ).should == "(26 13)"
    @nendo.evalStr( " (letrec ( (func2 (lambda (x) (* 2 (func1))))  (func1 (lambda (x) 7))              )     (list (func2) (func1))) " ).should == "(14 7)"
    @nendo.evalStr( " (if true   't 'f)" ).should == "t"
    @nendo.evalStr( " (if true   '(1) '(2))" ).should == "(1)"
    @nendo.evalStr( " (if false  't 'f)" ).should == "f"
    @nendo.evalStr( " (if false  '(1) '(2))" ).should == "(2)"
    @nendo.evalStr( " (set! x 0) (if true  (set! x 1) (set! x 2))   x" ).should == "1"
    @nendo.evalStr( " (set! x 0) (if false (set! x 1) (set! x 2))   x" ).should == "2"
    @nendo.evalStr( " (set! func (lambda (arg1) arg1))              (list (func 1) (func 2))" ).should == "(1 2)"
    @nendo.evalStr( " ((lambda (arg1) arg1)  3)" ).should == "3" 
    @nendo.evalStr( " ((lambda (arg1) arg1)  (+ 1 2 3))" ).should == "6" 
    @nendo.evalStr( " ((if #t + *) 3 4)" ).should == "7" 
    @nendo.evalStr( " ((if #f + *) 3 4)" ).should == "12" 
    @nendo.evalStr( " (apply1 + '(1 2))" ).should == "3" 
    @nendo.evalStr( " (apply1 + (range 10 1))" ).should == "55"
    @nendo.evalStr( " (apply1 cons '(1 2))" ).should == "(1 . 2)"
    @nendo.evalStr( " (apply1 list '(1 2 3))" ).should == "(1 2 3)"
    lambda { @nendo.evalStr( " (error \"My Runtime Error\") " ) }.should            raise_error( RuntimeError )
  end
end

describe Nendo, "when call evalStr() with built-in special forms (renamed symbol)" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " (/nendo/macroenv/begin 1) " ).should == "1"
    @nendo.evalStr( " (/nendo/macroenv/begin 1 2) " ).should == "2"
    @nendo.evalStr( " (/nendo/macroenv/begin 1 2 3) " ).should == "3"
    @nendo.evalStr( " (/nendo/macroenv/set! x 2) (/nendo/macroenv/set! y (/nendo/macroenv/begin (/nendo/macroenv/set! x (* x 2)) (/nendo/macroenv/set! x (* x 2)) (/nendo/macroenv/set! x (* x 2)) 100))  (+ x y)" ).should == "116"
    @nendo.evalStr( " (/nendo/macroenv/let ()                 100) " ).should == "100"
    @nendo.evalStr( " (/nendo/macroenv/let ((a 11))           a) " ).should == "11"
    @nendo.evalStr( " (/nendo/macroenv/let ((a 11) (b 22))    (+ a b)) " ).should == "33"
    @nendo.evalStr( " (/nendo/macroenv/let ((a 22)) (let ((b 33))   (+ a b))) " ).should == "55"
    @nendo.evalStr( " (/nendo/macroenv/let ((a 22)(b 33)) (let ((c 44) (d 55))   (+ a b c d))) " ).should == "154"
    @nendo.evalStr( " (/nendo/macroenv/let  ((a (let ((b 2))   (+ 100 b))))  a) " ).should == "102"
    @nendo.evalStr( " (/nendo/macroenv/letrec ()                 100) " ).should == "100"
    @nendo.evalStr( " (/nendo/macroenv/letrec ((a 11))           a) " ).should == "11"
    @nendo.evalStr( " (/nendo/macroenv/letrec ((a 11) (b 22))    (+ a b)) " ).should == "33"
    @nendo.evalStr( " (/nendo/macroenv/letrec ((a 22)) (let ((b 33))   (+ a b))) " ).should == "55"
    @nendo.evalStr( " (/nendo/macroenv/letrec ((a 22)(b 33)) (let ((c 44) (d 55))   (+ a b c d))) " ).should == "154"
    @nendo.evalStr( " (/nendo/macroenv/letrec  ((a (let ((b 2))   (+ 100 b))))  a) " ).should == "102"
    @nendo.evalStr( " (/nendo/macroenv/letrec ( (func1 (/nendo/macroenv/lambda (x) 13))             (func2 (/nendo/macroenv/lambda (x) (* 2 (func1))))  )     (list (func2) (func1))) " ).should == "(26 13)"
    @nendo.evalStr( " (/nendo/macroenv/letrec ( (func2 (/nendo/macroenv/lambda (x) (* 2 (func1))))  (func1 (/nendo/macroenv/lambda (x) 7))              )     (list (func2) (func1))) " ).should == "(14 7)"
    @nendo.evalStr( " (/nendo/macroenv/if true   't 'f)" ).should == "t"
    @nendo.evalStr( " (/nendo/macroenv/if true   '(1) '(2))" ).should == "(1)"
    @nendo.evalStr( " (/nendo/macroenv/if false  't 'f)" ).should == "f"
    @nendo.evalStr( " (/nendo/macroenv/if false  '(1) '(2))" ).should == "(2)"
    @nendo.evalStr( " (/nendo/macroenv/set! x 0) (/nendo/macroenv/if true  (set! x 1) (set! x 2))   x" ).should == "1"
    @nendo.evalStr( " (/nendo/macroenv/set! x 0) (/nendo/macroenv/if false (set! x 1) (set! x 2))   x" ).should == "2"
    @nendo.evalStr( " (/nendo/macroenv/set! func (/nendo/macroenv/lambda (arg1) arg1))              (list (func 1) (func 2))" ).should == "(1 2)"
    @nendo.evalStr( " ((/nendo/macroenv/lambda (arg1) arg1)  3)" ).should == "3" 
    @nendo.evalStr( " ((/nendo/macroenv/lambda (arg1) arg1)  (+ 1 2 3))" ).should == "6" 
    @nendo.evalStr( " ((/nendo/macroenv/if #t + *) 3 4)" ).should == "7" 
    @nendo.evalStr( " ((/nendo/macroenv/if #f + *) 3 4)" ).should == "12" 
    lambda { @nendo.evalStr( " (/nendo/macroenv/error \"My Runtime Error\") " ) }.should            raise_error( RuntimeError )
  end
end


describe Nendo, "when call evalStr() with global and lexical scope variable" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " (define var 111) " ).should == "111"
    @nendo.evalStr( " (let ((var 222)) var) " ).should == "222"
    @nendo.evalStr( " (let ((var 222)) (set! var 333) var) " ).should == "333"
    @nendo.evalStr( " (let ((var 222)) (set! var 333)) var " ).should == "111"
    @nendo.evalStr( " (define global1 \"G\") " ).should == '"G"'
    @nendo.evalStr( " " +
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

describe Nendo, "when call evalStr() with macroexpand-1 function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evalStr( " (set! twice (macro (x) (list 'begin x x)))           (macroexpand-1 '(twice (+ 1 1))) " ).should == "(begin (+ 1 1) (+ 1 1))"
    @nendo.evalStr( " (set! inc (macro (x) (list 'set! x (list '+ x 1))))  (macroexpand-1 '(inc a)) " ).should == "(set! a (+ a 1))"
    @nendo.evalStr( " (set! a 10) (inc a) " ).should == "11"
    @nendo.evalStr( " (set! a 10) (inc a) (inc a)" ).should == "12"
    @nendo.evalStr( " (macroexpand-1 '(twice (twice (inc a))))" ).should ==
      "(begin (twice (inc a)) (twice (inc a)))"
    @nendo.evalStr( " (macroexpand-1 (macroexpand-1 '(twice (twice (inc a)))))" ).should ==
      "(begin (begin (inc a) (inc a)) (begin (inc a) (inc a)))"
    @nendo.evalStr( " (macroexpand-1 (macroexpand-1 (macroexpand-1 '(twice (twice (inc a))))))" ).should ==
      "(begin (begin (set! a (+ a 1)) (set! a (+ a 1))) (begin (inc a) (inc a)))"
    @nendo.evalStr( " (macroexpand-1 (macroexpand-1 (macroexpand-1 (macroexpand-1 '(twice (twice (inc a)))))))" ).should ==
      "(begin (begin (set! a (+ a 1)) (set! a (+ a 1))) (begin (set! a (+ a 1)) (set! a (+ a 1))))"
    @nendo.evalStr( " (set! a 10) (twice (twice (inc a)))" ).should == "14"
  end
end


describe Nendo, "when use #xxxx syntax " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " #t " ).should == "#t"
    @nendo.evalStr( " #f " ).should == "#f"
    @nendo.evalStr( " '#( 1 ) " ).should == "#(1)"
    @nendo.evalStr( " '#() " ).should == "#()"
    @nendo.evalStr( " #!        \n #t" ).should == "#t"
    @nendo.evalStr( " #!        \n 100" ).should == "100"
    @nendo.evalStr( " #!   123  \n 100" ).should == "100"
    @nendo.evalStr( " '#?=1" ).should == "(debug-print 1 \"(string)\" 1 '1)"
    @nendo.evalStr( " #b0  " ).should == Integer("0b0").to_s
    @nendo.evalStr( " #b01 " ).should == Integer("0b01").to_s
    @nendo.evalStr( " #b10 " ).should == Integer("0b10").to_s
    @nendo.evalStr( " #b00000001 " ).should         == Integer("0b00000001").to_s
    @nendo.evalStr( " #b1010101010101010 " ).should == Integer("0b1010101010101010").to_s
    lambda { @nendo.evalStr( " #b2 " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.evalStr( " #b02 " ) }.should     raise_error(RuntimeError)
    lambda { @nendo.evalStr( " #bF " ) }.should      raise_error(RuntimeError)
    @nendo.evalStr( " #o0  " ).should  == Integer("0o0").to_s
    @nendo.evalStr( " #o7  " ).should  == Integer("0o7").to_s
    @nendo.evalStr( " #o01 " ).should  == Integer("0o01").to_s
    @nendo.evalStr( " #o10 " ).should  == Integer("0o10").to_s
    @nendo.evalStr( " #o777 " ).should == Integer("0o777").to_s
    @nendo.evalStr( " #o00000007 " ).should         == Integer("0o00000007").to_s
    @nendo.evalStr( " #o0123456701234567 " ).should == Integer("0o0123456701234567").to_s
    lambda { @nendo.evalStr( " #o8 " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.evalStr( " #o08 " ) }.should     raise_error(RuntimeError)
    lambda { @nendo.evalStr( " #oA " ) }.should      raise_error(RuntimeError)
    @nendo.evalStr( " #d0  " ).should  == Integer("0d0").to_s
    @nendo.evalStr( " #d9  " ).should  == Integer("0d9").to_s
    @nendo.evalStr( " #d01 " ).should  == Integer("0d01").to_s
    @nendo.evalStr( " #d10 " ).should  == Integer("0d10").to_s
    @nendo.evalStr( " #d999 " ).should == Integer("0d999").to_s
    @nendo.evalStr( " #d00000009 " ).should         == Integer("0d00000009").to_s
    @nendo.evalStr( " #d0123456701234567 " ).should == Integer("0d0123456701234567").to_s
    lambda { @nendo.evalStr( " #dA " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.evalStr( " #dF " ) }.should      raise_error(RuntimeError)
    @nendo.evalStr( " #x0  " ).should  == Integer("0x0").to_s
    @nendo.evalStr( " #x9  " ).should  == Integer("0x9").to_s
    @nendo.evalStr( " #xA  " ).should  == Integer("0xA").to_s
    @nendo.evalStr( " #xF  " ).should  == Integer("0xF").to_s
    @nendo.evalStr( " #x01 " ).should  == Integer("0x01").to_s
    @nendo.evalStr( " #x10 " ).should  == Integer("0x10").to_s
    @nendo.evalStr( " #xFFF " ).should == Integer("0xFFF").to_s
    @nendo.evalStr( " #x0000000F " ).should         == Integer("0x0000000F").to_s
    @nendo.evalStr( " #x0123456789ABCDEF0123456789ABCDEF " ).should == Integer("0x0123456789ABCDEF0123456789ABCDEF").to_s
    lambda { @nendo.evalStr( " #xg " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.evalStr( " #xh " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.evalStr( " #xz " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.evalStr( " #xG " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.evalStr( " #xH " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.evalStr( " #xZ " ) }.should      raise_error(RuntimeError)
    lambda { @nendo.evalStr( " #a " ) }.should       raise_error(NameError)
    lambda { @nendo.evalStr( " #c " ) }.should       raise_error(NameError)
    lambda { @nendo.evalStr( " #e " ) }.should       raise_error(NameError)
    lambda { @nendo.evalStr( " #tt " ) }.should      raise_error(NameError)
    lambda { @nendo.evalStr( " #ff " ) }.should      raise_error(NameError)
    lambda { @nendo.evalStr( " #abc " ) }.should     raise_error(NameError)
    lambda { @nendo.evalStr( " #? " ) }.should       raise_error(NameError)
    lambda { @nendo.evalStr( " #?a " ) }.should      raise_error(NameError)
    lambda { @nendo.evalStr( " #= " ) }.should       raise_error(NameError)
    lambda { @nendo.evalStr( " #?? " ) }.should      raise_error(NameError)
  end
end

describe Nendo, "when use regexp litteral and library functions " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " #/abc/ " ).should                                       == "#/abc/"
    @nendo.evalStr( " #/[a-z]/ " ).should                                     == "#/[a-z]/"
    @nendo.evalStr( " #/[a-zA-Z0-9]+/ " ).should                              == "#/[a-zA-Z0-9]+/"
    @nendo.evalStr( ' #/\d/ ' ).should                                        == '#/\d/'
    @nendo.evalStr( ' #/[\/]/ ' ).should                                      == '#/[\/]/'
    @nendo.evalStr( ' #/\]/ ' ).should                                        == '#/\]/'
    @nendo.evalStr( ' #/^\]/ ' ).should                                       == '#/^\]/'
    @nendo.evalStr( ' #/\[/ ' ).should                                        == '#/\[/'
    @nendo.evalStr( ' #/^\[/ ' ).should                                       == '#/^\[/'
    @nendo.evalStr( ' #/\.\^\$\/\+\-\(\)\|/ ' ).should                        == '#/\.\^\$\/\+\-\(\)\|/'
    @nendo.evalStr( " #/abc/i " ).should                                      == "#/abc/i"
    @nendo.evalStr( " #/[a-z]/i " ).should                                    == "#/[a-z]/i"
    lambda { @nendo.evalStr( " #/[a-z]/I " ) }.should                         raise_error(NameError)
    lambda { @nendo.evalStr( " #/[a-z]/a " ) }.should                         raise_error(NameError)
    
    @nendo.evalStr( ' (string->regexp "abc") ' ).should                       == '#/abc/'
    @nendo.evalStr( ' (string->regexp "[a-z]") ' ).should                     == '#/[a-z]/'
    @nendo.evalStr( ' (string->regexp "[a-zA-Z0-9]+" ) ' ).should             == '#/[a-zA-Z0-9]+/'
    @nendo.evalStr( ' (string->regexp "\\\\d" ) ' ).should                    == '#/\d/'
    @nendo.evalStr( " (regexp? #/str/ ) " ).should                            == "#t"
    @nendo.evalStr( " (regexp? #/str/i ) " ).should                           == "#t"
    @nendo.evalStr( " (regexp? \"str\" ) " ).should                           == "#f"
    @nendo.evalStr( " (regexp? 'str) " ).should                               == "#f"
    @nendo.evalStr( " (regexp? (. \"str\" intern)) " ).should                 == "#f"
    @nendo.evalStr( " (regexp? 100) " ).should                                == "#f"

    @nendo.evalStr( " (regexp->string #/abc/ ) " ).should                     == '"abc"'
    @nendo.evalStr( " (regexp->string #/[a-z]/ ) " ).should                   == '"[a-z]"'
    @nendo.evalStr( " (regexp->string #/[a-zA-Z0-9]+/ ) " ).should            == '"[a-zA-Z0-9]+"'
    @nendo.evalStr( ' (regexp->string #/\d+/ ) ' ).should                     == '"\\\\d+"'

    @nendo.evalStr( ' (define matchdata (rxmatch #/(\d+):(\d+)/ "foo314:2000bar")) ' ).should           == '314:2000'
    @nendo.evalStr( ' (rxmatch-start      matchdata) ' ).should                                         == '3'
    @nendo.evalStr( ' (rxmatch-start      matchdata 0) ' ).should                                       == '3'
    @nendo.evalStr( ' (rxmatch-start      matchdata 1) ' ).should                                       == '3'
    @nendo.evalStr( ' (rxmatch-start      matchdata 2) ' ).should                                       == '7'
    @nendo.evalStr( ' (rxmatch-end        matchdata) ' ).should                                         == '11'
    @nendo.evalStr( ' (rxmatch-end        matchdata 0) ' ).should                                       == '11'
    @nendo.evalStr( ' (rxmatch-end        matchdata 1) ' ).should                                       == '6'
    @nendo.evalStr( ' (rxmatch-end        matchdata 2) ' ).should                                       == '11'
    @nendo.evalStr( ' (rxmatch-substring  matchdata) ' ).should                                         == '"314:2000"'
    @nendo.evalStr( ' (rxmatch-substring  matchdata 0) ' ).should                                       == '"314:2000"'
    @nendo.evalStr( ' (rxmatch-substring  matchdata 1) ' ).should                                       == '"314"'
    @nendo.evalStr( ' (rxmatch-substring  matchdata 2) ' ).should                                       == '"2000"'
    @nendo.evalStr( ' (rxmatch-num-matches matchdata) ' ).should                                        == '3'

    @nendo.evalStr( ' (define matchdata (rxmatch #/(\w+)@([\w.]+)/ "foo@example.com")) ' ).should       == 'foo@example.com'
    @nendo.evalStr( ' (rxmatch-substring  matchdata) ' ).should                                         == '"foo@example.com"'
    @nendo.evalStr( ' (rxmatch-substring  matchdata 0) ' ).should                                       == '"foo@example.com"'
    @nendo.evalStr( ' (rxmatch-substring  matchdata 1) ' ).should                                       == '"foo"'
    @nendo.evalStr( ' (rxmatch-substring  matchdata 2) ' ).should                                       == '"example.com"'

    @nendo.evalStr( ' (rxmatch->string #/(\w+)@([\w.]+)/ "foo@example.com")' ).should                   == '"foo@example.com"'
    @nendo.evalStr( ' (rxmatch->string #/(\w+)@([\w.]+)/ "foo@example.com" 0)' ).should                 == '"foo@example.com"'
    @nendo.evalStr( ' (rxmatch->string #/(\w+)@([\w.]+)/ "foo@example.com" 1)' ).should                 == '"foo"'
    @nendo.evalStr( ' (rxmatch->string #/(\w+)@([\w.]+)/ "foo@example.com" 2)' ).should                 == '"example.com"'

    @nendo.evalStr( ' (rxmatch->string #/abc/  "000abc00ABC000")' ).should                              == '"abc"'
    @nendo.evalStr( ' (rxmatch->string #/ABC/  "000abc00ABC000")' ).should                              == '"ABC"'
    @nendo.evalStr( ' (rxmatch->string #/abc/i "abc")' ).should                                         == '"abc"'
    @nendo.evalStr( ' (rxmatch->string #/abc/i "ABC")' ).should                                         == '"ABC"'
    @nendo.evalStr( ' (rxmatch->string #/ABC/i "abc")' ).should                                         == '"abc"'
    @nendo.evalStr( ' (rxmatch->string #/abc/i "AbC")' ).should                                         == '"AbC"'

    @nendo.evalStr( ' (rxmatch            #/abc/i "xxx")' ).should                                         == '#f'
    @nendo.evalStr( ' (rxmatch            #/XXX/  "xxx")' ).should                                         == '#f'
    @nendo.evalStr( ' (rxmatch->string    #/abc/i "xxx")' ).should                                         == '#f'
    @nendo.evalStr( ' (rxmatch->string    #/XXX/  "xxx")' ).should                                         == '#f'

    pending( "JRuby can't compute correctly" ) if defined? JRUBY_VERSION
    @nendo.evalStr( ' (define matchdata (rxmatch #/([あ-ん])([あ-ん])([あ-ん])([あ-ん])([あ-ん])/ "ABC漢字あいうえお漢字ABC")) ' ).should  == 'あいうえお'
    @nendo.evalStr( ' (rxmatch-start      matchdata) ' ).should                                         == '5'
    @nendo.evalStr( ' (rxmatch-end        matchdata) ' ).should                                         == '10'
    @nendo.evalStr( ' (rxmatch-substring  matchdata) ' ).should                                         == '"あいうえお"'
    @nendo.evalStr( ' (rxmatch-substring  matchdata 1) ' ).should                                       == '"あ"'
    @nendo.evalStr( ' (rxmatch-substring  matchdata 2) ' ).should                                       == '"い"'
    @nendo.evalStr( ' (rxmatch-substring  matchdata 3) ' ).should                                       == '"う"'
  end
end


describe Nendo, "when call functions in init.nnd " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
    @nendo.loadInitFile  # to self optimizing.  The init.nnd file will be loaded twice, so `map' can be optimized on second loading phase.
  end
  it "should" do
    @nendo.evalStr( " (cadr '(1 2 3 4)) " ).should == "2"
    @nendo.evalStr( " (caddr '(1 2 3 4)) " ).should == "3"
    @nendo.evalStr( " (cadddr '(1 2 3 4)) " ).should == "4"
    @nendo.evalStr( " (caar '((5 6 7 8))) " ).should == "5"
    @nendo.evalStr( " (cdar '((5 6 7 8))) " ).should == "(6 7 8)"
    @nendo.evalStr( " (cadar '((5 6 7 8))) " ).should == "6"
    @nendo.evalStr( " (cddar '((5 6 7 8))) " ).should == "(7 8)"
    @nendo.evalStr( " (iota 1) " ).should == "(0)"
    @nendo.evalStr( " (iota 3) " ).should == "(0 1 2)"
    @nendo.evalStr( " (append '() '()) " ).should == "()"
    @nendo.evalStr( " (append '(1) '()) " ).should == "(1)"
    @nendo.evalStr( " (append '() '(2)) " ).should == "(2)"
    @nendo.evalStr( " (append '(1) '(2)) " ).should == "(1 2)"
    @nendo.evalStr( " (append '(1 2) '(3 4)) " ).should == "(1 2 3 4)"
    @nendo.evalStr( " (pair? '()) " ).should == "#f"
    @nendo.evalStr( " (pair? '(1)) " ).should == "#t"
    @nendo.evalStr( " (pair? '(1 2)) " ).should == "#t"
    @nendo.evalStr( " (pair? '(1 2 3)) " ).should == "#t"
    @nendo.evalStr( " (pair? '(1 . 2)) " ).should == "#t"
    @nendo.evalStr( " (pair? '(())) " ).should == "#t"
    @nendo.evalStr( " (pair? 1) " ).should == "#f"
    @nendo.evalStr( " (pair? \"str\") " ).should == "#f"
    @nendo.evalStr( " (list? '()) " ).should == "#t"
    @nendo.evalStr( " (list? '(1)) " ).should == "#t"
    @nendo.evalStr( " (list? '(1 2)) " ).should == "#t"
    @nendo.evalStr( " (list? '(1 2 3)) " ).should == "#t"
    @nendo.evalStr( " (list? '(1 . 2)) " ).should == "#f"
    @nendo.evalStr( " (list? '(1 2 . 3)) " ).should == "#f"
    @nendo.evalStr( " (list? '(())) " ).should == "#t"
    @nendo.evalStr( " (list? 1) " ).should == "#f"
    @nendo.evalStr( " (list? \"str\") " ).should == "#f"
    @nendo.evalStr( " (even? 2) " ).should == "#t"
    @nendo.evalStr( " (even? 1) " ).should == "#f"
    @nendo.evalStr( " (even? 0) " ).should == "#t"
    @nendo.evalStr( " (even? -1) " ).should == "#f"
    @nendo.evalStr( " (even? -2) " ).should == "#t"
    @nendo.evalStr( " (odd? 2) " ).should == "#f"
    @nendo.evalStr( " (odd? 1) " ).should == "#t"
    @nendo.evalStr( " (odd? 0) " ).should == "#f"
    @nendo.evalStr( " (odd? -1) " ).should == "#t"
    @nendo.evalStr( " (odd? -2) " ).should == "#f"
    @nendo.evalStr( " (zero? 0) " ).should == "#t"
    @nendo.evalStr( " (zero? #f) " ).should == "#f"
    @nendo.evalStr( " (zero? #t) " ).should == "#f"
    @nendo.evalStr( " (zero? 1) " ).should == "#f"
    @nendo.evalStr( " (zero? 2) " ).should == "#f"
    @nendo.evalStr( " (zero? -1) " ).should == "#f"
    @nendo.evalStr( " (zero? \"str\") " ).should == "#f"
    @nendo.evalStr( " (zero? zero?) " ).should == "#f"
    @nendo.evalStr( " (positive? 1) " ).should == "#t"
    @nendo.evalStr( " (positive? 0) " ).should == "#f"
    @nendo.evalStr( " (positive? -1) " ).should == "#f"
    @nendo.evalStr( " (negative? 1) " ).should == "#f"
    @nendo.evalStr( " (negative? 0) " ).should == "#f"
    @nendo.evalStr( " (negative? -1) " ).should == "#t"
    @nendo.evalStr( " (abs -1) " ).should == "1"
    @nendo.evalStr( " (abs 1) " ).should == "1"
    @nendo.evalStr( " (abs -1000) " ).should == "1000"
    @nendo.evalStr( " (abs 1000) " ).should == "1000"
    @nendo.evalStr( " (max -2 1 0 1 2 3 4 5) " ).should == "5"
    @nendo.evalStr( " (max 5 4 3 2 1 0 -1 -2) " ).should == "5"
    @nendo.evalStr( " (max 1000000000 10 -10000) " ).should == "1000000000"
    @nendo.evalStr( " (min -2 1 0 1 2 3 4 5) " ).should == "-2"
    @nendo.evalStr( " (min 5 4 3 2 1 0 -1 -2) " ).should == "-2"
    @nendo.evalStr( " (min 1000000000 10 -10000) " ).should == "-10000"
    @nendo.evalStr( " (succ -1) " ).should == "0"
    @nendo.evalStr( " (succ 0) " ).should == "1"
    @nendo.evalStr( " (succ 1) " ).should == "2"
    @nendo.evalStr( " (pred -1) " ).should == "-2"
    @nendo.evalStr( " (pred 0) " ).should == "-1"
    @nendo.evalStr( " (pred 1) " ).should == "0"
    @nendo.evalStr( " (pred 2) " ).should == "1"
    @nendo.evalStr( " (min 1000000000 10 -10000) " ).should == "-10000"
    @nendo.evalStr( " (nth 0  '(100 200 300)) " ).should == "100"
    @nendo.evalStr( " (nth 1  '(100 200 300)) " ).should == "200"
    @nendo.evalStr( " (nth 2  '(100 200 300)) " ).should == "300"
    @nendo.evalStr( " (nth 3  '(100 200 300)) " ).should == "()"
    @nendo.evalStr( " (nth -1 '(100 200 300)) " ).should == "()"
    @nendo.evalStr( " (first   '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "100"
    @nendo.evalStr( " (second  '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "200"
    @nendo.evalStr( " (third   '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "300"
    @nendo.evalStr( " (fourth  '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "400"
    @nendo.evalStr( " (fifth   '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "500"
    @nendo.evalStr( " (sixth   '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "600"
    @nendo.evalStr( " (seventh '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "700"
    @nendo.evalStr( " (eighth  '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "800"
    @nendo.evalStr( " (ninth   '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "900"
    @nendo.evalStr( " (tenth   '(100 200 300 400 500 600 700 800 900 1000)) " ).should == "1000"
    @nendo.evalStr( " (first   '()) " ).should == "()"
    @nendo.evalStr( " (tenth   '()) " ).should == "()"
    @nendo.evalStr( " (to-s      10) " ).should == '"10"'
    @nendo.evalStr( " (to_s      10) " ).should == '"10"'
    @nendo.evalStr( " (x->string 10) " ).should == '"10"'
    @nendo.evalStr( " (number->string 11) " ).should == '"11"'
    @nendo.evalStr( " (to-s      2.1) " ).should == '"2.1"'
    @nendo.evalStr( " (to_s      2.1) " ).should == '"2.1"'
    @nendo.evalStr( " (x->string 2.1) " ).should == '"2.1"'
    @nendo.evalStr( " (number->string 2.2) " ).should == '"2.2"'
    @nendo.evalStr( ' (string-append) ' ).should == '""'
    @nendo.evalStr( ' (string-append "a") ' ).should == '"a"'
    @nendo.evalStr( ' (string-append "a" "b") ' ).should == '"ab"'
    @nendo.evalStr( ' (string-append "a" "B" "c" "D" "e") ' ).should == '"aBcDe"'
    @nendo.evalStr( " (to_i    \"22\") " ).should == '22'
    @nendo.evalStr( " (to-i    \"22\") " ).should == '22'
    @nendo.evalStr( " (to_i    \"10000\") " ).should == '10000'
    @nendo.evalStr( " (to-i    \"10000\") " ).should == '10000'
    @nendo.evalStr( " (let1 aaa 111 aaa) " ).should == "111"
    @nendo.evalStr( " (let1 aaa (+ 2 3) aaa) " ).should == "5"
    @nendo.evalStr( " (let1 aaa 333 (let1 bbb 444 (+ aaa bbb))) " ).should == "777"
    @nendo.evalStr( " (let1 aaa 333 (let1 bbb 444 (set! bbb 555) (+ aaa bbb))) " ).should == "888"
    @nendo.evalStr( " (let1 v (map (lambda (x) x) '(1 2 3))  v) " ).should == "(1 2 3)"
    @nendo.evalStr( " (let  ((v (map (lambda (x) x) '(1 2 3)))) v) " ).should == "(1 2 3)"
    @nendo.evalStr( " (cond (true  1) (false 2)) " ).should == "1"
    @nendo.evalStr( " (cond (true   ) (false  )) " ).should == "#t"
    @nendo.evalStr( " (cond (false 1) (true  2)) " ).should == "2"
    @nendo.evalStr( " (cond (true  1) (true  2)) " ).should == "1"
    @nendo.evalStr( " (cond (false 1) (false 2)) " ).should == "()"
    @nendo.evalStr( " (cond (false 1) (false 2) (else 3)) " ).should == "3"
    @nendo.evalStr( " (cond ((- 10 9) => (lambda (x) (+ \"<\" (to_s x) \">\"))) (else 2)) " ).should == '"<1>"'
    @nendo.evalStr( " (cond (true  1) ((- 10 8) => (lambda (x) (+ \"<\" (to_s x) \">\"))) (else 3)) " ).should == "1"
    @nendo.evalStr( " (or) " ).should == "#f"
    @nendo.evalStr( " (or true) " ).should == "#t"
    @nendo.evalStr( " (or false) " ).should == "#f"
    @nendo.evalStr( " (or nil) " ).should == "#f"
    @nendo.evalStr( " (or '(1)) " ).should == "(1)"
    @nendo.evalStr( " (or '()) " ).should == "()"
    @nendo.evalStr( " (or true true true) " ).should == "#t"
    @nendo.evalStr( " (or 1 2 3) " ).should == "1"
    @nendo.evalStr( " (or false 2) " ).should == "2"
    @nendo.evalStr( " (or false false 3) " ).should == "3"
    @nendo.evalStr( " (or false '(2) false) " ).should == "(2)"
    @nendo.evalStr( " (and) " ).should == "#t"
    @nendo.evalStr( " (and true) " ).should == "#t"
    @nendo.evalStr( " (and false) " ).should == "#f"
    @nendo.evalStr( " (and nil) " ).should == "nil"
    @nendo.evalStr( " (and '(1)) " ).should == "(1)"
    @nendo.evalStr( " (and '()) " ).should == "()"
    @nendo.evalStr( " (and true true true) " ).should == "#t"
    @nendo.evalStr( " (and 1 2 3) " ).should == "3"
    @nendo.evalStr( " (and false 2) " ).should == "#f"
    @nendo.evalStr( " (and false false 3) " ).should == "#f"
    @nendo.evalStr( " (and true  2) " ).should == "2"
    @nendo.evalStr( " (and true  true  3) " ).should == "3"
    @nendo.evalStr( " (and true  true  3 false) " ).should == "#f"
    @nendo.evalStr( " (and true '(2) true) " ).should == "#t"
    @nendo.evalStr( " (and true true '(2)) " ).should == "(2)"
    @nendo.evalStr( " (and true '(2) false) " ).should == "#f"
    @nendo.evalStr( " (define total 0) (and 1 2       (set! total (+ total 1)) (set! total (+ total 2)) 5)  total" ).should == "3"
    @nendo.evalStr( " (define total 1) (and 1 2 false (set! total (+ total 2)) (set! total (+ total 3)) 5)  total" ).should == "1"
    @nendo.evalStr( " (apply + 100 '()) " ).should == "100"
    @nendo.evalStr( " (apply + '(1 2)) " ).should == "3"
    @nendo.evalStr( " (apply + 1 2 '(3)) " ).should == "6"
    @nendo.evalStr( " (apply + 1 2 '(3 4)) " ).should == "10"
    @nendo.evalStr( " (apply + 1 2 3 '(4)) " ).should == "10"
    @nendo.evalStr( ' (apply + \'("a" "b" "c")) ' ).should == '"abc"'
    @nendo.evalStr( " (range 5) " ).should == "(0 1 2 3 4)"
    @nendo.evalStr( " (range 5 1) " ).should == "(1 2 3 4 5)"
    @nendo.evalStr( " (range 5 2) " ).should == "(2 3 4 5 6)"
    @nendo.evalStr( " (iota  5 2) " ).should == "(2 3 4 5 6)"
    @nendo.evalStr( " (apply + (range 11)) " ).should == "55"
    @nendo.evalStr( " (apply + (map (lambda (x) (+ x 1)) (range 10))) " ).should == "55"
    @nendo.evalStr( " (apply + (append (range 11) '(100))) " ).should == "155"
    @nendo.evalStr( " (map (lambda (x) 1)  '()) " ).should           == "()"
    @nendo.evalStr( " (map (lambda (x) 1) (to-list '#())) " ).should == "()"
    @nendo.evalStr( " (map (lambda (x) (* x 2)) '(1 2 3)) " ).should == "(2 4 6)"
    @nendo.evalStr( " (map (lambda (x) (+ x 1)) '(1 2 3)) " ).should == "(2 3 4)"
    @nendo.evalStr( " (map (lambda (a b)   (+ a b))   '(1 2 3) '(10 20 30)) " ).should == "(11 22 33)"
    @nendo.evalStr( " (map (lambda (a b)   (- b a))   '(1 2 3) '(10 20 30)) " ).should == "(9 18 27)"
    @nendo.evalStr( " (map (lambda (a b c) (+ a b c)) '(1 2 3) '(10 20 30) '(100 200 300)) " ).should == "(111 222 333)"
    @nendo.evalStr( " (define _result"+
                    "   (map"+
                    "    (lambda (x)"+
                    "      (* x 2))"+
                    "    (range 10000 1)))"+
                    " (list"+
                    "  (first  _result)"+
                    "  (second _result)"+
                    "  (last-pair _result))" ).should == "(2 4 (20000))"
    @nendo.evalStr( " (define _lst '())  (for-each (lambda (x) (set! _lst (cons 1 _lst)))            '())  _lst" ).should == "()"
    @nendo.evalStr( " (define _lst '())  (for-each (lambda (x) (set! _lst (cons (* x 2) _lst))) '(1 2 3))  _lst" ).should == "(6 4 2)"
    @nendo.evalStr( " (define _lst '())  (for-each (lambda (x) (set! _lst (cons (+ x 1) _lst))) '(1 2 3))  _lst" ).should == "(4 3 2)"
    @nendo.evalStr( " (define _lst '())  (for-each (lambda (a b) (set! _lst (cons (cons a b) _lst))) '(1 2 3) '(10 20 30))  _lst" ).should ==
      "((3 . 30) (2 . 20) (1 . 10))"
    @nendo.evalStr( " (define _cnt 0) (for-each   (lambda (x) (set! _cnt (+ _cnt 1))) (range 10000)) _cnt" ).should == "10000"
    @nendo.evalStr( " (filter     (lambda (x) x)             '()) " ).should      == "()"
    @nendo.evalStr( " (filter     (lambda (x) (= x 100))     '(1 2 3)) " ).should == "()"
    @nendo.evalStr( " (filter     (lambda (x) (= x 2))       '(1 2 3)) " ).should == "(2)"
    @nendo.evalStr( " (filter     (lambda (x) (not (= x 2))) '(1 2 3)) " ).should == "(1 3)"
    @nendo.evalStr( " (filter     (lambda (x) (if (= x 2) (* x 100) false))   '(1 2 3)) " ).should == "(2)"
    @nendo.evalStr( " (find       (lambda (x) (= x 100))     '(1 2 3)) " ).should == "#f"
    @nendo.evalStr( " (find       (lambda (x) (= x 2))       '(1 2 3)) " ).should == "2"
    @nendo.evalStr( " (find       (lambda (x) (not (= x 2))) '(1 2 3)) " ).should == "1"
    @nendo.evalStr( " (find       (lambda (x) (if (= x 2) (* x 100) false))   '(1 2 3)) " ).should == "2"
    @nendo.evalStr( " (eq? find any)" ).should      == "#t"
    @nendo.evalStr( " (find  even?  '(1 2 3)) " ).should == "2"
    @nendo.evalStr( " (any   even?  '(1 2 3)) " ).should == "2"
    @nendo.evalStr( " (filter-map (lambda (x) x)             '()) " ).should      == "()"
    @nendo.evalStr( " (filter-map (lambda (x) (= x 100))     '(1 2 3)) " ).should == "()"
    @nendo.evalStr( " (filter-map (lambda (x) (= x 2))       '(1 2 3)) " ).should == "(#t)"
    @nendo.evalStr( " (filter-map (lambda (x) (not (= x 2))) '(1 2 3)) " ).should == "(#t #t)"
    @nendo.evalStr( " (filter-map (lambda (x) (if (= x 2) (* x 10) false)) '(1 2 3)) " ).should == "(20)"
    @nendo.evalStr( " (filter-map (lambda (x) (if (not (= x 2)) (* x 10) false)) '(1 2 3)) " ).should == "(10 30)"
    @nendo.evalStr( " " +
                    "(let1 result '()" +
                    "  (do" +
                    "      ((i 0 (+ i 1)))" +
                    "      ((< 10 i) #f)" +
                    "    (set! result (cons i result)))" +
                    "  (reverse result))" ).should == "(0 1 2 3 4 5 6 7 8 9 10)"
    @nendo.evalStr( " " +
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
    @nendo.evalStr( " (values? (make-values '())) " ).should == "#t"
    lambda { @nendo.evalStr( " (make-values '(1))) " ) }.should        raise_error(ArgumentError)
    @nendo.evalStr( " (values? (make-values '(1 2))) " ).should == "#t"
    @nendo.evalStr( " (values? (make-values '(1 2 3))) " ).should == "#t"
    @nendo.evalStr( " (values? (values)) " ).should == "#t"
    @nendo.evalStr( " (values? (values 1)) " ).should == "#f"
    @nendo.evalStr( " (values 1) " ).should == "1"
    @nendo.evalStr( " (values? (values 1 2)) " ).should == "#t"
    @nendo.evalStr( " (values? (values 1 2 3)) " ).should == "#t"
    @nendo.evalStr( " (values? (values '(a) \"b\" '(\"C\"))) " ).should == "#t"
    @nendo.evalStr( " (values-values (values)) " ).should == "()"
    lambda { @nendo.evalStr( " (values-values (values 1)) " ) }.should     raise_error(TypeError)
    @nendo.evalStr( " (values-values (values 1 2)) " ).should == "(1 2)"
    @nendo.evalStr( " (values-values (values 1 2 3)) " ).should == "(1 2 3)"
    @nendo.evalStr( " (values-values (values '(a) \"b\" '(\"C\"))) " ).should == '((a) "b" ("C"))'
    @nendo.evalStr( "" +
                    " (call-with-values" +
                    "     (lambda () (values 4 5)) " +
                    "   (lambda (a b) b))" ).should == "5"
    @nendo.evalStr( "" +
                    " (call-with-values" +
                    "     (lambda () (values 1 2)) " +
                    "   cons)" ).should == "(1 . 2)"
    @nendo.evalStr( "" +
                    " (call-with-values" +
                    "     (lambda () (values 10)) " +
                    "   list)" ).should == "(10)"
    @nendo.evalStr( "" +
                    " (call-with-values" +
                    "     (lambda () (values)) " +
                    "   list)" ).should == "()"
    @nendo.evalStr( " (call-with-values * -) " ).should == "-1"
    @nendo.evalStr( " (receive (a)       (values)           (list a))       " ).should == "()"
    @nendo.evalStr( " (receive (a)       (values 10)        (list a))       " ).should == "(10)"
    @nendo.evalStr( " (receive (a b)     (values 10 20)     (list a b))     " ).should == "(10 20)"
    @nendo.evalStr( " (receive (a b c)   (values 10 20 30)  (list a b c))   " ).should == "(10 20 30)"
    @nendo.evalStr( " (receive (a . b)   (values 10)        (list a b))     " ).should == "(10 ())"
    @nendo.evalStr( " (receive (a . b)   (values 10 20)     (list a b))     " ).should == "(10 (20))"
    @nendo.evalStr( " (receive (a . b)   (values 10 20 30)  (list a b))     " ).should == "(10 (20 30))"
    @nendo.evalStr( " (receive all       (values)           all)            " ).should == "()"
    @nendo.evalStr( " (receive all       (values 10)        all)            " ).should == "(10)"
    @nendo.evalStr( " (receive all       (values 10 20)     all)            " ).should == "(10 20)"
    @nendo.evalStr( " (receive all       (values 10 20 30)  all)            " ).should == "(10 20 30)"
    @nendo.evalStr( " (receive (a b)     (values '(1) '(2)) (list a b))     " ).should == "((1) (2))"
    @nendo.evalStr( " (receive (a b)     (values '() '(2))  (list a b))     " ).should == "(() (2))"
    @nendo.evalStr( " (receive (a b)     (values '(1) '())  (list a b))     " ).should == "((1) ())"
    @nendo.evalStr( " (receive (a b)     (values #t #t)     (cons a b))     " ).should == "(#t . #t)"
    @nendo.evalStr( " (receive (a b)     (values #t #f)     (cons a b))     " ).should == "(#t . #f)"
    @nendo.evalStr( " (receive (a b)     (values nil #t)    (cons a b))     " ).should == "(nil . #t)"
    @nendo.evalStr( " (receive (a b)     (values nil #f)    (cons a b))     " ).should == "(nil . #f)"
    @nendo.evalStr( " (receive (a b)     (values nil nil)   (cons a b))     " ).should == "(nil . nil)"
  end
end

describe Nendo, "when toplevel variable was overwritten " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " (define a 1) a" ).should == "1"
    lambda { @nendo.evalStr( " (define (c-func) (+ a b)) (c-func)" ) }.should   raise_error( NameError )
    @nendo.evalStr( " (define b 2) b" ).should == "2"
    @nendo.evalStr( " (c-func) " ).should == "3"
    @nendo.evalStr( " (define b 20) " ).should == "20"
    @nendo.evalStr( " (c-func) " ).should == "21"

    @nendo.evalStr( " (define (a-func) 10) (a-func)" ).should == "10"
    lambda { @nendo.evalStr( " (define (c-func) (* (a-func) (b-func))) (c-func)" ) }.should   raise_error( NameError )
    @nendo.evalStr( " (define (b-func) 20)  (b-func)" ).should == "20"
    @nendo.evalStr( " (c-func) " ).should == "200"
    @nendo.evalStr( " (define (b-func) 200) (b-func)" ).should == "200"
    @nendo.evalStr( " (c-func) " ).should == "2000"
  end
end

describe Nendo, "when use quasiquote macro " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " '(a b c) " ).should == "(a b c)"
    @nendo.evalStr( " `(a b c) " ).should == "(a b c)"
    @nendo.evalStr( " `(1 2 3) " ).should == "(1 2 3)"
    @nendo.evalStr( " (set! a 3) `(1 2 ,a) " ).should == "(1 2 3)"
    @nendo.evalStr( " (set! a 3) `(1 2 ,@(list a)) " ).should == "(1 2 3)"
    @nendo.evalStr( " (set! a 3) `(1 ,@(list 2 a)) " ).should == "(1 2 3)"
    @nendo.evalStr( " (set! a 11) `,a " ).should == "11"
    @nendo.evalStr( " (set! a 12) ``,a " ).should == "`,a"
    @nendo.evalStr( ' (define str "string") str ' ).should == '"string"'
    @nendo.evalStr( ' `(,str) ' ).should == '("string")'
    @nendo.evalStr( ' `("STRING") ' ).should == '("STRING")'
    @nendo.evalStr( ' `(,str "STRING") ' ).should == '("string" "STRING")'
    @nendo.evalStr( ' `("STRING" ,str) ' ).should == '("STRING" "string")'
    @nendo.evalStr( ' (car    `("STRING" ,str)) ' ).should == '"STRING"'
    @nendo.evalStr( ' (second `("STRING" ,str)) ' ).should == '"string"'
    @nendo.evalStr( ' (caar   `(("STRING" ,str))) ' ).should == '"STRING"'
    @nendo.evalStr( ' (string-join `("A" "B" "C" "D")) ' ).should == '"ABCD"'
    @nendo.evalStr( " `(list ,(+ 1 2) 4) " ).should == "(list 3 4)"
    @nendo.evalStr( " (let ((name 'a)) `(list ,name ',name)) " ).should == "(list a 'a)"
    @nendo.evalStr( " `(a `(b ,(+ 1 2) ,(foo ,(+ 1 3) d) e) f) " ).should == "(a `(b ,(+ 1 2) ,(foo 4 d) e) f)"
    @nendo.evalStr( " `(( foo ,(- 10 3)) ,@(cdr '(c)) . ,(car '(cons))) " ).should == "((foo 7) . cons)"
  end
end

describe Nendo, "when use macros made by quasiquote. " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " (case (length '(1      )) ((1) \"one\") ((2) \"two\") (else \"else\")) " ).should == '"one"'
    @nendo.evalStr( " (case (length '(1 2    )) ((1) \"one\") ((2) \"two\") (else \"else\")) " ).should == '"two"'
    @nendo.evalStr( " (case (length '(1 2 3  )) ((1) \"one\") ((2) \"two\") (else \"else\")) " ).should == '"else"'
    @nendo.evalStr( " (case (length '(1 2 3 4)) ((1) \"one\") ((2) \"two\") (else \"else\")) " ).should == '"else"'
    @nendo.evalStr( " (case   100               ((1) \"one\") ((2) \"two\") (else \"else\")) " ).should == '"else"'
    @nendo.evalStr( " (case (car '(a b 1))      ((a) 'a) ((b) 'b) (else 'else)) "              ).should == 'a'
    @nendo.evalStr( " (case (cadr '(a b 1))     ((a) 'a) ((b) 'b) (else 'else)) "              ).should == 'b'
    @nendo.evalStr( " (case (caddr '(a b 1))    ((a b) 'a) ((1 2) 'number) (else 'else)) "     ).should == 'number'
    @nendo.evalStr( " (case (cadddr '(a b 1 2)) ((a b) 'a) ((1 2) 'number) (else 'else)) "     ).should == 'number'
    @nendo.evalStr( " (let* ((a 1)   (b (+ a 2)))  (cons a b)) " ).should == "(1 . 3)"
    @nendo.evalStr( " (let* ((a 10)  (b (* a 2)))  (cons a b)) " ).should == "(10 . 20)"
    @nendo.evalStr( " (let* ((a 10)  (b (* a 2)) (c (* b 3)))  (list a b c)) " ).should == "(10 20 60)"
    @nendo.evalStr( " (begin0 1 2 3) " ).should == "1"
    @nendo.evalStr( " (define a 2) (begin0 (set! a (* a 2)) (set! a (* a 2)) (set! a (* a 2)) ) " ).should == "4"
    @nendo.evalStr( " (begin0 100) " ).should == "100"
    @nendo.evalStr( " (begin0) " ).should == "#f"
    @nendo.evalStr( " " +
                    "(receive (a b)" +
                    "    (begin0" +
                    "      (values 1 2)" +
                    "      (values 10 20)" +
                    "      (values 100 200))" +
                    " (cons a b))" ).should == "(1 . 2)"
    @nendo.evalStr( " (macroexpand '(when #t (print \"1\") (print \"2\"))) " ).should == '(if #t (begin (print "1") (print "2")))'
    @nendo.evalStr( " (macroexpand '(unless #t (print \"1\") (print \"2\"))) " ).should == '(if (not #t) (begin (print "1") (print "2")))'
    @nendo.evalStr( " (macroexpand '(if-let1 a #t  (print \"T\")  (print \"F\"))) " ).should == '(let ((a #t)) (if a (print "T") (print "F")))'
    @nendo.evalStr( " (let1 count 0 (when   #t (set! count (+ count 1)) (set! count (+ count 1)))  count) " ).should == "2"
    @nendo.evalStr( " (let1 count 0 (when   #f (set! count (+ count 1)) (set! count (+ count 1)))  count) " ).should == "0"
    @nendo.evalStr( " (let1 count 0 (unless #t (set! count (+ count 1)) (set! count (+ count 1)))  count) " ).should == "0"
    @nendo.evalStr( " (let1 count 0 (unless #f (set! count (+ count 1)) (set! count (+ count 1)))  count) " ).should == "2"
    @nendo.evalStr( " (if-let1 m (rxmatch #/([0-9]+)/ \"abc100abc\") (rxmatch-substring m 1)) " ).should == '"100"'
  end
end

describe Nendo, "when use define and lambda macro " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " (macroexpand '(define (main argv) (newline) 0)) " ).should == "(define main (lambda (argv) (newline) 0))"
    @nendo.evalStr( " (macroexpand '(define (main argv) (define (foo x) x) (+ 10 20) 0 (foo 111))) " ).should == "(define main (lambda (argv) (letrec ((foo (lambda (x) x))) (+ 10 20) 0 (foo 111))))"
    @nendo.evalStr( " (macroexpand '(define (main argv) (define result '()) (define (foo x) x) (define val 0) (define (bar x) (+ val 10)) )) " ).should == "(define main (lambda (argv) (letrec ((result '()) (foo (lambda (x) x)) (val 0) (bar (lambda (x) (+ val 10)))))))"
    @nendo.evalStr( " (define (main argv) (define (foo x) x) (+ 10 20) 0 (foo 111)) (main) " ).should == "111"
    @nendo.evalStr( " (define (main argv) (define (foo1 x) (+ 1 x)) (define (foo2 x) (+ 2 x)) (* (foo1 20) (foo2 30)))   (main '()) " ).should == "672"
    @nendo.evalStr( " (macroexpand '(define (main argv) 0)) " ).should == "(define main (lambda (argv) 0))"
  end
end

describe Nendo, "when use macro macro " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " (define inc!-macro (macro (x) (+ x 1))) #t" ).should == "#t"
    @nendo.evalStr( " (inc!-macro 10) " ).should == "11"
    @nendo.evalStr( " (define dec!-macro (macro (x) (define (dec! v) (- v 1)) (dec! x)))  #t" ).should == "#t"
    @nendo.evalStr( " (dec!-macro 10) " ).should == "9"
    @nendo.evalStr( " (. (dec!-macro 10) class) " ).should == 'Fixnum'
  end
end

describe Nendo, "when use macros expands some syntax. " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( "" +
                    "  (let1 total 0" +
                    "    (let loop ((cnt 10))" +
                    "      (if (< 0 cnt)" +
                    "          (begin" +
                    "            (set! total (+ total cnt))" +
                    "            (loop (- cnt 1)))))" +
                    "    total)" +
                    "" ).should == "55"
    @nendo.evalStr( "" +
                    "(let label ((a 2)" +
                    "            (b 3))" +
                    "  (if (<= 9 (+ a b))" +
                    "      (* a b)" +
                    "      (label 4 5)))" +
                    "" ).should == "20"
    @nendo.evalStr( "" +
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
    @nendo.evalStr( " (macroexpand '(. a b)) " ).should == "(a.b)"
    @nendo.evalStr( " (macroexpand '(. a b c)) " ).should == "(a.b c)"
    @nendo.evalStr( " (macroexpand '(. Kernel open)) " ).should == "(Kernel.open)"
    lambda { @nendo.evalStr( " (macroexpand '(. open)) " ) }.should                   raise_error( ArgumentError )
    lambda { @nendo.evalStr( " (macroexpand '(. open \"aaa\")) " ) }.should           raise_error( TypeError )
    @nendo.evalStr( " (macroexpand '(. a size)) " ).should == "(a.size)"
    @nendo.evalStr( " (macroexpand '(. (. a size) to_s)) " ).gsub( /[12]0[0-9][0-9][0-9]/, "X0000" ).should == "(let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 (a.size))) (__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000.to_s))"
    @nendo.evalStr( " (macroexpand '(. (. (. a size) to_s) to_i)) " ).gsub( /[12]0[0-9][0-9][0-9]/, "X0000" ).should == "(let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 (let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 (a.size))) (__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000.to_s)))) (__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000.to_i))"
    lambda { @nendo.evalStr( " (macroexpand '(. (. a size))) " ) }.should             raise_error( ArgumentError )
    @nendo.evalStr( " (set! str \"str\") str.size " ).should == "3"
    @nendo.evalStr( " (set! str \"str\") (. str size) " ).should == "3"
    @nendo.evalStr( " (set! str \"str\") (+ 1 (. str size)) " ).should == "4"
    @nendo.evalStr( " (set! str \"string\") (. (. str size) to_s) " ).should == '"6"'
    @nendo.evalStr( " (to-s str.size) " ).should == '"6"'
    @nendo.evalStr( " (to-s 'str.size) " ).should == '"str.size"'
    @nendo.evalStr( " (require \"date\") " ).should == "#f"
    @nendo.evalStr( " (. (Date.new 0) strftime \"%x\") " ).should == '"01/01/00"'
    @nendo.evalStr( " (. (Date.new 0) strftime \"%s\") " ).should == '"-62167392000"'
    @nendo.evalStr( " (require \"digest/md5\") " ).should == "#f"
    @nendo.evalStr( " (Digest::MD5.hexdigest \"abc\") " ).should ==           '"900150983cd24fb0d6963f7d28e17f72"'
    @nendo.evalStr( " (Digest::MD5.hexdigest \"source text\") " ).should ==   '"20f79a1416626eeacc0bd9a8db87faa2"'
    @nendo.evalStr( " (define a 1) (a.is_a? Fixnum) " ).should ==     "#t"
    @nendo.evalStr( " (define a 1) (a.is_a? Float) " ).should ==      "#f"
    @nendo.evalStr( " (define a 1) (a.is_a? String) " ).should ==     "#f"
    @nendo.evalStr( " (define a 1.1) (a.is_a? Fixnum) " ).should ==   "#f"
    @nendo.evalStr( " (define a 1.1) (a.is_a? Float) " ).should ==    "#t"
    @nendo.evalStr( " (define a 1.1) (a.is_a? String) " ).should ==   "#f"
    @nendo.evalStr( " (define a \"s\") (a.is_a? Fixnum) " ).should == "#f"
    @nendo.evalStr( " (define a \"s\") (a.is_a? Float) " ).should ==  "#f"
    @nendo.evalStr( " (define a \"s\") (a.is_a? String) " ).should == "#t"
    @nendo.evalStr( ' (equal? (read-from-string "\"100\"") (. 100 to_s)) ' ).should == "#t"
  end
end

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

describe Nendo, "when use sort libraries " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " (define lst '(1 50 60 30000 4000 200)) " ).should                  == "(1 50 60 30000 4000 200)"
    @nendo.evalStr( " (sort lst) " ).should                                              == "(1 50 60 200 4000 30000)"
    @nendo.evalStr( " (sort '()) " ).should                                              == "()"
    @nendo.evalStr( " (sort lst  (lambda (a b) (- b a))) " ).should                      == "(30000 4000 200 60 50 1)"
    @nendo.evalStr( " (sort-by lst (lambda (item) item)) " ).should                      == "(1 50 60 200 4000 30000)"
    @nendo.evalStr( " (sort-by '() (lambda (item) item)) " ).should                      == "()"
    @nendo.evalStr( " (define lst2 '((1 . \"ddd\") (2 . \"cc\") (3 . \"bbbb\") (4 . \"a\"))) " ).should  == '((1 . "ddd") (2 . "cc") (3 . "bbbb") (4 . "a"))'
    @nendo.evalStr( " (sort lst2 (lambda (a b)  (- (car a) (car b)))) " ).should              == '((1 . "ddd") (2 . "cc") (3 . "bbbb") (4 . "a"))'
    @nendo.evalStr( " (sort lst2 (lambda (a b)  (if (>= (cdr a) (cdr b)) 1 -1))) " ).should   == '((4 . "a") (3 . "bbbb") (2 . "cc") (1 . "ddd"))'
    @nendo.evalStr( " (sort-by lst2 (lambda (item) (car item))) " ).should                    == '((1 . "ddd") (2 . "cc") (3 . "bbbb") (4 . "a"))'
    @nendo.evalStr( " (sort-by lst2 (lambda (item) (cdr item))) " ).should                    == '((4 . "a") (3 . "bbbb") (2 . "cc") (1 . "ddd"))'
    @nendo.evalStr( " (sort-by lst2 (lambda (item) (. (cdr item) size))) " ).should           == '((4 . "a") (2 . "cc") (1 . "ddd") (3 . "bbbb"))'
  end
end

describe Nendo, "when use with-open libraries " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
    @fn = "/tmp/for-with-open.dat"
    open( @fn, "w" ) { |f|
      f.puts( "line1" )
      f.puts( "line2" )
      f.puts( "line3" )
    }
  end
  it "should" do
    @nendo.evalStr( sprintf( " (with-open \"%s\" (lambda (f) (f.readline.chop))) ", @fn )).should                         == '"line1"'
    @nendo.evalStr( sprintf( " (with-open \"%s\" (lambda (f) (f.readline.chop))) ", @fn )).should                         == '"line1"'
    @nendo.evalStr( sprintf( " (with-open \"%s\" (lambda (f) (f.readline.chop) (f.readline.chop))) ", @fn )).should       == '"line2"'
    @nendo.evalStr( sprintf( " (with-open \"%s\" (lambda (f) (f.puts \"Wrote from Nendo.\")) \"w\")  #t", @fn )).should   == "#t"
    @nendo.evalStr( sprintf( " (with-open \"%s\" (lambda (f) (f.readline.chop))) ", @fn )).should                         == '"Wrote from Nendo."'
    lambda { @nendo.evalStr( sprintf( " (with-open \"%s\" (lambda (f) #t) 1 2 ", @fn )) }.should                          raise_error(RuntimeError)
  end

  after do
    File.unlink( @fn )
  end
end

describe Nendo, "when use (use ...) macro " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " (macroexpand '(use abc)) " ).should            == '(load "abc")'
    @nendo.evalStr( " (macroexpand '(use a.b)) " ).should            == '(load "a/b")'
    @nendo.evalStr( " (macroexpand '(use a.b.c)) " ).should          == '(load "a/b/c")'
    @nendo.evalStr( " (macroexpand '(use a.b.c.d.e.f.g)) " ).should  == '(load "a/b/c/d/e/f/g")'
    @nendo.evalStr( " (macroexpand '(use srfi-1)) " ).should         == '(load "srfi-1")'
    @nendo.evalStr( " (macroexpand '(use text.tree)) " ).should      == '(load "text/tree")'
    @nendo.evalStr( " (macroexpand '(use debug.syslog)) " ).should   == '(load "debug/syslog")'
    @nendo.evalStr( " (macroexpand `(use ,(string->symbol (+ \"text\" \".\" \"tree\")))) " ).should ==  '(load "text/tree")'
    lambda { @nendo.evalStr( " (macroexpand '(use '(a)) " ) }.should    raise_error( RuntimeError )
    lambda { @nendo.evalStr( " (macroexpand '(use \"srfi-1\") " ) }.should    raise_error( RuntimeError )
    lambda { @nendo.evalStr( " (macroexpand '(use 1)) " ) }.should    raise_error( RuntimeError )
    lambda { @nendo.evalStr( " (macroexpand '(use (+ 10 20))) " ) }.should    raise_error( RuntimeError )
  end
end

describe Nendo, "when use keyword feature " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " (keyword? :a) " ).should == "#t"
    @nendo.evalStr( ' (keyword? (intern ":a")) ' ).should == "#f"
    @nendo.evalStr( ' (symbol?  (intern ":a")) ' ).should == "#t"
    @nendo.evalStr( " (keyword? ':a) " ).should == "#t"
    @nendo.evalStr( " (symbol? ':a) " ).should == "#f"
    @nendo.evalStr( " (eq?  :a :a) " ).should == "#t"
    @nendo.evalStr( " (eqv? :a :a) " ).should == "#t"
    @nendo.evalStr( ' (eq?  :a (intern ":a")) ' ).should == "#f"
    @nendo.evalStr( ' (eqv? :a (intern ":a")) ' ).should == "#f"
    @nendo.evalStr( ' (keyword? (make-keyword "a")) ' ).should == "#t"
    @nendo.evalStr( " :a " ).should == ":a"
    @nendo.evalStr( " ::a " ).should == "::a"
    @nendo.evalStr( " :::key " ).should == ":::key"
    @nendo.evalStr( ' (make-keyword "a") ' ).should == ":a"
    @nendo.evalStr( ' (make-keyword ":a") ' ).should == "::a"
    @nendo.evalStr( " (make-keyword 'a) " ).should == ":a"
    @nendo.evalStr( " (keyword->string :a) " ).should == '"a"'
    @nendo.evalStr( " (keyword->string :abcde) " ).should == '"abcde"'
    lambda { @nendo.evalStr( " (keyword->string 'a) " ) }.should                  raise_error( TypeError )
    @nendo.evalStr( " : " ).should == ':'
    @nendo.evalStr( " (keyword->string :) " ).should == '""'
    @nendo.evalStr( ' (make-keyword "") ' ).should == ":"
    @nendo.evalStr( " (get-keyword :y '(:x 1 :y 2 :z 3)) " ).should == "2"
    @nendo.evalStr( " (get-keyword 'z '(x 1 y 2 z 3)) " ).should == "3"
    lambda { @nendo.evalStr( " (get-keyword 'z '(x 1 y 2 z)) " ) }.should         raise_error( RuntimeError )
    lambda { @nendo.evalStr( " (get-keyword :t '(:x 1 :y 2 :z 3)) " ) }.should    raise_error( RuntimeError )
    @nendo.evalStr( " (get-keyword :t '() #f) " ).should == "#f"
    @nendo.evalStr( " (get-keyword :t '(:x) #f) " ).should == "#f"
    lambda { @nendo.evalStr( " (get-keyword :t '()) " ) }.should                  raise_error( RuntimeError )
    lambda { @nendo.evalStr( " (get-keyword :t '(:x)) " ) }.should                raise_error( RuntimeError )
    lambda { @nendo.evalStr( " (get-keyword :t 1) " ) }.should                    raise_error( RuntimeError )
    @nendo.evalStr( " (get-keyword :t 1 #f) " ).should == "#f"
  end
end

describe Nendo, "when use hash-table feature " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " (define h (make-hash-table)) " ).should == "{}"
    @nendo.evalStr( " (hash-table? 1) " ).should == "#f"
    @nendo.evalStr( " (hash-table? '(1)) " ).should == "#f"
    @nendo.evalStr( " (hash-table? (Array.new)) " ).should == "#f"
    @nendo.evalStr( " (hash-table? (Hash.new)) " ).should == "#t"
    @nendo.evalStr( " h " ).should == "{}"
    @nendo.evalStr( " (hash-table-put! h 'k1 'v1) h" ).should == "{:k1=>:v1}"
    @nendo.evalStr( " (hash-table-put! h 'k2 200) h" ).should == "{:k1=>:v1, :k2=>200}"
    @nendo.evalStr( " (hash-table-get  h 'k1)" ).should == "v1"
    @nendo.evalStr( " (hash-table-get  h 'k2)" ).should == "200"
    @nendo.evalStr( " (hash-table-exist? h 'k1)" ).should == "#t"
    @nendo.evalStr( " (hash-table-exist? h 'k2)" ).should == "#t"
    @nendo.evalStr( " (hash-table-exist? h 'k3)" ).should == "#f"
    @nendo.evalStr( " (hash-table-exist? h \"k1\")" ).should == "#f"
    @nendo.evalStr( " (hash-table-num-entries h)" ).should == "2"
    @nendo.evalStr( " (hash-table-delete! h 'k1)" ).should == "v1"
    lambda { @nendo.evalStr( " (hash-table-get h 'k1)" ) }.should                 raise_error( RuntimeError )
    @nendo.evalStr( " (hash-table-get h 'k1 #f) " ).should == "#f"
    @nendo.evalStr( " (hash-table-num-entries h)" ).should == "1"
    @nendo.evalStr( " (hash-table-clear! h)" ).should == "{}"
    @nendo.evalStr( " (hash-table-num-entries h)" ).should == "0"
    @nendo.evalStr( " (set! h (hash-table '(\"a\" \"AAA\")   '(\"b\" \"BBB\")   '(\"c\" \"CCC\" 100)))  (hash-table-keys   h)" ).should == "(\"a\" \"b\" \"c\")"
    @nendo.evalStr( " (set! h (hash-table '(\"a\" \"AAA\")   '(\"b\" \"BBB\")   '(\"c\" \"CCC\" 100)))  (hash-table-values h)" ).should == "((\"AAA\") (\"BBB\") (\"CCC\" 100))"
    @nendo.evalStr( " (set! h (hash-table '(\"a\" . \"AAA\") '(\"b\" . \"BBB\") '(\"c\" . \"CCC\")))  h" ).should == "{\"a\"=>\"AAA\", \"b\"=>\"BBB\", \"c\"=>\"CCC\"}"
    @nendo.evalStr( " (hash-table-keys       h)" ).should == '("a" "b" "c")'
    @nendo.evalStr( " (hash-table-values     h)" ).should == '("AAA" "BBB" "CCC")'
    @nendo.evalStr( " (hash-table-map        h (lambda (a b) (+ a b)))" ).should == '("aAAA" "bBBB" "cCCC")'
    @nendo.evalStr( " (hash-table-for-each   h (lambda (a b) (+ a b)))" ).should == '("aAAA" "bBBB" "cCCC")'
    @nendo.evalStr( " (set! h (hash-table '(a   AAA) '(b   BBB)))  (hash-table->alist h)" ).should   == "((a AAA) (b BBB))"
    @nendo.evalStr( " (set! h (hash-table '(a . AAA) '(b   BBB)))  (hash-table->alist h)" ).should   == "((a . AAA) (b BBB))"
    @nendo.evalStr( " (set! h (hash-table '(a   AAA) '(b . BBB)))  (hash-table->alist h)" ).should   == "((a AAA) (b . BBB))"
    @nendo.evalStr( " (set! h (hash-table '(a . AAA) '(b . BBB)))  (hash-table->alist h)" ).should   == "((a . AAA) (b . BBB))"
    @nendo.evalStr( " (define alist (hash-table->alist h)) alist" ).should   == "((a . AAA) (b . BBB))"
    @nendo.evalStr( " (define h2 (alist->hash-table alist)) h2" ).should   == "{:a=>:AAA, :b=>:BBB}"
    @nendo.evalStr( " (set! h (make-hash-table)) " ).should == "{}"
    @nendo.evalStr( " (hash-table-push! h 'a :AAA_1)  (hash-table->alist h)" ).should == "((a :AAA_1))"
    @nendo.evalStr( " (hash-table-push! h 'a :AAA_2)  (hash-table->alist h)" ).should == "((a :AAA_2 :AAA_1))"
    @nendo.evalStr( " (hash-table-push! h 'b :BBB_1)  (hash-table->alist h)" ).should == "((a :AAA_2 :AAA_1) (b :BBB_1))"
    @nendo.evalStr( " (hash-table-push! h 'b :BBB_2)  (hash-table->alist h)" ).should == "((a :AAA_2 :AAA_1) (b :BBB_2 :BBB_1))"
    @nendo.evalStr( " (set! h (hash-table '(true . 1) '(false . 2) '(nil . 3)))  h" ).should   == "{true=>1, false=>2, nil=>3}"
    @nendo.evalStr( "   (hash-table->alist h) " ).should                                       == "((#t . 1) (#f . 2) (nil . 3))"
    @nendo.evalStr( "   (hash-table-keys   h) " ).should                                       == "(#t #f nil)"
    @nendo.evalStr( " (set! h (hash-table '(1 . true) '(2 . false) '(3 . nil)))  h" ).should   == "{1=>true, 2=>false, 3=>nil}"
    @nendo.evalStr( "   (hash-table->alist h) " ).should                                       == "((1 . #t) (2 . #f) (3 . nil))"
    @nendo.evalStr( "   (hash-table-keys   h) " ).should                                       == "(1 2 3)"
  end
end

describe Nendo, "when use vector feature " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( " (define v (vector)) v" ).should == "#()"
    @nendo.evalStr( " (vector? 1) " ).should == "#f"
    @nendo.evalStr( " (vector? (vector)) " ).should == "#t"
    @nendo.evalStr( " (vector? (vector 1)) " ).should == "#t"
    @nendo.evalStr( " (vector? (vector 1 2)) " ).should == "#t"
    @nendo.evalStr( " (vector? '#(1)) " ).should == "#t"
    @nendo.evalStr( " (vector? '#(1 2)) " ).should == "#t"
    @nendo.evalStr( " (vector? (Array.new)) " ).should == "#t"
    @nendo.evalStr( " (vector? (Hash.new)) " ).should == "#f"
    @nendo.evalStr( " (vector? 1.1) " ).should == "#f"
    @nendo.evalStr( " (vector? \"str\") " ).should == "#f"
    @nendo.evalStr( " (define v (make-vector 4))" ).should == "#(nil nil nil nil)"
    @nendo.evalStr( " (vector-set! v 0 'v1)  v" ).should ==   "#(v1 nil nil nil)"
    @nendo.evalStr( " (vector-set! v 1 '100) v" ).should ==  "#(v1 100 nil nil)"
    @nendo.evalStr( " (vector-set! v 2 '200) v" ).should ==    "#(v1 100 200 nil)"
    @nendo.evalStr( " (vector-set! v 3 '(a b c))  v" ).should ==     "#(v1 100 200 (a b c))"
    @nendo.evalStr( " (vector-length v)" ).should == "4"
    @nendo.evalStr( " (vector-ref v 0) " ).should == "v1"
    @nendo.evalStr( " (vector-ref v 1) " ).should == "100"
    @nendo.evalStr( " (vector-ref v 2) " ).should == "200"
    @nendo.evalStr( " (vector-ref v 3) " ).should == "(a b c)"
    lambda { @nendo.evalStr( " (vector-ref v -1)" ) }.should                 raise_error( RuntimeError )
    lambda { @nendo.evalStr( " (vector-ref v -2)" ) }.should                 raise_error( RuntimeError )
    lambda { @nendo.evalStr( " (vector-ref v  5)" ) }.should                 raise_error( RuntimeError )
    lambda { @nendo.evalStr( " (vector-ref v  6)" ) }.should                 raise_error( RuntimeError )
    @nendo.evalStr( " (vector-ref v -1 1000)" ).should == "1000"
    @nendo.evalStr( " (vector-ref v -2 2000)" ).should == "2000"
    @nendo.evalStr( " (vector-ref v  5 3000)" ).should == "3000"
    @nendo.evalStr( " (vector-ref v  6 4000)" ).should == "4000"
    @nendo.evalStr( " (vector-ref v  7 #f)" ).should   == "#f"
    @nendo.evalStr( " (define v   (make-vector 10)) v" ).should == "#(nil nil nil nil nil nil nil nil nil nil)"
    @nendo.evalStr( " (vector->list v)" ).should == "(nil nil nil nil nil nil nil nil nil nil)"
    @nendo.evalStr( " (define lst '(a b c (d)))" ).should == "(a b c (d))"
    @nendo.evalStr( " (list->vector lst)" ).should == "#(a b c (d))"
    @nendo.evalStr( " (list->vector (range 10 1))" ).should == "#(1 2 3 4 5 6 7 8 9 10)"
  end
end

describe Nendo, "tail call optimization " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
    @nendo.loadInitFile  # to self optimizing.  The init.nnd file will be loaded twice, so `filter' can be optimized on second loading phase.
  end
  it "should" do
    @nendo.evalStr( " (setup-tailcall-mark '(print \"abc\")) " ).should == "(%tailcall (print \"abc\"))"
    @nendo.evalStr( " (setup-tailcall-mark '(begin (print \"abc\") 1 2 3)) " ).should == "(begin (print \"abc\") 1 2 3)"
    @nendo.evalStr( " (setup-tailcall-mark '(begin 1 2 (print \"abc\") 3)) " ).should == "(begin 1 2 (print \"abc\") 3)"
    @nendo.evalStr( " (setup-tailcall-mark '(begin 1 2 3 (print \"abc\"))) " ).should == "(begin 1 2 3 (%tailcall (print \"abc\")))"
    @nendo.evalStr( " (setup-tailcall-mark '(lambda  (x) x)) " ).should                     == "(lambda (x) x)"
    @nendo.evalStr( " (setup-tailcall-mark '(macro   (x) x)) " ).should                     == "(macro (x) x)"
    @nendo.evalStr( " (setup-tailcall-mark '(%syntax (x) x)) " ).should                     == "(%syntax (x) x)"
    @nendo.evalStr( " (setup-tailcall-mark '(%syntax (a b c) (begin a b c))) " ).should     == "(%syntax (a b c) (begin a b c))"
    @nendo.evalStr( " (setup-tailcall-mark '(lambda  (x) (%syntax (y) x))) " ).should       == "(lambda (x) (%syntax (y) x))"
    @nendo.evalStr( " (setup-tailcall-mark '(lambda  (x) (syntax-quote x))) " ).should      == "(lambda (x) (syntax-quote x))"
    @nendo.evalStr( " (setup-tailcall-mark '(lambda  (x) (quote x))) " ).should             == "(lambda (x) 'x)"
    @nendo.evalStr( "" +
                    "(setup-tailcall-mark"+
                    "  '(lambda '(x)"+
                    "    1"+
                    "    2"+
                    "    (print \"abc\")))" ).should == "(lambda '(x) 1 2 (%tailcall (print \"abc\")))"
    @nendo.evalStr( "" +
                    "(setup-tailcall-mark"+
                    "  '(lambda (x)"+
                    "     1"+
                    "     2"+
                    "     (if #t"+
                    "         (begin 1 2 (print \"abc\"))"+
                    "         (begin 1 2 (print \"ABC\")))))" ).should == "(lambda (x) 1 2 (if #t (begin 1 2 (%tailcall (print \"abc\"))) (begin 1 2 (%tailcall (print \"ABC\")))))"
    @nendo.evalStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(define (foo) (foo))"+
                    "  ))" ).should == "(define foo (lambda () (%tailcall (foo))))"
    @nendo.evalStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(values? (make-values '()))"+
                    "  ))" ).should == "(%tailcall (values? (make-values '())))"
    @nendo.evalStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(cond (false  1) (false  2))"+
                    "  ))" ).should == "(if #f (begin 1) (if #f (begin 2) ()))"
    @nendo.evalStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(cond (false 1) (false 2) (else 3))"+
                    "  ))" ).should == "(if #f (begin 1) (if #f (begin 2) (if #t (begin 3) ())))"
    @nendo.evalStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(and (foo 1) (bar 2))"+
                    "  ))" ).should == "(if (not (eq? #f (foo 1))) (%tailcall (bar 2)) #f)"
    @nendo.evalStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(or (foo 1) (bar 2))"+
                    "  ))" ).gsub( /[24]0[0-9][0-9][0-9]/, "X0000" ).should == "(let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 (foo 1))) (if __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 (let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 (bar 2))) (if __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 #f))))"
    @nendo.evalStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(let loop ((x 1))  1 2 (loop 100))"+
                    "  ))" ).should == "(letrec ((loop (lambda (x) 1 2 (%tailcall (loop 100))))) (%tailcall (loop 1)))"
    @nendo.evalStr( "(setup-tailcall-mark (macroexpand "+
                    "   '(let1 aaa 111 aaa)"+
                    "  ))" ).should == "(let ((aaa 111)) aaa)"
    @nendo.evalStr( "" +
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
    @nendo.evalStr( "(set-optimize-level 0) " ).should == "0"
    lambda { @nendo.evalStr( "(filter (lambda (x) (< x 10)) (range  10000)) " ) }.should               raise_error(SystemStackError)
    @nendo.evalStr( "(set-optimize-level 1) " ).should == "1"
    @nendo.evalStr( "(apply + (map        (lambda (x) (* x 2))      (range  10000))) " ).should == "99990000"
    @nendo.evalStr( "(filter     (lambda (x) (< x 10))              (range  1000)) " ).should == "(0 1 2 3 4 5 6 7 8 9)"
    @nendo.evalStr( "(filter-map (lambda (x) (when (< x 10) (- x))) (range  1000)) " ).should == "(0 -1 -2 -3 -4 -5 -6 -7 -8 -9)"
    @nendo.evalStr( "(define str (if #t (car '(\"a\")) (car '(\"b\")))) (sprintf \"A%sZ\" str) " ).should == '"AaZ"'
    @nendo.evalStr( "(letrec ((str (if #t (+ \"a\" \"A\") '())))   str.class) " ).should == 'String'
    @nendo.evalStr( "(letrec ((str (if #t (+ \"a\" \"A\") '())))   (+ str \"...\")) " ).should == '"aA..."'
  end
end


describe Nendo, "optional argument parser " do
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


describe Nendo, "(load path) and *load-path*" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( ' (when (load "nendo/test")                   #t) ' ).should ==  "#t"
    @nendo.evalStr( ' (when (load "nendo/test.nnd")               #t) ' ).should ==  "#t"
    @nendo.evalStr( ' (when (load "nendo/test.nnd")               #t) ' ).should ==  "#t"
    @nendo.evalStr( ' (when (load "./lib/nendo/test.nnd")         #t) ' ).should ==  "#t"
    @nendo.evalStr( ' (when (load "../nendo/lib/nendo/test.nnd")  #t) ' ).should ==  "#t"
    @nendo.evalStr( ' (when (use nendo.test) #t)   ' ).should ==                     "#t"
    @nendo.evalStr( ' (set! *load-path* (list "a" "b")) ' ).should ==                '("a" "b")'
    @nendo.evalStr( ' (add-load-path "./lib") ' ).should ==                          '("./lib" "a" "b")'
    @nendo.evalStr( ' (add-load-path "./bin" #t) ' ).should ==                       '("./lib" "a" "b" "./bin")'
    @nendo.evalStr( ' (when (load "nendo/test")                   #t) ' ).should ==  "#t"
    lambda{ @nendo.evalStr( " (when (load \"nendo/not-exist-file\") #t) " ) }.should   raise_error(RuntimeError)
  end
end


describe Nendo, "nendo.test library " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
        @nendo.evalStr( ' (when (load "nendo/test")                   #t) ' ).should ==  "#t"
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
