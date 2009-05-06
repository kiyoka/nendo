#!/usr/bin/env ruby

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
  end
end

describe Cell, "when initialized as '(100 . 200)" do
  before do
    @cell = Cell.new( 100, 200 )
  end
  
  it "should" do
    @cell.isNull.should_not be_true
    @cell.isDotted.should be_true
    lambda { @cell.length }.should raise_error(TypeError)
    lambda { @cell.size }.should   raise_error(TypeError)
    @cell.car.should == 100
    @cell.cdr.should == 200
  end
end

describe Nendo, "when specify literals" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.evalSexp( " 1 " ).should == "1"
    @nendo.evalSexp( " 100000 " ).should == "100000"
    @nendo.evalSexp( " 1.1 " ).should == "1.1"
    @nendo.evalSexp( " 1.0 " ).should == "1.0"
    @nendo.evalSexp( " \"a\" " ).should == "\"a\""
    @nendo.evalSexp( " \"日本語\" " ).should == "\"日本語\""
    @nendo.evalSexp( " \"\n\" " ).should == "\"\n\""
  end
end

describe Nendo, "when call evalSexp() with comparative operators" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.evalSexp( " (= 1 1) " ).should == "true"
    @nendo.evalSexp( " (= 1 2) " ).should == "false"
    @nendo.evalSexp( " (< 1 1) " ).should == "false"
    @nendo.evalSexp( " (< 1 2) " ).should == "true"
    @nendo.evalSexp( " (> 1 1) " ).should == "false"
    @nendo.evalSexp( " (> 2 1) " ).should == "true"
    @nendo.evalSexp( " (<= 1 0) " ).should == "false"
    @nendo.evalSexp( " (<= 1 1) " ).should == "true"
    @nendo.evalSexp( " (<= 1 2) " ).should == "true"
    @nendo.evalSexp( " (>= 0 1) " ).should == "false"
    @nendo.evalSexp( " (>= 1 1) " ).should == "true"
    @nendo.evalSexp( " (>= 2 1) " ).should == "true"
  end
end

describe Nendo, "when call evalSexp() with boolean operators" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.evalSexp( " true " ).should == "true"
    @nendo.evalSexp( " false " ).should == "false"
    @nendo.evalSexp( " (not true) " ).should == "false"
    @nendo.evalSexp( " (not 1) " ).should == "false"
    @nendo.evalSexp( " (not false) " ).should == "true"
    @nendo.evalSexp( " (not \"str\") " ).should == "false"
    @nendo.evalSexp( " (not not) " ).should == "false"
    @nendo.evalSexp( " (not (not true)) " ).should == "true"
    @nendo.evalSexp( " (not '()) " ).should == "false"
    @nendo.evalSexp( " (not '(1)) " ).should == "false"
    @nendo.evalSexp( " (or true) " ).should == "true"
    @nendo.evalSexp( " (or false) " ).should == "false"
    @nendo.evalSexp( " (or nil) " ).should == "false"
    @nendo.evalSexp( " (or '(1)) " ).should == "(1)"
    @nendo.evalSexp( " (or '()) " ).should == "()"
    @nendo.evalSexp( " (or true true true) " ).should == "true"
    @nendo.evalSexp( " (or 1 2 3) " ).should == "1"
    @nendo.evalSexp( " (or false 2) " ).should == "2"
    @nendo.evalSexp( " (or false false 3) " ).should == "3"
    @nendo.evalSexp( " (or false '(2) false) " ).should == "(2)"
    @nendo.evalSexp( " (and true) " ).should == "true"
    @nendo.evalSexp( " (and false) " ).should == "false"
    @nendo.evalSexp( " (and nil) " ).should == "false"
    @nendo.evalSexp( " (and '(1)) " ).should == "(1)"
    @nendo.evalSexp( " (and '()) " ).should == "()"
    @nendo.evalSexp( " (and true true true) " ).should == "true"
    @nendo.evalSexp( " (and 1 2 3) " ).should == "3"
    @nendo.evalSexp( " (and false 2) " ).should == "false"
    @nendo.evalSexp( " (and false false 3) " ).should == "false"
    @nendo.evalSexp( " (and true  2) " ).should == "2"
    @nendo.evalSexp( " (and true  true  3) " ).should == "3"
    @nendo.evalSexp( " (and true  true  3 false) " ).should == "false"
    @nendo.evalSexp( " (and true '(2) true) " ).should == "true"
    @nendo.evalSexp( " (and true true '(2)) " ).should == "(2)"
    @nendo.evalSexp( " (and true '(2) false) " ).should == "false"
  end
end

describe Nendo, "when call evalSexp() with `+' function" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.evalSexp( " (+ 1) " ).should == "1"
    @nendo.evalSexp( " (+ 1 1) " ).should == "2"
    @nendo.evalSexp( " (+ 1 1 1 1 1 1 1 1 1 1) " ).should == "10"
    @nendo.evalSexp( " (+ 1 2 3 4 5) " ).should == "15"
    @nendo.evalSexp( " (+ 1 (+ 2 (+ 3 (+ 4 (+ 5))))) " ).should == "15"
    @nendo.evalSexp( " (+ 1   1.1) " ).should == "2.1"
    @nendo.evalSexp( " (+ 1.1 1.2) " ).should == "2.3"
    @nendo.evalSexp( " (+ \"a\" \"B\" \"c\" ) " ).should == "\"aBc\""
    lambda { @nendo.evalSexp( " (+) " ) }.should              raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (+ '(1) ) " ) }.should        raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (+ '() ) " ) }.should         raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (+ 1 '() ) " ) }.should       raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (+ 1.1 '() ) " ) }.should     raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (+ 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
    lambda { @nendo.evalSexp( " (+ \"a\" 1) " ) }.should      raise_error(TypeError)
    lambda { @nendo.evalSexp( " (+ \"a\" 1.1) " ) }.should    raise_error(TypeError)
  end
end

describe Nendo, "when call evalSexp() with `-' function" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.evalSexp( " (- 1) " ).should == "-1"
    @nendo.evalSexp( " (- 2 1) " ).should == "1"
    @nendo.evalSexp( " (- 2 5) " ).should == "-3"
    @nendo.evalSexp( " (- 100 1 1 1 1 1 1 1 1 1 1) " ).should == "90"
    @nendo.evalSexp( " (- 100 (- 10 3))) " ).should == "93"
    @nendo.evalSexp( " (- 1.1 1) " ).should == "0.1"
    @nendo.evalSexp( " (- 1.3 1.1) " ).should == "0.2"
    lambda { @nendo.evalSexp( " (- '() ) " ) }.should         raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (- '(1) ) " ) }.should        raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (- 1 '() ) " ) }.should       raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (- 1.1 '() ) " ) }.should     raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (- 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
  end
end

describe Nendo, "when call evalSexp() with `*' function" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.evalSexp( " (* 1) " ).should == "1"
    @nendo.evalSexp( " (* 2 1) " ).should == "2"
    @nendo.evalSexp( " (* 2 5) " ).should == "10"
    @nendo.evalSexp( " (* 1 2 3 4 5 6 7 8 9 10) " ).should == "3628800"
    @nendo.evalSexp( " (* 100 (* 10 10 10))) " ).should == "100000"
    @nendo.evalSexp( " (* 1.1 1) " ).should == "1.1"
    @nendo.evalSexp( " (* 1.3 1.1) " ).should == "1.43"
    lambda { @nendo.evalSexp( " (* '() ) " ) }.should         raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (* 1 '() ) " ) }.should       raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (* 1.1 '() ) " ) }.should     raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (* 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
  end
end

describe Nendo, "when call evalSexp() with `/' function" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.evalSexp( " (/ 1) " ).should == "1"
    @nendo.evalSexp( " (/ 1.1) " ).should == "0.909090909090909"
    @nendo.evalSexp( " (/ 2 1) " ).should == "2"
    @nendo.evalSexp( " (/ 2 2) " ).should == "1"
    @nendo.evalSexp( " (/ 2 2.0) " ).should == "1.0"
    @nendo.evalSexp( " (/ 2 5.0) " ).should == "0.4"
    @nendo.evalSexp( " (/ 10.0 2 2 2 2 2 2 2 2 2 2) " ).should == "0.009765625"
    @nendo.evalSexp( " (/ 100 (/ 100 10) 10) " ).should == "1"
    @nendo.evalSexp( " (/ 1 1.11) " ).should == "0.900900900900901"
    @nendo.evalSexp( " (/ 1.3 1.1) " ).should == "1.18181818181818"
    lambda { @nendo.evalSexp( " (/ '() ) " ) }.should        raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (/ 1 '() ) " ) }.should      raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (/ 1.1 '() ) " ) }.should    raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (/ 1.1 \"a\" ) " ) }.should  raise_error(TypeError)
  end
end

describe Nendo, "when call evalSexp() with `%' function" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.evalSexp( " (% 1) " ).should == "0"
    @nendo.evalSexp( " (% 1.1) " ).should == "1.0"
    @nendo.evalSexp( " (% 2 1) " ).should == "0"
    @nendo.evalSexp( " (% 2 2) " ).should == "0"
    @nendo.evalSexp( " (% 2 2.0) " ).should == "0.0"
    @nendo.evalSexp( " (% 2 5.0) " ).should == "2.0"
    @nendo.evalSexp( " (% 100 (% 103 10)) " ).should == "1"
    @nendo.evalSexp( " (% 1 1.11) " ).should == "1.0"
    @nendo.evalSexp( " (% 1.3 1.1) " ).should == "0.2"
    lambda { @nendo.evalSexp( " (% '() ) " ) }.should        raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (% 1 '() ) " ) }.should      raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (% 1.1 '() ) " ) }.should    raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (% 1.1 \"a\" ) " ) }.should  raise_error(TypeError)
  end
end

describe Nendo, "when read various list expressions" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.evalSexp( " '() " ).should == "()"
    @nendo.evalSexp( " '(1 . 1) " ).should == "(1 . 1)"
    @nendo.evalSexp( " '(1 2 3) " ).should == "(1 2 3)"
    @nendo.evalSexp( " '(1.1 2.2 3.3) " ).should == "(1.1 2.2 3.3)"
    @nendo.evalSexp( " '(a bb ccc dddd) " ).should == "(a bb ccc dddd)"
    @nendo.evalSexp( " '(a (b) ((c)) (((d)))) " ).should == "(a (b) ((c)) (((d))))"
    @nendo.evalSexp( " '('a)" ).should == "((quote a))"
    @nendo.evalSexp( " '(''a)" ).should == "((quote (quote a)))"
    @nendo.evalSexp( " '('a 'b 'c)" ).should == "((quote a) (quote b) (quote c))"
    @nendo.evalSexp( " '(\"str\") " ).should == "(\"str\")"
    @nendo.evalSexp( " '(\"str\" . 1) " ).should == "(\"str\" . 1)"
    @nendo.evalSexp( " '(1 . \"str\") " ).should == "(1 . \"str\")"
    @nendo.evalSexp( " '((a)(b)(c)) " ).should == "((a) (b) (c))"
    @nendo.evalSexp( " 'a " ).should == "a"
    @nendo.evalSexp( " 'symbol " ).should == "symbol"
    @nendo.evalSexp( " ''a " ).should == "(quote a)"
    @nendo.evalSexp( " '1 " ).should == "1"
    @nendo.evalSexp( " ''1 " ).should == "(quote 1)"
    @nendo.evalSexp( " '''1 " ).should == "(quote (quote 1))"
    @nendo.evalSexp( " '1.1 " ).should == "1.1"
    @nendo.evalSexp( " ''1.1 " ).should == "(quote 1.1)"
    @nendo.evalSexp( " '''1.1 " ).should == "(quote (quote 1.1))"
  end
end

describe Nendo, "when call evalSexp() with built-in functions" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.evalSexp( " (car '(1 2 3 4)) " ).should == "1"
    @nendo.evalSexp( " (first '(1 2 3 4)) " ).should == "1"
    @nendo.evalSexp( " (cadr '(1 2 3 4)) " ).should == "2"
    @nendo.evalSexp( " (caddr '(1 2 3 4)) " ).should == "3"
    @nendo.evalSexp( " (cadddr '(1 2 3 4)) " ).should == "4"
    @nendo.evalSexp( " (cdr '(1 2 3 4)) " ).should == "(2 3 4)"
    @nendo.evalSexp( " (rest '(1 2 3 4)) " ).should == "(2 3 4)"
    @nendo.evalSexp( " (null? '()) " ).should == "true"
    @nendo.evalSexp( " (null? '(1)) " ).should == "false"
    @nendo.evalSexp( " (null? false) " ).should == "false"
    @nendo.evalSexp( " (null? nil) " ).should == "false"
    @nendo.evalSexp( " (null? true) " ).should == "false"
    @nendo.evalSexp( " (cons 1 2) " ).should == "(1 . 2)"
    @nendo.evalSexp( " (cons 1 '(2 3)) " ).should == "(1 2 3)"
    @nendo.evalSexp( " (cons '(1 2) '(3 4)) " ).should == "((1 2) 3 4)"
    @nendo.evalSexp( " (cons '(1 2) '((3 4))) " ).should == "((1 2) (3 4))"
    lambda { @nendo.evalSexp( " (cons 1 2 3) " ) }.should    raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (cons 1) " ) }.should        raise_error(ArgumentError)
    lambda { @nendo.evalSexp( " (cons) " ) }.should          raise_error(ArgumentError)
    @nendo.evalSexp( " (list 1 2 3) " ).should == "(1 2 3)"
    @nendo.evalSexp( " (list '(1) '(2) '(3)) " ).should == "((1) (2) (3))"
    @nendo.evalSexp( " (list 'a 'b 'c) " ).should == "(a b c)"
    @nendo.evalSexp( " (list '(a) '((b c))) " ).should == "((a) ((b c)))"
    @nendo.evalSexp( " (list) " ).should == "()"
    @nendo.evalSexp( " (list 1) " ).should == "(1)"
  end
end


#  replTest( " (+ \"123\" \"456\" ) " )
#  replTest( " (+ 1 2 (+ 3 4 )) " )
#  replTest( " (* 1 2 3 (* 4 5)) " )
#  replTest( " (- 10 5 1 ) " )
#  replTest( " (/ 10 4 2 ) " )
#  replTest( " (let ((a 11) (b 22)) (+ a b)) ")
#  replTest( " (let ((a 1) (b 2)) (print (+ a b 100))) ")
#  replTest( " (let name1 ((a 1)) name1) ")
#  replTest( " (define x 1) \n (set! x 2) \n x" )
#  replTest( " (define plusone (lambda (a) (+ a 1))) \n (plusone 1) " )
#  replTest( " (if true  (printf \"%d\" 1) (printf \"%d\" 2)) " )
#  replTest( " (if false (printf \"%d\" 1) (printf \"%d\" 2)) " )
#  replTest( " (lambda (a) a) " )
#  replTest( " (lambda (a) (+ 1 2)) " )
#  replTest( " (car '(a b c)) " )
#  replTest( " (cdr '(a b c)) " )
#  replTest( " (+ (+ 1 2) (+ 3 4 )) " )
#  replTest( " (- (* 3 3) (* 2 2 )) " )
#  replTest( " (car '( 1 . 2 )) " )
#  replTest( " (cdr '( 1 . 2 )) " )
#  replTest( " (cons 3 4 ) " )
#  replTest( " (cons 3 '(4 5))) " )
#  replTest( " '( 1 ) " )
#  replTest( " '( 1 2 3 '4 ) " )
#  replTest( " (+ 123 \"456\" ) " )
#  replTest( " (+ \"123\" 456 ) " )
#  replTest( " (( 1 )) " )
#  replTest( " ( 1 2 ( 3 4 )) " )
#  replTest( " ( " )
#  replTest( " ) " )
#  replTest( " (define tak (lambda  (x y z)
#                        (if (> x y)
#                           (tak (tak (- x 1) y z)
#                            (tak (- y 1) z x)
#                            (tak (- z 1) x y))
#                           y)))
#              (tak 9 6 0)
#" )
