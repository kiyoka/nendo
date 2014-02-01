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

describe Nendo, "Ruby version " do
  it "should" do
    RUBY_VERSION.match( /^1[.]8/ ).should_not be_true
  end
end

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
#   @nendo.evalStr( " (to-arr   *load-path*)  " ).should include( "./spec")
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
    @nendo.setDisplayErrors( false )
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
    lambda { @nendo.evalStr( " (+ 1 '() ) " ) }.should       raise_error(TypeError)
    lambda { @nendo.evalStr( " (+ 1.1 '() ) " ) }.should     raise_error(TypeError)
    lambda { @nendo.evalStr( " (+ 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
    lambda { @nendo.evalStr( " (+ \"a\" 1) " ) }.should      raise_error(TypeError)
    lambda { @nendo.evalStr( " (+ \"a\" 1.1) " ) }.should    raise_error(TypeError)
#    pending( "Optimized `+' function does not raise TypeError" )
#    lambda { @nendo.evalStr( " (+ '() ) " ) }.should         raise_error(TypeError)
#    lambda { @nendo.evalStr( " (+ '(1) ) " ) }.should        raise_error(TypeError)
  end
end

describe Nendo, "when call evalStr() with `-' function" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
  end
  it "should" do
    @nendo.evalStr( " (- 1) " ).should == "-1"
    @nendo.evalStr( " (- 2 1) " ).should == "1"
    @nendo.evalStr( " (- 2 5) " ).should == "-3"
    @nendo.evalStr( " (- 100 1 1 1 1 1 1 1 1 1 1) " ).should == "90"
    @nendo.evalStr( " (- 100 (- 10 3)) " ).should == "93"
    @nendo.evalStr( " (- 1.1 1) " ).should == (1.1-1).to_s
    @nendo.evalStr( " (- 1.3 1.1) " ).should == (1.3-1.1).to_s
    @nendo.evalStr( " (-) " ).should == "0"
    lambda { @nendo.evalStr( " (- 1 '() ) " ) }.should       raise_error(TypeError)
    lambda { @nendo.evalStr( " (- 1.1 '() ) " ) }.should     raise_error(TypeError)
    lambda { @nendo.evalStr( " (- 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
#    pending( "Optimized `-' function does not raise TypeError" )
#    lambda { @nendo.evalStr( " (- '(1) ) " ) }.should        raise_error(TypeError)
#    lambda { @nendo.evalStr( " (- '() ) " ) }.should         raise_error(TypeError)
  end
end

describe Nendo, "when call evalStr() with `*' function" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
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
#    pending( "Optimized `*' function does not raise TypeError" )
#    lambda { @nendo.evalStr( " (* \"a\" 1) " ) }.should      raise_error(TypeError)
#    lambda { @nendo.evalStr( " (* \"a\" 1.1) " ) }.should    raise_error(TypeError)
#    lambda { @nendo.evalStr( " (* 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
#    lambda { @nendo.evalStr( " (* '() ) " ) }.should         raise_error(TypeError)
#    lambda { @nendo.evalStr( " (* '(1) ) " ) }.should        raise_error(TypeError)
#    lambda { @nendo.evalStr( " (* 1 '() ) " ) }.should       raise_error(TypeError)
#    lambda { @nendo.evalStr( " (* 1.1 '() ) " ) }.should     raise_error(TypeError)
  end
end

describe Nendo, "when call evalStr() with `/' function" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
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
    @nendo.setDisplayErrors( false )
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
    @nendo.setDisplayErrors( false )
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
    @nendo.setDisplayErrors( false )
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
    @nendo.setDisplayErrors( false )
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

