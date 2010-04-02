#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
require 'nendo'

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
    @cell.lastAtom.should == nil
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
    @cell.lastAtom.should == nil
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
    @cell.lastAtom.should == 300
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
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.replStr( " 1 " ).should == "1"
    @nendo.replStr( " 100000 " ).should == "100000"
    @nendo.replStr( " 1.1 " ).should == "1.1"
    @nendo.replStr( " 1.0 " ).should == "1.0"
    @nendo.replStr( ' "a" ' ).should == '"a"'
    @nendo.replStr( ' "日本語" ' ).should == '"日本語"'
    @nendo.replStr( ' "\n" ').should == "\"\n\""
    @nendo.replStr( ' "a" ' ).should == '"a"'
    @nendo.replStr( ' "a\"b" ' ).should == '"a\"b"'
    @nendo.replStr( ' "日\"本\"語" ' ).should == '"日\"本\"語"'
    @nendo.replStr( " true " ).should == "true"
    @nendo.replStr( " false " ).should == "false"
    @nendo.replStr( " nil " ).should == "nil"
    @nendo.replStr( " #t " ).should == "true"
    @nendo.replStr( " #f " ).should == "false"
  end
end

describe Nendo, "when call replStr() with comparative operators" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.replStr( " (= 1 1) " ).should == "true"
    @nendo.replStr( " (= 1 2) " ).should == "false"
    @nendo.replStr( " (eq? 1 1) " ).should == "true"
    @nendo.replStr( " (eq? 1 2) " ).should == "false"
    @nendo.replStr( " (eq? 'a 'a) " ).should == "true"
    @nendo.replStr( " (eq? 'b 'b) " ).should == "true"
    @nendo.replStr( " (eq? 'a-b 'a-b) " ).should == "true"
    @nendo.replStr( " (eq? 'a_b 'a-b) " ).should == "false"
    @nendo.replStr( " (eq? 'a-b 'a_b) " ).should == "false"
    @nendo.replStr( " (< 1 1) " ).should == "false"
    @nendo.replStr( " (< 1 2) " ).should == "true"
    @nendo.replStr( " (> 1 1) " ).should == "false"
    @nendo.replStr( " (> 2 1) " ).should == "true"
    @nendo.replStr( " (<= 1 0) " ).should == "false"
    @nendo.replStr( " (<= 1 1) " ).should == "true"
    @nendo.replStr( " (<= 1 2) " ).should == "true"
    @nendo.replStr( " (>= 0 1) " ).should == "false"
    @nendo.replStr( " (>= 1 1) " ).should == "true"
    @nendo.replStr( " (equal? 1 1) " ).should == "true"
    @nendo.replStr( " (equal? 1 2) " ).should == "false"
    @nendo.replStr( " (equal? 2 2) " ).should == "true"
    @nendo.replStr( " (equal? '() '()) " ).should == "true"
    @nendo.replStr( " (equal? '(1) '(1)) " ).should == "true"
    @nendo.replStr( " (equal? '(1) '(2)) " ).should == "false"
    @nendo.replStr( " (equal? '(1 2 3) '(1 2 3)) " ).should == "true"
    @nendo.replStr( " (equal? '(1 2 . 3) '(1 2 . 3)) " ).should == "true"
    @nendo.replStr( " (equal? '(1 2 (3)) '(1 2 (3))) " ).should == "true"
    @nendo.replStr( " (equal? '(1 2 (3)) '(1 2 (4))) " ).should == "false"
    @nendo.replStr( " (equal? '(1 2 (3 (4))) '(1 2 (3 (4)))) " ).should == "true"
    @nendo.replStr( " (equal? '((1) 2 3 4) '((2) 2 3 4)) " ).should == "false"
    @nendo.replStr( " (equal? \"aaa\" \"aaa\") " ).should == "true"
    @nendo.replStr( " (equal? \"aaa\" \"aax\") " ).should == "false"
    @nendo.replStr( " (equal? '(\"aaa\") '(\"aaa\")) " ).should == "true"
    @nendo.replStr( " (equal? '(\"aaa\" (1)) '(\"aaa\" (1))) " ).should == "true"
    @nendo.replStr( " (equal? '(\"aaa\" (1)) '(\"aaa\" (2))) " ).should == "false"
  end
end

describe Nendo, "when call replStr() with boolean operators" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.replStr( " true " ).should == "true"
    @nendo.replStr( " false " ).should == "false"
    @nendo.replStr( " (not true) " ).should == "false"
    @nendo.replStr( " (not 1) " ).should == "false"
    @nendo.replStr( " (not false) " ).should == "true"
    @nendo.replStr( " (not \"str\") " ).should == "false"
    @nendo.replStr( " (not not) " ).should == "false"
    @nendo.replStr( " (not (not true)) " ).should == "true"
    @nendo.replStr( " (not '()) " ).should == "false"
    @nendo.replStr( " (not '(1)) " ).should == "false"
  end
end

describe Nendo, "when call replStr() with `+' function" do
  before do
    @nendo = Nendo.new()
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
    @nendo = Nendo.new()
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
    @nendo = Nendo.new()
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
    @nendo = Nendo.new()
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
    @nendo = Nendo.new()
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
    @nendo = Nendo.new()
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
    @nendo.replStr( " '(a b c d e  .  ()) " ).should == "(a b c d e)"
  end
end

describe Nendo, "when call replStr() with built-in functions" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.replStr( " (car '(1 2 3 4)) " ).should == "1"
    @nendo.replStr( " (cdr '(1 2 3 4)) " ).should == "(2 3 4)"
    @nendo.replStr( " (null? '()) " ).should == "true"
    @nendo.replStr( " (null? '(1)) " ).should == "false"
    @nendo.replStr( " (null? false) " ).should == "false"
    @nendo.replStr( " (null? nil) " ).should == "false"
    @nendo.replStr( " (null? true) " ).should == "false"
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
    @nendo.replStr( " (define aFunc (lambda (x) x)) true" ).should == "true"
    @nendo.replStr( " (define aMacro (macro (x) x)) true" ).should == "true"
    @nendo.replStr( " (define a! 123) a!" ).should == "123"
    @nendo.replStr( " (define b? 321) b?" ).should == "321"
    @nendo.replStr( " (define a-b 1234) a-b" ).should == "1234"
    @nendo.replStr( " (define start-end!? 4321) start-end!?" ).should == "4321"
    @nendo.replStr( " (procedure? car) " ).should == "true"
    @nendo.replStr( " (procedure? aFunc) " ).should == "true"
    @nendo.replStr( " (procedure? aMacro) " ).should == "false"
    @nendo.replStr( " (procedure? 1) " ).should == "false"
    @nendo.replStr( " (procedure? 1.1) " ).should == "false"
    @nendo.replStr( " (procedure? \"str\") " ).should == "false"
    @nendo.replStr( " (procedure? 'a) " ).should == "false"
    @nendo.replStr( " (procedure? '(1)) " ).should == "false"
    @nendo.replStr( " (procedure? '()) " ).should == "false"
    @nendo.replStr( " (symbol? car) " ).should == "false"
    @nendo.replStr( " (symbol? aFunc) " ).should == "false"
    @nendo.replStr( " (symbol? aMacro) " ).should == "false"
    @nendo.replStr( " (symbol? 1) " ).should == "false"
    @nendo.replStr( " (symbol? 1.1) " ).should == "false"
    @nendo.replStr( " (symbol? \"str\") " ).should == "false"
    @nendo.replStr( " (symbol? 'a) " ).should == "true"
    @nendo.replStr( " (symbol? '(1)) " ).should == "false"
    @nendo.replStr( " (symbol? '()) " ).should == "false"
    @nendo.replStr( " (pair? car) " ).should == "false"
    @nendo.replStr( " (pair? aFunc) " ).should == "false"
    @nendo.replStr( " (pair? aMacro) " ).should == "false"
    @nendo.replStr( " (pair? 1) " ).should == "false"
    @nendo.replStr( " (pair? 1.1) " ).should == "false"
    @nendo.replStr( " (pair? \"str\") " ).should == "false"
    @nendo.replStr( " (pair? 'a) " ).should == "false"
    @nendo.replStr( " (pair? '(1)) " ).should == "true"
    @nendo.replStr( " (pair? '()) " ).should == "false"
    @nendo.replStr( " (number? car) " ).should == "false"
    @nendo.replStr( " (number? aFunc) " ).should == "false"
    @nendo.replStr( " (number? aMacro) " ).should == "false"
    @nendo.replStr( " (number? 1) " ).should == "true"
    @nendo.replStr( " (number? 1.1) " ).should == "true"
    @nendo.replStr( " (number? \"str\") " ).should == "false"
    @nendo.replStr( " (number? 'a) " ).should == "false"
    @nendo.replStr( " (number? '(1)) " ).should == "false"
    @nendo.replStr( " (number? '()) " ).should == "false"
    @nendo.replStr( " (string? car) " ).should == "false"
    @nendo.replStr( " (string? aFunc) " ).should == "false"
    @nendo.replStr( " (string? aMacro) " ).should == "false"
    @nendo.replStr( " (string? 1) " ).should == "false"
    @nendo.replStr( " (string? 1.1) " ).should == "false"
    @nendo.replStr( " (string? \"str\") " ).should == "true"
    @nendo.replStr( " (string? 'a) " ).should == "false"
    @nendo.replStr( " (string? '(1)) " ).should == "false"
    @nendo.replStr( " (string? '()) " ).should == "false"
    @nendo.replStr( " (macro? car) " ).should == "false"
    @nendo.replStr( " (macro? aFunc) " ).should == "false"
    @nendo.replStr( " (macro? aMacro) " ).should == "true"
    @nendo.replStr( " (macro? 1) " ).should == "false"
    @nendo.replStr( " (macro? 1.1) " ).should == "false"
    @nendo.replStr( " (macro? \"str\") " ).should == "false"
    @nendo.replStr( " (macro? 'a) " ).should == "false"
    @nendo.replStr( " (macro? '(1)) " ).should == "false"
    @nendo.replStr( " (macro? '()) " ).should == "false"
    @nendo.replStr( " (length '()) " ).should == "0"
    @nendo.replStr( " (length '(1)) " ).should == "1"
    @nendo.replStr( " (length '((1))) " ).should == "1"
    @nendo.replStr( " (length '(1 2)) " ).should == "2"
    lambda { @nendo.replStr( " (length \"str\") " ) }.should  raise_error(TypeError)
    lambda { @nendo.replStr( " (length 1) " ) }.should  raise_error(TypeError)
    @nendo.replStr( " (symbol->string 'sym) " ).should == '"sym"'
    @nendo.replStr( " (string->symbol \"sym\") " ).should == 'sym'
  end
end

describe Nendo, "when call replStr() with variable modifications" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.replStr( " (define x 1)     x " ).should == "1"
    @nendo.replStr( " (define x 2)     x " ).should == "2"
    @nendo.replStr( " (define x 100)   x " ).should == "100"
    @nendo.replStr( " (define x true)  x " ).should == "true"
    @nendo.replStr( " (define x false) x " ).should == "false"
    @nendo.replStr( " (define x nil) x " ).should   == "nil"
    @nendo.replStr( " (define x '()) x " ).should   == "()"
    @nendo.replStr( " (define x '(1)) x " ).should   == "(1)"
    @nendo.replStr( " (define x (+ 1 2 3)) x " ).should   == "6"
    @nendo.replStr( " (define x (sprintf \"$%02X\" 17))    x  x  x " ).should   == '"$11"'
    @nendo.replStr( " 1 2 3 " ).should   == "3"
    @nendo.replStr( " (define x 3.14)  (set! x (* x 2))          x " ).should   == "6.28"
    @nendo.replStr( " 1 \n 2 \n 3 \n " ).should   == "3"
  end
end

describe Nendo, "when call replStr() with undefined variable" do
  before do
    @nendo = Nendo.new()
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
    @nendo = Nendo.new()
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
    lambda { @nendo.replStr( " (error \"My Runtime Error\") " ) }.should            raise_error( RuntimeError )
  end
end

describe Nendo, "when call replStr() with global and lexical scope variable" do
  before do
    @nendo = Nendo.new()
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
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.replStr( " (set! twice (macro (x) (list 'begin x x)))           (macroexpand-1 '(twice (+ 1 1))) " ).should == "(begin (+ 1 1) (+ 1 1))"
    @nendo.replStr( " (set! inc (macro (x) (list 'set! x (list '+ x 1))))  (macroexpand-1 '(inc a)) " ).should == "(set! a (+ a 1))"
    @nendo.replStr( " (set! a 10) (inc a) " ).should == "11"
    @nendo.replStr( " (set! a 10) (inc a) (inc a)" ).should == "12"
    @nendo.replStr( " (macroexpand-1 '(twice (twice (inc a))))" ).should ==
      "(begin (twice (inc a)) (twice (inc a)))"
    @nendo.replStr( " (macroexpand-1 (macroexpand-1 '(twice (twice (inc a)))))" ).should ==
      "(begin (begin (inc a) (inc a)) (twice (inc a)))"
    @nendo.replStr( " (macroexpand-1 (macroexpand-1 (macroexpand-1 '(twice (twice (inc a))))))" ).should ==
      "(begin (begin (set! a (+ a 1)) (inc a)) (twice (inc a)))"
    @nendo.replStr( " (macroexpand-1 (macroexpand-1 (macroexpand-1 (macroexpand-1 '(twice (twice (inc a)))))))" ).should ==
      "(begin (begin (set! a (+ a 1)) (set! a (+ a 1))) (twice (inc a)))"
    @nendo.replStr( " (set! a 10) (twice (twice (inc a)))" ).should == "14"
  end
end

describe Nendo, "when call functions in init.nnd " do
  before do
    @nendo = Nendo.new()
    @nendo.loadInitFile
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
    @nendo.replStr( " (nth 0  '(100 200 300)) " ).should == "100"
    @nendo.replStr( " (nth 1  '(100 200 300)) " ).should == "200"
    @nendo.replStr( " (nth 2  '(100 200 300)) " ).should == "300"
    @nendo.replStr( " (nth 3  '(100 200 300)) " ).should == "nil"
    @nendo.replStr( " (nth -1 '(100 200 300)) " ).should == "nil"
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
    @nendo.replStr( " (first   '()) " ).should == "nil"
    @nendo.replStr( " (tenth   '()) " ).should == "nil"
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
    @nendo.replStr( " (cond (false 1) (true  2)) " ).should == "2"
    @nendo.replStr( " (cond (true  1) (true  2)) " ).should == "1"
    @nendo.replStr( " (cond (false 1) (false 2)) " ).should == "()"
    @nendo.replStr( " (cond (false 1) (false 2) (else 3)) " ).should == "3"
    @nendo.replStr( " (cond ((- 10 9) => (lambda (x) (+ \"<\" (to_s x) \">\"))) (else 2)) " ).should == '"<1>"'
    @nendo.replStr( " (cond (true  1) ((- 10 8) => (lambda (x) (+ \"<\" (to_s x) \">\"))) (else 3)) " ).should == "1"
    @nendo.replStr( " (or) " ).should == "false"
    @nendo.replStr( " (or true) " ).should == "true"
    @nendo.replStr( " (or false) " ).should == "false"
    @nendo.replStr( " (or nil) " ).should == "false"
    @nendo.replStr( " (or '(1)) " ).should == "(1)"
    @nendo.replStr( " (or '()) " ).should == "()"
    @nendo.replStr( " (or true true true) " ).should == "true"
    @nendo.replStr( " (or 1 2 3) " ).should == "1"
    @nendo.replStr( " (or false 2) " ).should == "2"
    @nendo.replStr( " (or false false 3) " ).should == "3"
    @nendo.replStr( " (or false '(2) false) " ).should == "(2)"
    @nendo.replStr( " (and) " ).should == "true"
    @nendo.replStr( " (and true) " ).should == "true"
    @nendo.replStr( " (and false) " ).should == "false"
    @nendo.replStr( " (and nil) " ).should == "nil"
    @nendo.replStr( " (and '(1)) " ).should == "(1)"
    @nendo.replStr( " (and '()) " ).should == "()"
    @nendo.replStr( " (and true true true) " ).should == "true"
    @nendo.replStr( " (and 1 2 3) " ).should == "3"
    @nendo.replStr( " (and false 2) " ).should == "false"
    @nendo.replStr( " (and false false 3) " ).should == "false"
    @nendo.replStr( " (and true  2) " ).should == "2"
    @nendo.replStr( " (and true  true  3) " ).should == "3"
    @nendo.replStr( " (and true  true  3 false) " ).should == "false"
    @nendo.replStr( " (and true '(2) true) " ).should == "true"
    @nendo.replStr( " (and true true '(2)) " ).should == "(2)"
    @nendo.replStr( " (and true '(2) false) " ).should == "false"
    @nendo.replStr( " (define total 0) (and 1 2       (set! total (+ total 1)) (set! total (+ total 2)) 5)  total" ).should == "3"
    @nendo.replStr( " (define total 1) (and 1 2 false (set! total (+ total 2)) (set! total (+ total 3)) 5)  total" ).should == "1"
    @nendo.replStr( " (apply + 100 '()) " ).should == "100"
    @nendo.replStr( " (apply + '(1 2)) " ).should == "3"
    @nendo.replStr( " (apply + 1 2 '(3)) " ).should == "6"
    @nendo.replStr( " (apply + 1 2 '(3 4)) " ).should == "10"
    @nendo.replStr( " (apply + 1 2 3 '(4)) " ).should == "10"
    @nendo.replStr( ' (apply + \'("a" "b" "c")) ' ).should == '"abc"'
    @nendo.replStr( " (apply + (range 11)) " ).should == "55"
    @nendo.replStr( " (apply + (map (lambda (x) (+ x 1)) (range 10))) " ).should == "55"
    @nendo.replStr( " (apply + (append (range 11) '(100))) " ).should == "155"
    @nendo.replStr( " (map (lambda (x) (* x 2)) '(1 2 3)) " ).should == "(2 4 6)"
    @nendo.replStr( " (map (lambda (x) (+ x 1)) '(1 2 3)) " ).should == "(2 3 4)"
    @nendo.replStr( " (for-each (lambda (x) (* x 2)) '(1 2 3)) " ).should == "(2 4 6)"
    @nendo.replStr( " (for-each (lambda (x) (+ x 1)) '(1 2 3)) " ).should == "(2 3 4)"
    @nendo.replStr( " (filter     (lambda (x) (= x 100))     '(1 2 3)) " ).should == "()"
    @nendo.replStr( " (filter     (lambda (x) (= x 2))       '(1 2 3)) " ).should == "(2)"
    @nendo.replStr( " (filter     (lambda (x) (not (= x 2))) '(1 2 3)) " ).should == "(1 3)"
    @nendo.replStr( " (filter     (lambda (x) (if (= x 2) (* x 100) false))   '(1 2 3)) " ).should == "(2)"
    @nendo.replStr( " (find       (lambda (x) (= x 100))     '(1 2 3)) " ).should == "false"
    @nendo.replStr( " (find       (lambda (x) (= x 2))       '(1 2 3)) " ).should == "2"
    @nendo.replStr( " (find       (lambda (x) (not (= x 2))) '(1 2 3)) " ).should == "1"
    @nendo.replStr( " (find       (lambda (x) (if (= x 2) (* x 100) false))   '(1 2 3)) " ).should == "2"
    @nendo.replStr( " (filter-map (lambda (x) (= x 100))     '(1 2 3)) " ).should == "()"
    @nendo.replStr( " (filter-map (lambda (x) (= x 2))       '(1 2 3)) " ).should == "(true)"
    @nendo.replStr( " (filter-map (lambda (x) (not (= x 2))) '(1 2 3)) " ).should == "(true true)"
    @nendo.replStr( " (filter-map (lambda (x) (if (= x 2) (* x 10) false)) '(1 2 3)) " ).should == "(20)"
    @nendo.replStr( " (filter-map (lambda (x) (if (not (= x 2)) (* x 10) false)) '(1 2 3)) " ).should == "(10 30)"
  end
end

describe Nendo, "when use values " do
  before do
    @nendo = Nendo.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " (values? (make-values '())) " ).should == "true"
    lambda { @nendo.replStr( " (make-values '(1))) " ) }.should        raise_error(ArgumentError)
    @nendo.replStr( " (values? (make-values '(1 2))) " ).should == "true"
    @nendo.replStr( " (values? (make-values '(1 2 3))) " ).should == "true"
    @nendo.replStr( " (values? (values)) " ).should == "true"
    @nendo.replStr( " (values? (values 1)) " ).should == "false"
    @nendo.replStr( " (values 1) " ).should == "1"
    @nendo.replStr( " (values? (values 1 2)) " ).should == "true"
    @nendo.replStr( " (values? (values 1 2 3)) " ).should == "true"
    @nendo.replStr( " (values? (values '(a) \"b\" '(\"C\"))) " ).should == "true"
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
    @nendo = Nendo.new()
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
    @nendo = Nendo.new()
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
    @nendo = Nendo.new()
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
  end
end

describe Nendo, "when use macros expands some syntax. " do
  before do
    @nendo = Nendo.new()
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
  end
end

describe Nendo, "when use dot-operator (.) macro " do
  before do
    @nendo = Nendo.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " (macroexpand '(. a b)) " ).should == "(a.b)"
    @nendo.replStr( " (macroexpand '(. a b c)) " ).should == "(a.b c)"
    @nendo.replStr( " (macroexpand '(. Kernel open)) " ).should == "(Kernel.open)"
    @nendo.replStr( " (macroexpand '(. open)) " ).should == "(.open)"
    @nendo.replStr( " (macroexpand '(. a size)) " ).should == "(a.size)"
    @nendo.replStr( " (macroexpand '(. (. a size) to_s)) " ).should == "(let ((__gensym__5 (a.size))) (__gensym__5.to_s))"
    @nendo.replStr( " (macroexpand '(. (. (. a size) to_s) to_i)) " ).should == "(let ((__gensym__7 (let ((__gensym__8 (a.size))) (__gensym__8.to_s)))) (__gensym__7.to_i))"
    lambda { @nendo.replStr( " (macroexpand '(. (. a size))) " ) }.should             raise_error( RuntimeError )
    @nendo.replStr( " (set! str \"str\") str.size " ).should == "3"
    @nendo.replStr( " (set! str \"str\") (. str size) " ).should == "3"
    @nendo.replStr( " (set! str \"str\") (+ 1 (. str size)) " ).should == "4"
    @nendo.replStr( " (set! str \"string\") (. (. str size) to_s) " ).should == '"6"'
    @nendo.replStr( " (to-s str.size) " ).should == '"6"'
    @nendo.replStr( " (to-s 'str.size) " ).should == '"str.size"'
    @nendo.replStr( " (require \"date\") " ).should == "false"
    @nendo.replStr( " (. (Date.new 0) strftime \"%x\") " ).should == '"01/01/00"'
    @nendo.replStr( " (. (Date.new 0) strftime \"%s\") " ).should == '"-62167392000"'
    @nendo.replStr( " (require \"digest/md5\") " ).should == "false"
    @nendo.replStr( " (Digest::MD5.hexdigest \"abc\") " ).should ==           '"900150983cd24fb0d6963f7d28e17f72"'
    @nendo.replStr( " (Digest::MD5.hexdigest \"source text\") " ).should ==   '"20f79a1416626eeacc0bd9a8db87faa2"'
    @nendo.replStr( " (define a 1) (a.is_a? Fixnum) " ).should ==     "true"
    @nendo.replStr( " (define a 1) (a.is_a? Float) " ).should ==      "false"
    @nendo.replStr( " (define a 1) (a.is_a? String) " ).should ==     "false"
    @nendo.replStr( " (define a 1.1) (a.is_a? Fixnum) " ).should ==   "false"
    @nendo.replStr( " (define a 1.1) (a.is_a? Float) " ).should ==    "true"
    @nendo.replStr( " (define a 1.1) (a.is_a? String) " ).should ==   "false"
    @nendo.replStr( " (define a \"s\") (a.is_a? Fixnum) " ).should == "false"
    @nendo.replStr( " (define a \"s\") (a.is_a? Float) " ).should ==  "false"
    @nendo.replStr( " (define a \"s\") (a.is_a? String) " ).should == "true"
  end
end

describe Nendo, "when use keyword feature " do
  before do
    @nendo = Nendo.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " (keyword? :a) " ).should == "true"
    @nendo.replStr( ' (keyword? (intern ":a")) ' ).should == "false"
    @nendo.replStr( ' (symbol?  (intern ":a")) ' ).should == "true"
    @nendo.replStr( " (keyword? ':a) " ).should == "true"
    @nendo.replStr( " (symbol? ':a) " ).should == "false"
    @nendo.replStr( " (eq?  :a :a) " ).should == "true"
    @nendo.replStr( " (eqv? :a :a) " ).should == "true"
    @nendo.replStr( ' (eq?  :a (intern ":a")) ' ).should == "false"
    @nendo.replStr( ' (eqv? :a (intern ":a")) ' ).should == "false"
    @nendo.replStr( ' (keyword? (make-keyword "a")) ' ).should == "true"
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
    @nendo.replStr( " (get-keyword :t '() #f) " ).should == "false"
    @nendo.replStr( " (get-keyword :t '(:x) #f) " ).should == "false"
    lambda { @nendo.replStr( " (get-keyword :t '()) " ) }.should                  raise_error( RuntimeError )
    lambda { @nendo.replStr( " (get-keyword :t '(:x)) " ) }.should                raise_error( RuntimeError )
    lambda { @nendo.replStr( " (get-keyword :t 1) " ) }.should                    raise_error( RuntimeError )
    @nendo.replStr( " (get-keyword :t 1 #f) " ).should == "false"
  end
end

describe Nendo, "when use hash-table feature " do
  before do
    @nendo = Nendo.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.replStr( " (define h (make-hash-table)) " ).should == "{}"
    @nendo.replStr( " (hash-table? 1) " ).should == "false"
    @nendo.replStr( " (hash-table? '(1)) " ).should == "false"
    @nendo.replStr( " (hash-table? (Array.new)) " ).should == "false"
    @nendo.replStr( " (hash-table? (Hash.new)) " ).should == "true"
    @nendo.replStr( " h " ).should == "{}"
    @nendo.replStr( " (hash-table-put! h 'k1 'v1) h" ).should == "{:k1=>:v1}"
    @nendo.replStr( " (hash-table-put! h 'k2 200) h" ).should == "{:k1=>:v1, :k2=>200}"
    @nendo.replStr( " (hash-table-get  h 'k1)" ).should == "v1"
    @nendo.replStr( " (hash-table-get  h 'k2)" ).should == "200"
    @nendo.replStr( " (hash-table-exist? h 'k1)" ).should == "true"
    @nendo.replStr( " (hash-table-exist? h 'k2)" ).should == "true"
    @nendo.replStr( " (hash-table-exist? h 'k3)" ).should == "false"
    @nendo.replStr( " (hash-table-exist? h \"k1\")" ).should == "false"
    @nendo.replStr( " (hash-table-num-entries h)" ).should == "2"
    @nendo.replStr( " (hash-table-delete! h 'k1)" ).should == "v1"
    lambda { @nendo.replStr( " (hash-table-get h 'k1)" ) }.should                 raise_error( RuntimeError )
    @nendo.replStr( " (hash-table-get h 'k1 #f) " ).should == "false"
    @nendo.replStr( " (hash-table-num-entries h)" ).should == "1"
    @nendo.replStr( " (hash-table-clear! h)" ).should == "{}"
    @nendo.replStr( " (hash-table-num-entries h)" ).should == "0"
    @nendo.replStr( " (set! h (hash-table '(\"a\" \"AAA\") '(\"b\" \"BBB\") '(\"c\" \"CCC\")))  h" ).should == "{\"a\"=>\"AAA\", \"b\"=>\"BBB\", \"c\"=>\"CCC\"}"
    @nendo.replStr( " (hash-table-keys       h)" ).should == '("a" "b" "c")'
    @nendo.replStr( " (hash-table-values     h)" ).should == '("AAA" "BBB" "CCC")'
    @nendo.replStr( " (hash-table-map        h (lambda (a b) (+ a b)))" ).should == '("aAAA" "bBBB" "cCCC")'
    @nendo.replStr( " (hash-table-for-each   h (lambda (a b) (+ a b)))" ).should == '("aAAA" "bBBB" "cCCC")'
  end
end

