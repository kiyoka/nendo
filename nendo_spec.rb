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

describe Nendo, "when call replStr() with literals" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.replStr( " 1 " ).should == "1"
    @nendo.replStr( " 100000 " ).should == "100000"
    @nendo.replStr( " 1.1 " ).should == "1.1"
    @nendo.replStr( " 1.0 " ).should == "1.0"
    @nendo.replStr( " \"a\" " ).should == "\"a\""
    @nendo.replStr( " \"日本語\" " ).should == "\"日本語\""
    @nendo.replStr( " \"\n\" " ).should == "\"\n\""
    @nendo.replStr( " true " ).should == "true"
    @nendo.replStr( " false " ).should == "false"
    @nendo.replStr( " nil " ).should == "nil"
  end
end

describe Nendo, "when call replStr() with comparative operators" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.replStr( " (= 1 1) " ).should == "true"
    @nendo.replStr( " (= 1 2) " ).should == "false"
    @nendo.replStr( " (< 1 1) " ).should == "false"
    @nendo.replStr( " (< 1 2) " ).should == "true"
    @nendo.replStr( " (> 1 1) " ).should == "false"
    @nendo.replStr( " (> 2 1) " ).should == "true"
    @nendo.replStr( " (<= 1 0) " ).should == "false"
    @nendo.replStr( " (<= 1 1) " ).should == "true"
    @nendo.replStr( " (<= 1 2) " ).should == "true"
    @nendo.replStr( " (>= 0 1) " ).should == "false"
    @nendo.replStr( " (>= 1 1) " ).should == "true"
    @nendo.replStr( " (>= 2 1) " ).should == "true"
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
    @nendo.replStr( " (and true) " ).should == "true"
    @nendo.replStr( " (and false) " ).should == "false"
    @nendo.replStr( " (and nil) " ).should == "false"
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
    @nendo.replStr( " (+ \"a\" \"B\" \"c\" ) " ).should == "\"aBc\""
    lambda { @nendo.replStr( " (+) " ) }.should              raise_error(ArgumentError)
    lambda { @nendo.replStr( " (+ '(1) ) " ) }.should        raise_error(ArgumentError)
    lambda { @nendo.replStr( " (+ '() ) " ) }.should         raise_error(ArgumentError)
    lambda { @nendo.replStr( " (+ 1 '() ) " ) }.should       raise_error(ArgumentError)
    lambda { @nendo.replStr( " (+ 1.1 '() ) " ) }.should     raise_error(ArgumentError)
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
    @nendo.replStr( " (- 1.1 1) " ).should == "0.1"
    @nendo.replStr( " (- 1.3 1.1) " ).should == "0.2"
    lambda { @nendo.replStr( " (- '() ) " ) }.should         raise_error(ArgumentError)
    lambda { @nendo.replStr( " (- '(1) ) " ) }.should        raise_error(ArgumentError)
    lambda { @nendo.replStr( " (- 1 '() ) " ) }.should       raise_error(ArgumentError)
    lambda { @nendo.replStr( " (- 1.1 '() ) " ) }.should     raise_error(ArgumentError)
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
    @nendo.replStr( " (* 1.3 1.1) " ).should == "1.43"
    lambda { @nendo.replStr( " (* '() ) " ) }.should         raise_error(ArgumentError)
    lambda { @nendo.replStr( " (* 1 '() ) " ) }.should       raise_error(ArgumentError)
    lambda { @nendo.replStr( " (* 1.1 '() ) " ) }.should     raise_error(ArgumentError)
    lambda { @nendo.replStr( " (* 1.1 \"a\" ) " ) }.should   raise_error(TypeError)
  end
end

describe Nendo, "when call replStr() with `/' function" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.replStr( " (/ 1) " ).should == "1"
    @nendo.replStr( " (/ 1.1) " ).should == "0.909090909090909"
    @nendo.replStr( " (/ 2 1) " ).should == "2"
    @nendo.replStr( " (/ 2 2) " ).should == "1"
    @nendo.replStr( " (/ 2 2.0) " ).should == "1.0"
    @nendo.replStr( " (/ 2 5.0) " ).should == "0.4"
    @nendo.replStr( " (/ 10.0 2 2 2 2 2 2 2 2 2 2) " ).should == "0.009765625"
    @nendo.replStr( " (/ 100 (/ 100 10) 10) " ).should == "1"
    @nendo.replStr( " (/ 1 1.11) " ).should == "0.900900900900901"
    @nendo.replStr( " (/ 1.3 1.1) " ).should == "1.18181818181818"
    lambda { @nendo.replStr( " (/ '() ) " ) }.should        raise_error(ArgumentError)
    lambda { @nendo.replStr( " (/ 1 '() ) " ) }.should      raise_error(ArgumentError)
    lambda { @nendo.replStr( " (/ 1.1 '() ) " ) }.should    raise_error(ArgumentError)
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
    @nendo.replStr( " (% 1.3 1.1) " ).should == "0.2"
    lambda { @nendo.replStr( " (% '() ) " ) }.should        raise_error(ArgumentError)
    lambda { @nendo.replStr( " (% 1 '() ) " ) }.should      raise_error(ArgumentError)
    lambda { @nendo.replStr( " (% 1.1 '() ) " ) }.should    raise_error(ArgumentError)
    lambda { @nendo.replStr( " (% 1.1 \"a\" ) " ) }.should  raise_error(TypeError)
  end
end

describe Nendo, "when read various list expressions" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.replStr( " '() " ).should == "()"
    @nendo.replStr( " '(1 . 1) " ).should == "(1 . 1)"
    @nendo.replStr( " '(1 2 3) " ).should == "(1 2 3)"
    @nendo.replStr( " '(1.1 2.2 3.3) " ).should == "(1.1 2.2 3.3)"
    @nendo.replStr( " '(a bb ccc dddd) " ).should == "(a bb ccc dddd)"
    @nendo.replStr( " '(a (b) ((c)) (((d)))) " ).should == "(a (b) ((c)) (((d))))"
    @nendo.replStr( " '('a)" ).should == "((quote a))"
    @nendo.replStr( " '(''a)" ).should == "((quote (quote a)))"
    @nendo.replStr( " '('a 'b 'c)" ).should == "((quote a) (quote b) (quote c))"
    @nendo.replStr( " '(\"str\") " ).should == "(\"str\")"
    @nendo.replStr( " '(\"str\" . 1) " ).should == "(\"str\" . 1)"
    @nendo.replStr( " '(1 . \"str\") " ).should == "(1 . \"str\")"
    @nendo.replStr( " '((a)(b)(c)) " ).should == "((a) (b) (c))"
    @nendo.replStr( " 'a " ).should == "a"
    @nendo.replStr( " 'symbol " ).should == "symbol"
    @nendo.replStr( " 'SYMBOL " ).should == "SYMBOL"
    @nendo.replStr( " 'SyMbOl " ).should == "SyMbOl"
    @nendo.replStr( " ''a " ).should == "(quote a)"
    @nendo.replStr( " '1 " ).should == "1"
    @nendo.replStr( " ''1 " ).should == "(quote 1)"
    @nendo.replStr( " '''1 " ).should == "(quote (quote 1))"
    @nendo.replStr( " '1.1 " ).should == "1.1"
    @nendo.replStr( " ''1.1 " ).should == "(quote 1.1)"
    @nendo.replStr( " '''1.1 " ).should == "(quote (quote 1.1))"
  end
end

describe Nendo, "when call replStr() with built-in functions" do
  before do
    @nendo = Nendo.new()
  end
  it "should" do
    @nendo.replStr( " (car '(1 2 3 4)) " ).should == "1"
    @nendo.replStr( " (first '(1 2 3 4)) " ).should == "1"
    @nendo.replStr( " (cadr '(1 2 3 4)) " ).should == "2"
    @nendo.replStr( " (caddr '(1 2 3 4)) " ).should == "3"
    @nendo.replStr( " (cadddr '(1 2 3 4)) " ).should == "4"
    @nendo.replStr( " (cdr '(1 2 3 4)) " ).should == "(2 3 4)"
    @nendo.replStr( " (rest '(1 2 3 4)) " ).should == "(2 3 4)"
    @nendo.replStr( " (null? '()) " ).should == "true"
    @nendo.replStr( " (null? '(1)) " ).should == "false"
    @nendo.replStr( " (null? false) " ).should == "false"
    @nendo.replStr( " (null? nil) " ).should == "false"
    @nendo.replStr( " (null? true) " ).should == "false"
    @nendo.replStr( " (cons 1 2) " ).should == "(1 . 2)"
    @nendo.replStr( " (cons 1 '(2 3)) " ).should == "(1 2 3)"
    @nendo.replStr( " (cons '(1 2) '(3 4)) " ).should == "((1 2) 3 4)"
    @nendo.replStr( " (cons '(1 2) '((3 4))) " ).should == "((1 2) (3 4))"
    lambda { @nendo.replStr( " (cons 1 2 3) " ) }.should    raise_error(ArgumentError)
    lambda { @nendo.replStr( " (cons 1) " ) }.should        raise_error(ArgumentError)
    lambda { @nendo.replStr( " (cons) " ) }.should          raise_error(ArgumentError)
    @nendo.replStr( " (list 1 2 3) " ).should == "(1 2 3)"
    @nendo.replStr( " (list '(1) '(2) '(3)) " ).should == "((1) (2) (3))"
    @nendo.replStr( " (list 'a 'b 'c) " ).should == "(a b c)"
    @nendo.replStr( " (list '(a) '((b c))) " ).should == "((a) ((b c)))"
    @nendo.replStr( " (list) " ).should == "()"
    @nendo.replStr( " (list 1) " ).should == "(1)"
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
    @nendo.replStr( " (define x (sprintf \"$%02X\" 17))    x  x  x " ).should   == "\"$11\""
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
    @nendo.replStr( " (define x 2) (define y (begin (set! x (* x 2)) (set! x (* x 2)) (set! x (* x 2)) 100))  (+ x y)" ).should == "116"
    @nendo.replStr( " (let ()                 100) " ).should == "100"
    @nendo.replStr( " (let ((a 11))           a) " ).should == "11"
    @nendo.replStr( " (let ((a 11) (b 22))    (+ a b)) " ).should == "33"
    @nendo.replStr( " (if true   'T 'F)" ).should == "T"
    @nendo.replStr( " (if true   '(1) '(2))" ).should == "(1)"
    @nendo.replStr( " (if false  'T 'F)" ).should == "F"
    @nendo.replStr( " (if false  '(1) '(2))" ).should == "(2)"
    @nendo.replStr( " (define x 0) (if true  (set! x 1) (set! x 2))   x" ).should == "1"
    @nendo.replStr( " (define x 0) (if false (set! x 1) (set! x 2))   x" ).should == "2"
    @nendo.replStr( " (define func (lambda (arg1) arg1))              (func 1) " ).should == "1"
    @nendo.replStr( " (define func (lambda (arg1) arg1))              (func 2) " ).should == "2"
    pending( "These anonymous procedure code does not work." ) do
      @nendo.replStr( " ((lambda (arg1) arg1)  3)" ).should == "3" 
      @nendo.replStr( " ((lambda (arg1) arg1)  (+ 1 2 3))" ).should == "6" 
    end
  end
end



#    @nendo.replStr( " (let name1 ((a 1)) name1) ").should == "1"

#  replTest( " (define x 1) \n (set! x 2) \n x" )
#  replTest( " (define plusone (lambda (a) (+ a 1))) \n (plusone 1) " )
#  replTest( " (define x 1) \n (set! x 2) \n x" )
#  replTest( " (define plusone (lambda (a) (+ a 1))) \n (plusone 1) " )
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
