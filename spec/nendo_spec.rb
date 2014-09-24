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
    expect(RUBY_VERSION.match( /^1[.]8/ )).not_to be true
  end
end

describe Cell, "when initialized as '()" do
  before do
    @cell = Cell.new
  end

  it "should" do
    expect(@cell.isNull).to be true
    expect(@cell.length).to eq(0)
    expect(@cell.size).to eq(0)
    expect(@cell.to_arr).to eq([])
    expect(@cell.class).to eq(Cell)
    expect(@cell.map{ |x| x }).to eq([])
    expect(@cell.lastAtom).to be false
    expect(@cell.getLastAtom.class).to eq(Nil)
  end
end

describe Cell, "when initialized as '(100)" do
  before do
    @cell = Cell.new( 100 )
  end

  it "should" do
    expect(@cell.isNull).not_to be true
    expect(@cell.length).to eq(1)
    expect(@cell.size).to eq(1)
    expect(@cell.car).to eq(100)
    expect(@cell.cdr.class).to eq(Nil)
    expect(@cell.to_arr).to eq([ 100 ])
    expect(@cell.lastCell.car).to eq(100)
    expect(@cell.lastCell.cdr.class).to eq(Nil)
    expect(@cell.lastAtom).to be false
    expect(@cell.getLastAtom.class).to eq(Nil)
  end
end

describe Cell, "when initialized as '(100 . 200)" do
  before do
    @cell = Cell.new( 100, 200 )
  end

  it "should" do
    expect(@cell.isNull).not_to be true
    expect(@cell.isDotted).to be true
    expect(@cell.length).to eq(1)
    expect(@cell.size).to eq(1)
    expect(@cell.car).to eq(100)
    expect(@cell.cdr).to eq(200)
    expect(@cell.to_arr).to eq([ 100 ])
    expect(@cell.lastCell.car).to eq(100)
    expect(@cell.lastCell.cdr).to eq(200)
    expect(@cell.lastAtom).to be true
    expect(@cell.getLastAtom).to eq(200)
  end
end

describe Cell, "when initialized as '(cons 100 (cons 200 300)) " do
  before do
    @cell = Cell.new( 100, Cell.new( 200, 300 ))
  end

  it "should" do
    expect(@cell.isNull).not_to   be true
    expect(@cell.isDotted).not_to be true
    expect(@cell.length).to eq(2)
    expect(@cell.size).to eq(2)
    expect(@cell.car).to eq(100)
    expect(@cell.cdr.car).to eq(200)
    expect(@cell.cdr.cdr).to eq(300)
    expect(@cell.to_arr).to eq([ 100, 200 ])
    expect(@cell.lastCell.car).to eq(200)
    expect(@cell.lastCell.cdr).to eq(300)
    expect(@cell.lastAtom).to be true
    expect(@cell.getLastAtom).to eq(300)
  end
end

describe Nendo, "Ruby's arity rules " do
  it "should" do
    expect(Proc.new {}.arity).to be <= 0
    expect(Proc.new {||}.arity).to eq(0)
    expect(Proc.new {|a|}.arity).to eq(1)
    expect(Proc.new {|a,b|}.arity).to eq(2)
    expect(Proc.new {|a,b,c|}.arity).to eq(3)
    expect(Proc.new {|*a|}.arity).to eq(-1)
    expect(Proc.new {|a,*b|}.arity).to eq(-2)
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
    expect(lambda1.call( 'A' )).to eq('a')
  end
end

describe Nendo, "Japanese characters in regex " do
  before do
    @matchData = "ABC漢字あいうえお漢字ABC".match( /([あ-ん])([あ-ん])([あ-ん])([あ-ん])([あ-ん])/ )
  end
  it "should" do
    expect(@matchData).not_to be_nil
    expect(@matchData[0]).to eq("あいうえお")
    expect(@matchData[1]).to eq("あ")
  end
end


describe Nendo, "Ruby's undefined instance variable " do
  it "should" do
    expect(@undefined_variable).to be_nil
    expect(defined?( @undefined_variable )).to be_nil
  end
end

describe Evaluator, "When use Evaluator's util methods" do
  before do
    @evaluator = Evaluator.new(Nendo::Core.new())
  end
  it "should" do
    expect(@evaluator.toRubySymbol( "a" )).to eq("_a")
    expect(@evaluator.toRubySymbol( "a_b_c" )).to eq("_a_b_c")
    expect(@evaluator.toRubySymbol( "_a_b_c_" )).to eq("__a_b_c_")
    expect(@evaluator.toRubySymbol( '!' )).to  eq('__EXMARK')
    expect(@evaluator.toRubySymbol( '$' )).to  eq('__DOMARK')
    expect(@evaluator.toRubySymbol( '%' )).to  eq('__PAMARK')
    expect(@evaluator.toRubySymbol( '&' )).to  eq('__ANMARK')
    expect(@evaluator.toRubySymbol( '*' )).to  eq('__ASMARK')
    expect(@evaluator.toRubySymbol( '+' )).to  eq('__PLMARK')
    expect(@evaluator.toRubySymbol( '-' )).to  eq('__MIMARK')
    expect(@evaluator.toRubySymbol( '/' )).to  eq('__SLMARK')
    expect(@evaluator.toRubySymbol( ':' )).to  eq('__COMARK')
    expect(@evaluator.toRubySymbol( '::' )).to eq('_::')
    expect(@evaluator.toRubySymbol( '<' )).to  eq('__LTMARK')
    expect(@evaluator.toRubySymbol( '=' )).to  eq('__EQMARK')
    expect(@evaluator.toRubySymbol( '>' )).to  eq('__GTMARK')
    expect(@evaluator.toRubySymbol( '?' )).to  eq('__QUMARK')
    expect(@evaluator.toRubySymbol( '@' )).to  eq('__ATMARK')
    expect(@evaluator.toRubySymbol( '^' )).to  eq('__NKMARK')
    expect(@evaluator.toRubySymbol( "_" )).to  eq("__")
    expect(@evaluator.toRubySymbol( '~' )).to  eq('__CHMARK')
    expect(@evaluator.toRubySymbol( '...' )).to  eq('__DOTDOTDOT')
    expect(@evaluator.toRubySymbol( '<...>' )).to  eq('__LTMARK_DOTDOTDOT_GTMARK')
    expect(@evaluator.toRubySymbol( "a?" )).to eq("_a_QUMARK")
    expect(@evaluator.toRubySymbol( "a?" )).to eq("_a_QUMARK")
    expect(@evaluator.toRubySymbol( "a!" )).to eq("_a_EXMARK")
    expect(@evaluator.toRubySymbol( "a?b" )).to eq("_a_QUMARKb")
    expect(@evaluator.toRubySymbol( "a!b" )).to eq("_a_EXMARKb")
    expect(@evaluator.toRubySymbol( "a-b" )).to eq("_a_MIMARKb")
    expect(@evaluator.toRubySymbol( "a-b-c" )).to eq("_a_MIMARKb_MIMARKc")
    expect(@evaluator.toRubySymbol( "-a-b-c" )).to eq("__MIMARKa_MIMARKb_MIMARKc")
    expect(@evaluator.toRubySymbol( "-a-!-b" )).to eq("__MIMARKa_MIMARK_EXMARK_MIMARKb")
    expect(@evaluator.toRubySymbol( "-a-!-?b" )).to eq("__MIMARKa_MIMARK_EXMARK_MIMARK_QUMARKb")
    expect(@evaluator.toRubySymbol( "a.b" )).to eq("_a.b")
    expect(@evaluator.toRubySymbol( "aa.bb" )).to eq("_aa.bb")
    expect(@evaluator.toRubySymbol( "aa.bb.cc" )).to eq("_aa.bb.cc")
    expect(@evaluator.toLispSymbol( "_a_QUMARK" )).to eq("a?")
    expect(@evaluator.toLispSymbol( "_a_EXMARK" )).to eq("a!")
    expect(@evaluator.toLispSymbol( "_a_b" )).to eq("a_b")
    expect(@evaluator.toLispSymbol( "_a_b_c" )).to eq("a_b_c")
    expect(@evaluator.toLispSymbol( "_A_B_C" )).to eq("A_B_C")
    expect(@evaluator.toLispSymbol( "__DOTDOTDOT" )).to eq("...")
    expect(@evaluator.toLispSymbol( "__LTMARK_DOTDOTDOT_GTMARK" )).to eq("<...>")
    expect(@evaluator.toRubyValue( "a" )).to eq("a")
    expect(@evaluator.toRubyValue( "b" )).to eq("b")
    expect(@evaluator.toRubyValue( "true" )).to eq("true")
    expect(@evaluator.toRubyValue( "nil" )).to eq("nil")
    expect(@evaluator.toRubyValue( "false" )).to eq("false")
    expect(@evaluator.toRubyValue( :a )).to eq("a")
    expect(@evaluator.toRubyValue( :b )).to eq("b")
    expect(@evaluator.toRubyValue( true )).to eq("true")
    expect(@evaluator.toRubyValue( nil )).to eq("nil")
    expect(@evaluator.toRubyValue( false )).to eq("false")
  end
end

describe Nendo, "when call evalStr() with literals" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    expect(@nendo.evalStr( " 1 " )).to eq("1")
    expect(@nendo.evalStr( " 100000 " )).to eq("100000")
    expect(@nendo.evalStr( " 1.1 " )).to eq("1.1")
    expect(@nendo.evalStr( " 1.0 " )).to eq("1.0")
    expect(@nendo.evalStr( ' "a" ' )).to eq('"a"')
    expect(@nendo.evalStr( ' "\n" ' )).to eq("\"\n\"")
    expect(@nendo.evalStr( ' "\r" ' )).to eq("\"\\r\"")
    expect(@nendo.evalStr( ' "\t" ' )).to eq("\"\\t\"")
    expect(@nendo.evalStr( ' "a" ' )).to eq('"a"')
    expect(@nendo.evalStr( ' "a\"b" ' )).to eq('"a\"b"')
    expect(@nendo.evalStr( " true " )).to eq("#t")
    expect(@nendo.evalStr( " false " )).to eq("#f")
    expect(@nendo.evalStr( " nil " )).to eq("nil")
    expect(@nendo.evalStr( " #t " )).to eq("#t")
    expect(@nendo.evalStr( " #f " )).to eq("#f")
    pending( "JRuby can't compute correctly" ) if defined? JRUBY_VERSION
    expect(@nendo.evalStr( ' "日本語" ' )).to eq('"日本語"')
    expect(@nendo.evalStr( ' "日\"本\"語" ' )).to eq('"日\"本\"語"')
  end
end

describe Nendo, "when call evalStr() with comparative operators" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    expect(@nendo.evalStr( " (= 1 1) " )).to eq("#t")
    expect(@nendo.evalStr( " (= 1 2) " )).to eq("#f")
    expect(@nendo.evalStr( " (= #t #t) " )).to eq("#t")
    expect(@nendo.evalStr( " (= #f #f) " )).to eq("#t")
    expect(@nendo.evalStr( " (= true true) " )).to eq("#t")
    expect(@nendo.evalStr( " (= false false) " )).to eq("#t")
    expect(@nendo.evalStr( " (= #t true) " )).to eq("#t")
    expect(@nendo.evalStr( " (= #f false) " )).to eq("#t")
    expect(@nendo.evalStr( " (= #t #f) " )).to eq("#f")
    expect(@nendo.evalStr( " (= true false) " )).to eq("#f")
    expect(@nendo.evalStr( " (eq? 1 1) " )).to eq("#t")
    expect(@nendo.evalStr( " (eq? 1 2) " )).to eq("#f")
    expect(@nendo.evalStr( " (eq? 'a 'a) " )).to eq("#t")
    expect(@nendo.evalStr( " (eq? 'b 'b) " )).to eq("#t")
    expect(@nendo.evalStr( " (eq? 'a-b 'a-b) " )).to eq("#t")
    expect(@nendo.evalStr( " (eq? 'a_b 'a-b) " )).to eq("#f")
    expect(@nendo.evalStr( " (eq? 'a-b 'a_b) " )).to eq("#f")
    expect(@nendo.evalStr( " (eq? 'a-b (intern \"a-b\")) " )).to eq("#t")
    expect(@nendo.evalStr( " (eq? 'a_b (intern \"a-b\")) " )).to eq("#f")
    expect(@nendo.evalStr( " (eq? 'a-b (intern \"a_b\")) " )).to eq("#f")
    expect(@nendo.evalStr( " (=   1 1) " )).to eq("#t")
    expect(@nendo.evalStr( " (=   1 2) " )).to eq("#f")
    expect(@nendo.evalStr( " (=   'a 'a) " )).to eq("#t")
    expect(@nendo.evalStr( " (=   'b 'b) " )).to eq("#t")
    expect(@nendo.evalStr( " (=   'a-b 'a-b) " )).to eq("#t")
    expect(@nendo.evalStr( " (=   'a_b 'a-b) " )).to eq("#f")
    expect(@nendo.evalStr( " (=   'a-b 'a_b) " )).to eq("#f")
    expect(@nendo.evalStr( " (=   'a-b (intern \"a-b\")) " )).to eq("#t")
    expect(@nendo.evalStr( " (=   'a_b (intern \"a-b\")) " )).to eq("#f")
    expect(@nendo.evalStr( " (=   'a-b (intern \"a_b\")) " )).to eq("#f")
    expect(@nendo.evalStr( " (< 1 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (< 1 2) " )).to eq("#t")
    expect(@nendo.evalStr( " (> 1 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (> 2 1) " )).to eq("#t")
    expect(@nendo.evalStr( " (<= 1 0) " )).to eq("#f")
    expect(@nendo.evalStr( " (<= 1 1) " )).to eq("#t")
    expect(@nendo.evalStr( " (<= 1 2) " )).to eq("#t")
    expect(@nendo.evalStr( " (>= 0 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (>= 1 1) " )).to eq("#t")
    expect(@nendo.evalStr( " (equal? 1 1) " )).to eq("#t")
    expect(@nendo.evalStr( " (equal? 1 2) " )).to eq("#f")
    expect(@nendo.evalStr( " (equal? 2 2) " )).to eq("#t")
    expect(@nendo.evalStr( " (equal? '() '()) " )).to eq("#t")
    expect(@nendo.evalStr( " (equal? '(1) '(1)) " )).to eq("#t")
    expect(@nendo.evalStr( " (equal? '(1) '(2)) " )).to eq("#f")
    expect(@nendo.evalStr( " (equal? '(1 2 3) '(1 2 3)) " )).to eq("#t")
    expect(@nendo.evalStr( " (equal? '(1 2 . 3) '(1 2 . 3)) " )).to eq("#t")
    expect(@nendo.evalStr( " (equal? '(1 2 (3)) '(1 2 (3))) " )).to eq("#t")
    expect(@nendo.evalStr( " (equal? '(1 2 (3)) '(1 2 (4))) " )).to eq("#f")
    expect(@nendo.evalStr( " (equal? '(1 2 (3 (4))) '(1 2 (3 (4)))) " )).to eq("#t")
    expect(@nendo.evalStr( " (equal? '((1) 2 3 4) '((2) 2 3 4)) " )).to eq("#f")
    expect(@nendo.evalStr( " (equal? \"aaa\" \"aaa\") " )).to eq("#t")
    expect(@nendo.evalStr( " (equal? \"aaa\" \"aax\") " )).to eq("#f")
    expect(@nendo.evalStr( " (equal? '(\"aaa\") '(\"aaa\")) " )).to eq("#t")
    expect(@nendo.evalStr( " (equal? '(\"aaa\" (1)) '(\"aaa\" (1))) " )).to eq("#t")
    expect(@nendo.evalStr( " (equal? '(\"aaa\" (1)) '(\"aaa\" (2))) " )).to eq("#f")
  end
end

describe Nendo, "when reference global-variables." do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    expect(@nendo.evalStr( " (pair? *load-path*) " )).to eq("#t")
    expect(@nendo.evalStr( " (string? (car *load-path*)) " )).to eq("#t")
#   @nendo.evalStr( " (to-arr   *load-path*)  " ).should include( "./spec")
#   @nendo.evalStr( " (to-arr   *load-path*)  " ).should include( "./lib")
    expect(@nendo.evalStr( " (string? (*FILE*)) " )).to eq("#t")
    expect(@nendo.evalStr( " (number? (*LINE*)) " )).to eq("#t")
    expect(@nendo.evalStr( " *nendo-version* " )).to eq('"' + Nendo::Core.version + '"')
    expect(@nendo.evalStr( " (string? *nendo-version*) " )).to eq("#t")
  end
end

describe Nendo, "when call evalStr() with boolean operators" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    expect(@nendo.evalStr( " true " )).to eq("#t")
    expect(@nendo.evalStr( " false " )).to eq("#f")
    expect(@nendo.evalStr( " #t " )).to eq("#t")
    expect(@nendo.evalStr( " #f " )).to eq("#f")
    expect(@nendo.evalStr( " (not true) " )).to eq("#f")
    expect(@nendo.evalStr( " (not #t) " )).to eq("#f")
    expect(@nendo.evalStr( " (not 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (not false) " )).to eq("#t")
    expect(@nendo.evalStr( " (not #f) " )).to eq("#t")
    expect(@nendo.evalStr( " (not \"str\") " )).to eq("#f")
    expect(@nendo.evalStr( " (not not) " )).to eq("#f")
    expect(@nendo.evalStr( " (not (not true)) " )).to eq("#t")
    expect(@nendo.evalStr( " (not (not #t)) " )).to eq("#t")
    expect(@nendo.evalStr( " (not '()) " )).to eq("#f")
    expect(@nendo.evalStr( " (not '(1)) " )).to eq("#f")
  end
end

describe Nendo, "when call evalStr() with `+' function" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
  end
  it "should" do
    expect(@nendo.evalStr( " (+ 1) " )).to eq("1")
    expect(@nendo.evalStr( " (+ 1 1) " )).to eq("2")
    expect(@nendo.evalStr( " (+ 1 1 1 1 1 1 1 1 1 1) " )).to eq("10")
    expect(@nendo.evalStr( " (+ 1 2 3 4 5) " )).to eq("15")
    expect(@nendo.evalStr( " (+ 1 (+ 2 (+ 3 (+ 4 (+ 5))))) " )).to eq("15")
    expect(@nendo.evalStr( " (+ 1   1.1) " )).to eq("2.1")
    expect(@nendo.evalStr( " (+ 1.1 1.2) " )).to eq("2.3")
    expect(@nendo.evalStr( " (+ \"a\" ) " )).to eq('"a"')
    expect(@nendo.evalStr( " (+ \"a\" \"B\" \"c\" ) " )).to eq('"aBc"')
    expect(@nendo.evalStr( " (+) " )).to eq("0")
    expect { @nendo.evalStr( " (+ 1 '() ) " ) }.to       raise_error(TypeError)
    expect { @nendo.evalStr( " (+ 1.1 '() ) " ) }.to     raise_error(TypeError)
    expect { @nendo.evalStr( " (+ 1.1 \"a\" ) " ) }.to   raise_error(TypeError)
    expect { @nendo.evalStr( " (+ \"a\" 1) " ) }.to      raise_error(TypeError)
    expect { @nendo.evalStr( " (+ \"a\" 1.1) " ) }.to    raise_error(TypeError)
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
    expect(@nendo.evalStr( " (- 1) " )).to eq("-1")
    expect(@nendo.evalStr( " (- 2 1) " )).to eq("1")
    expect(@nendo.evalStr( " (- 2 5) " )).to eq("-3")
    expect(@nendo.evalStr( " (- 100 1 1 1 1 1 1 1 1 1 1) " )).to eq("90")
    expect(@nendo.evalStr( " (- 100 (- 10 3)) " )).to eq("93")
    expect(@nendo.evalStr( " (- 1.1 1) " )).to eq((1.1-1).to_s)
    expect(@nendo.evalStr( " (- 1.3 1.1) " )).to eq((1.3-1.1).to_s)
    expect(@nendo.evalStr( " (-) " )).to eq("0")
    expect { @nendo.evalStr( " (- 1 '() ) " ) }.to       raise_error(TypeError)
    expect { @nendo.evalStr( " (- 1.1 '() ) " ) }.to     raise_error(TypeError)
    expect { @nendo.evalStr( " (- 1.1 \"a\" ) " ) }.to   raise_error(TypeError)
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
    expect(@nendo.evalStr( " (* 1) " )).to eq("1")
    expect(@nendo.evalStr( " (* 2 1) " )).to eq("2")
    expect(@nendo.evalStr( " (* 2 5) " )).to eq("10")
    expect(@nendo.evalStr( " (* 1 2 3 4 5 6 7 8 9 10) " )).to eq("3628800")
    expect(@nendo.evalStr( " (* 100 (* 10 10 10)) " )).to eq("100000")
    expect(@nendo.evalStr( " (* 1.1 1) " )).to eq("1.1")
    expect(@nendo.evalStr( " (* 1.3 1.1) " )).to eq((1.3*1.1).to_s)
    expect(@nendo.evalStr( " (*) " )).to eq("1")
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
    expect(@nendo.evalStr( " (/ 1) " )).to eq("1")
    expect(@nendo.evalStr( " (/ 1.1) " )).to eq(
      (1/1.1).to_s
    )
    expect(@nendo.evalStr( " (/ 2 1) " )).to eq("2")
    expect(@nendo.evalStr( " (/ 2 2) " )).to eq("1")
    expect(@nendo.evalStr( " (/ 2 2.0) " )).to eq("1.0")
    expect(@nendo.evalStr( " (/ 2 5.0) " )).to eq("0.4")
    expect(@nendo.evalStr( " (/ 10.0 2 2 2 2 2 2 2 2 2 2) " )).to eq("0.009765625")
    expect(@nendo.evalStr( " (/ 100 (/ 100 10) 10) " )).to eq("1")
    expect(@nendo.evalStr( " (/ 1 1.11) " )).to eq(
      (1/1.11).to_s
    )
    expect(@nendo.evalStr( " (/ 1.3 1.1) " )).to eq(
      (1.3/1.1).to_s
    )
    expect { @nendo.evalStr( " (/ 1 '() ) " ) }.to      raise_error(TypeError)
    expect { @nendo.evalStr( " (/ 1.1 '() ) " ) }.to    raise_error(TypeError)
    expect { @nendo.evalStr( " (/) " ) }.to             raise_error(ArgumentError)
    expect { @nendo.evalStr( " (/ '() ) " ) }.to        raise_error(TypeError)
    expect { @nendo.evalStr( " (/ 1.1 \"a\" ) " ) }.to  raise_error(TypeError)
  end
end

describe Nendo, "when call evalStr() with `%' function" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
  end
  it "should" do
    expect(@nendo.evalStr( " (% 1) " )).to eq("0")
    expect(@nendo.evalStr( " (% 1.1) " )).to eq("1.0")
    expect(@nendo.evalStr( " (% 2 1) " )).to eq("0")
    expect(@nendo.evalStr( " (% 2 2) " )).to eq("0")
    expect(@nendo.evalStr( " (% 2 2.0) " )).to eq("0.0")
    expect(@nendo.evalStr( " (% 2 5.0) " )).to eq("2.0")
    expect(@nendo.evalStr( " (% 100 (% 103 10)) " )).to eq("1")
    expect(@nendo.evalStr( " (% 1 1.11) " )).to eq("1.0")
    expect(@nendo.evalStr( " (% 1.3 1.1) " )).to eq((1.3%1.1).to_s)
    expect { @nendo.evalStr( " (% 1 '() ) " ) }.to       raise_error(TypeError)
    expect { @nendo.evalStr( " (% 1.1 '() ) " ) }.to     raise_error(TypeError)
    expect { @nendo.evalStr( " (\%) " ) }.to             raise_error(ArgumentError)
    expect { @nendo.evalStr( " (\% '() ) " ) }.to        raise_error(TypeError)
    expect { @nendo.evalStr( " (\% 1.1 \"a\" ) " ) }.to  raise_error(TypeError)
  end
end

describe Nendo, "when call evalStr() with `quotient' function" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
  end
  it "should" do
    expect(@nendo.evalStr( " (quotient 2 1) " )).to eq("2")
    expect(@nendo.evalStr( " (quotient 2 2) " )).to eq("1")
    expect(@nendo.evalStr( " (quotient 2 2.0) " )).to eq("1")
    expect(@nendo.evalStr( " (quotient 2 5.0) " )).to eq("0")
    expect(@nendo.evalStr( " (quotient 1 1.11) " )).to eq("0")
    expect(@nendo.evalStr( " (quotient  10  3) " )).to eq("3")
    expect(@nendo.evalStr( " (quotient -10  3) " )).to eq("-3")
    expect(@nendo.evalStr( " (quotient  10 -3) " )).to eq("-3")
    expect(@nendo.evalStr( " (quotient  10 -2) " )).to eq("-5")
    expect { @nendo.evalStr( " (quotient 1 ) " ) }.to           raise_error(ArgumentError)
    expect { @nendo.evalStr( " (quotient 1.1 ) " ) }.to         raise_error(ArgumentError)
    expect { @nendo.evalStr( " (quotient) " ) }.to              raise_error(ArgumentError)
    expect { @nendo.evalStr( " (quotient '() ) " ) }.to         raise_error(ArgumentError)
    expect { @nendo.evalStr( " (quotient 1.1 \"a\" ) " ) }.to   raise_error(TypeError)
    expect { @nendo.evalStr( " (quotient \"a\" 1.1 ) " ) }.to   raise_error(TypeError)
  end
end

describe Nendo, "when call evalStr() with `remainder' function" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
  end
  it "should" do
    expect(@nendo.evalStr( " (remainder 2 1) " )).to eq("0")
    expect(@nendo.evalStr( " (remainder 2 2) " )).to eq("0")
    expect(@nendo.evalStr( " (remainder 2 2.0) " )).to eq("0.0")
    expect(@nendo.evalStr( " (remainder 2 5.0) " )).to eq("2.0")
    expect(@nendo.evalStr( " (remainder 1 1.11) " )).to eq("1.0")
    expect(@nendo.evalStr( " (remainder  10  3) " )).to eq("1")
    expect(@nendo.evalStr( " (remainder -10  3) " )).to eq("-1")
    expect(@nendo.evalStr( " (remainder  10 -3) " )).to eq("1")
    expect(@nendo.evalStr( " (remainder -10 -3) " )).to eq("-1")
    expect(@nendo.evalStr( " (remainder  10 -2) " )).to eq("0")
    expect { @nendo.evalStr( " (remainder 1 '() ) " ) }.to       raise_error(TypeError)
    expect { @nendo.evalStr( " (remainder 1.1 '() ) " ) }.to     raise_error(TypeError)
    expect { @nendo.evalStr( " (remainder) " ) }.to              raise_error(ArgumentError)
    expect { @nendo.evalStr( " (remainder '() ) " ) }.to         raise_error(ArgumentError)
    expect { @nendo.evalStr( " (remainder 1.1 \"a\" ) " ) }.to   raise_error(TypeError)
  end
end

describe Nendo, "when call evalStr() with `modulo' function" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
  end
  it "should" do
    expect(@nendo.evalStr( " (modulo 2 1) " )).to eq("0")
    expect(@nendo.evalStr( " (modulo 2 2) " )).to eq("0")
    expect(@nendo.evalStr( " (modulo 2 2.0) " )).to eq("0.0")
    expect(@nendo.evalStr( " (modulo 2 5.0) " )).to eq("2.0")
    expect(@nendo.evalStr( " (modulo 100 (modulo 103 10)) " )).to eq("1")
    expect(@nendo.evalStr( " (modulo 1 1.11) " )).to eq("1.0")
    expect(@nendo.evalStr( " (modulo  10  3) " )).to eq("1")
    expect(@nendo.evalStr( " (modulo -10  3) " )).to eq("2")
    expect(@nendo.evalStr( " (modulo  10 -3) " )).to eq("-2")
    expect(@nendo.evalStr( " (modulo -10 -3) " )).to eq("-1")
    expect(@nendo.evalStr( " (modulo  10 -2) " )).to eq("0")
    expect { @nendo.evalStr( " (modulo 1 '() ) " ) }.to       raise_error(TypeError)
    expect { @nendo.evalStr( " (modulo 1.1 '() ) " ) }.to     raise_error(TypeError)
    expect { @nendo.evalStr( " (modulo) " ) }.to              raise_error(ArgumentError)
    expect { @nendo.evalStr( " (modulo '() ) " ) }.to         raise_error(TypeError)
    expect { @nendo.evalStr( " (modulo 1.1 \"a\" ) " ) }.to   raise_error(TypeError)
  end
end

