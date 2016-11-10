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



describe Nendo, "when use quote and syntax-quote " do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    expect(@nendo.evalStr( " '() " )).to                                                 eq("()")
    expect(@nendo.evalStr( " '1 " )).to                                                  eq("1")
    expect(@nendo.evalStr( " '\"str\" " )).to                                            eq('"str"')
    expect(@nendo.evalStr( " '(1 . 2) " )).to                                            eq("(1 . 2)")
    expect(@nendo.evalStr( " (quote ())" )).to                                           eq("()")
    expect(@nendo.evalStr( " (quote 1)" )).to                                            eq("1")
    expect(@nendo.evalStr( " (quote \"str\") " )).to                                     eq('"str"')
    expect(@nendo.evalStr( " (quote (1 . 2)) " )).to                                     eq("(1 . 2)")
    expect(@nendo.evalStr( " (syntax-quote ())" )).to                                    eq("()")
    expect(@nendo.evalStr( " (syntax-quote 1)" )).to                                     eq("1")
    expect(@nendo.evalStr( ' (syntax-quote "str") ' )).to                                eq('"str"')
    expect(@nendo.evalStr( " (syntax-quote (1 . 2)) " )).to                              eq("(1 . 2)")
    expect(@nendo.evalStr( " (quote quote) " )).to                                       eq("quote")
    expect(@nendo.evalStr( " 'quote " )).to                                              eq("quote")
    expect(@nendo.evalStr( " ''1 " )).to                                                 eq("(quote 1)")
    expect(@nendo.evalStr( " (quote syntax-quote) " )).to                                eq("quote")
    expect(@nendo.evalStr( " (syntax-quote '1) " )).to                                   eq("(quote 1)")
    expect(@nendo.evalStr( " (syntax-quote (quote 1)) " )).to                            eq("(quote 1)")
    expect(@nendo.evalStr( " (quote (syntax-quote 1)) " )).to                            eq("(quote 1)")
  end
end

describe Nendo, "when read various list expressions" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    expect(@nendo.evalStr( " '() " )).to eq("()")
    expect(@nendo.evalStr( " '[] " )).to eq("()")
    expect(@nendo.evalStr( " '(1 . 1) " )).to eq("(1 . 1)")
    expect(@nendo.evalStr( " '[1 . 1) " )).to eq("(1 . 1)")
    expect(@nendo.evalStr( " '(1 . 1] " )).to eq("(1 . 1)")
    expect(@nendo.evalStr( " '(1 1 . 1) " )).to eq("(1 1 . 1)")
    expect(@nendo.evalStr( " '(1 2 . 3) " )).to eq("(1 2 . 3)")
    expect(@nendo.evalStr( " '(1 2 3) " )).to eq("(1 2 3)")
    expect(@nendo.evalStr( " '(1.1 2.2 3.3) " )).to eq("(1.1 2.2 3.3)")
    expect(@nendo.evalStr( " '(a bb ccc dddd) " )).to eq("(a bb ccc dddd)")
    expect(@nendo.evalStr( " '(a (b) ((c)) (((d)))) " )).to eq("(a (b) ((c)) (((d))))")
    expect(@nendo.evalStr( " '[a (b) ((c)) (((d)))] " )).to eq("(a (b) ((c)) (((d))))")
    expect(@nendo.evalStr( " '(a [b] ([c]) (([d]))) " )).to eq("(a (b) ((c)) (((d))))")
    expect(@nendo.evalStr( " '[a [b] [[c]] [[[d]]]] " )).to eq("(a (b) ((c)) (((d))))")
    expect(@nendo.evalStr( " '('a)" )).to eq("((quote a))")
    expect(@nendo.evalStr( " '(''a)" )).to eq("((quote (quote a)))")
    expect(@nendo.evalStr( " '('a 'b 'c)" )).to eq("((quote a) (quote b) (quote c))")
    expect(@nendo.evalStr( ' \'("str") ' )).to eq('("str")')
    expect(@nendo.evalStr( ' \'("str" . 1) ' )).to eq('("str" . 1)')
    expect(@nendo.evalStr( ' \'(1 . "str") ' )).to eq('(1 . "str")')
    expect(@nendo.evalStr( ' \'(1 2 . "str") ' )).to eq('(1 2 . "str")')
    expect(@nendo.evalStr( " '((a)(b)(c)) " )).to eq("((a) (b) (c))")
    expect(@nendo.evalStr( " 'a " )).to eq("a")
    expect(@nendo.evalStr( " 'symbol " )).to eq("symbol")
    expect(@nendo.evalStr( " 'SYMBOL " )).to eq("SYMBOL")
    expect(@nendo.evalStr( " 'SyMbOl " )).to eq("SyMbOl")
    expect(@nendo.evalStr( " ''a " )).to eq("(quote a)")
    expect(@nendo.evalStr( " '1 " )).to eq("1")
    expect(@nendo.evalStr( " ''1 " )).to eq("(quote 1)")
    expect(@nendo.evalStr( " '''1 " )).to eq("(quote (quote 1))")
    expect(@nendo.evalStr( " '1.1 " )).to eq("1.1")
    expect(@nendo.evalStr( " ''1.1 " )).to eq("(quote 1.1)")
    expect(@nendo.evalStr( " '''1.1 " )).to eq("(quote (quote 1.1))")
    expect(@nendo.evalStr( " '() " )).to eq("()")
    expect(@nendo.evalStr( " '(()) " )).to eq("(())")
    expect(@nendo.evalStr( " '((())) " )).to eq("((()))")
    expect(@nendo.evalStr( " '(((()))) " )).to eq("(((())))")
    expect(@nendo.evalStr( " '(()  .  ()) " )).to eq("(())")
    expect(@nendo.evalStr( " '(a . ()) " )).to eq("(a)")
    expect(@nendo.evalStr( " '(a . #t) " )).to eq("(a . #t)")
    expect(@nendo.evalStr( " '(a . #f) " )).to eq("(a . #f)")
    expect(@nendo.evalStr( " '(a . nil) " )).to eq("(a . nil)")
    expect(@nendo.evalStr( " '(a b c d e  .  ()) " )).to eq("(a b c d e)")
    expect(@nendo.evalStr( " '(#t #t #f #f nil nil '() '()) " )).to eq("(#t #t #f #f nil nil (quote ()) (quote ()))")
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

  def arg1_plus_1( arg1 )
    yield  arg1, 200
  end

end

describe Nendo, "when use &block(Ruby's block) " do
  before do
    @nendo = Nendo::Core.new()
  end

  it "should" do
    expect(@nendo.evalStr( " (define testclass (TestClassForBlockArgument.new))  testclass.class" )).to eq("TestClassForBlockArgument")
    expect(@nendo.evalStr( " (testclass.arg1 (&block (a)    (list a)))  " )).to eq("(100)")
    expect(@nendo.evalStr( " (testclass.arg2 (&block (a b)  (cons a b))) " )).to eq("(100 . 200)")
    expect(@nendo.evalStr( " (testclass.arg5 (&block (a b c d e)  (list a b c d e))) " )).to eq("(10 20 30 40 50)")
    expect(@nendo.evalStr( " (testclass.arg5 (&block (a b c d e)  (to-arr (list a b c d e)))) " )).to eq("#(10 20 30 40 50)")
  end
end

describe Nendo, "when call variable length functions" do
  before do
    @nendo = Nendo::Core.new( )
    @nendo.loadInitFile
  end
  it "should" do
    # fixed length
    expect(@nendo.evalStr( <<EOS
(define (arg0)          0)
(define (arg1 a)        a)
(define (arg2 a b)      b)
(define (arg3 a b c)    c)
(define (arg4 a b c d)  d)
(list
 (arg0)
 (arg1 1)
 (arg2 1 2)
 (arg3 1 2 3)
 (arg4 1 2 3 4))
EOS
           )).to eq("(0 1 2 3 4)")

    expect(@nendo.evalStr( <<EOS
(define (func-var-arg . arg)    arg)
(list
 (func-var-arg)
 (func-var-arg 1)
 (func-var-arg 1 2)
 (func-var-arg 1 2 3)
 (func-var-arg 1 2 3 4))
EOS
           )).to eq("(() (1) (1 2) (1 2 3) (1 2 3 4))")

    expect(@nendo.evalStr( <<EOS
(define (func-var-arg first . rest)    rest)
(list
 (func-var-arg 0)
 (func-var-arg 0 1)
 (func-var-arg 0 1 2)
 (func-var-arg 0 1 2 3)
 (func-var-arg 0 1 2 3 4))
EOS
           )).to eq("(() (1) (1 2) (1 2 3) (1 2 3 4))")

    expect(@nendo.evalStr( <<EOS
(define (func-var-arg first second . rest)    (cons second rest))
(list
 (func-var-arg "f" "s")
 (func-var-arg "f" "s" 1)
 (func-var-arg "f" "s" 1 2)
 (func-var-arg "f" "s" 1 2 3)
 (func-var-arg "f" "s" 1 2 3 4))
EOS
           )).to eq('(("s") ("s" 1) ("s" 1 2) ("s" 1 2 3) ("s" 1 2 3 4))')

    # Ruby method with block
    expect(@nendo.evalStr( <<EOS
(define testclass (TestClassForBlockArgument.new))  testclass.class
(list
  (testclass.arg1 (&block (a)   (list a)))
  (testclass.arg2 (&block (a b) (cons a b)))
  (testclass.arg1_plus_1 "a" (&block (a b)   (list a b)))
  )
EOS
           )).to eq('((100) (100 . 200) ("a" 200))')


    # Ruby method with block
    expect(@nendo.evalStr( <<EOS
(define (read-first-line fobj) (fobj.readline.chomp))
(let1 filename "./VERSION.yml"
  (list
    (with-open filename read-first-line "r")
    (with-open filename read-first-line)))
EOS
           )).to eq('("---" "---")')
  end
end


describe Nendo, "when read various vector expressions" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
  end
  it "should" do
    expect(@nendo.evalStr( " '() " )).to eq("()")
    expect(@nendo.evalStr( " '[] " )).to eq("()")
    expect(@nendo.evalStr( " '#( 1 ) " )).to eq("#(1)")
    expect { @nendo.evalStr( " '#(( 1 ) " )    }.to                               raise_error( RuntimeError )
    expect(@nendo.evalStr( " '#( 1 2 ) " )).to eq("#(1 2)")
    expect(@nendo.evalStr( " '#( 1 () ) " )).to eq("#(1 ())")
    expect(@nendo.evalStr( " '#( () 2 ) " )).to eq("#(() 2)")
    expect { @nendo.evalStr( " '#( 1 . 2 ) " ) }.to                               raise_error( RuntimeError )
    expect { @nendo.evalStr( " #(+ 1 2) " )    }.to                               raise_error( RuntimeError )
    expect(@nendo.evalStr( " '#( 1 #( 11 )) " )).to eq("#(1 #(11))")
    expect(@nendo.evalStr( " '#( 1 #( 11 12 )) " )).to eq("#(1 #(11 12))")
    expect(@nendo.evalStr( " '#( 1 #( 11 #( 111 ))) " )).to eq("#(1 #(11 #(111)))")
    expect(@nendo.evalStr( " '#( 1 #( 11 #( 111 112))) " )).to eq("#(1 #(11 #(111 112)))")
    expect(@nendo.evalStr( " '#(1 2 3) " )).to eq("#(1 2 3)")
    expect(@nendo.evalStr( " '#(1.1 2.2 3.3) " )).to eq("#(1.1 2.2 3.3)")
    expect(@nendo.evalStr( " '#(a bb ccc dddd) " )).to eq("#(a bb ccc dddd)")
    expect(@nendo.evalStr( " '#(a (b) ((c)) (((d)))) " )).to eq("#(a (b) ((c)) (((d))))")
  end
end

describe Nendo, "when call evalStr() with built-in functions" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
  end
  it "should" do
    expect(@nendo.evalStr( " (car '(1 2 3 4)) " )).to eq("1")
    expect(@nendo.evalStr( " (cdr '(1 2 3 4)) " )).to eq("(2 3 4)")
    expect(@nendo.evalStr( " (null? '()) " )).to eq("#t")
    expect(@nendo.evalStr( " (null? '(1)) " )).to eq("#f")
    expect(@nendo.evalStr( " (null? false) " )).to eq("#f")
    expect(@nendo.evalStr( " (null? nil) " )).to eq("#f")
    expect(@nendo.evalStr( " (null? true) " )).to eq("#f")
    expect(@nendo.evalStr( " (cons 1 2) " )).to eq("(1 . 2)")
    expect(@nendo.evalStr( " (cons 1 '(2 3)) " )).to eq("(1 2 3)")
    expect(@nendo.evalStr( " (cons '(1 2) '(3 4)) " )).to eq("((1 2) 3 4)")
    expect(@nendo.evalStr( " (cons '(1 2) '((3 4))) " )).to eq("((1 2) (3 4))")
    expect(@nendo.evalStr( " (cons '() '()) " )).to eq("(())")
    expect(@nendo.evalStr( " (cons 1 '()) " )).to eq("(1)")
    expect(@nendo.evalStr( " (cons '() (cdr '(100))) " )).to eq("(())")
    expect(@nendo.evalStr( " (cons '() (car '(()))) " )).to eq("(())")
    expect(@nendo.evalStr( " (cons (car '(())) '()) " )).to eq("(())")
    expect(@nendo.evalStr( " (cons (car '(())) (car '(()))) " )).to eq("(())")
    expect(@nendo.evalStr( " (cons '() (cdr '(100))) " )).to eq("(())")
    expect(@nendo.evalStr( " (cons (cdr '(100)) '()) " )).to eq("(())")
    expect(@nendo.evalStr( " (cons (cdr '(100)) (cdr '(100))) " )).to eq("(())")
    expect { @nendo.evalStr( " (cons 1 2 3) " ) }.to    raise_error(ArgumentError)
    expect { @nendo.evalStr( " (cons 1) " ) }.to        raise_error(ArgumentError)
    expect { @nendo.evalStr( " (cons) " ) }.to          raise_error(ArgumentError)
    expect(@nendo.evalStr( " (list 1 2 3) " )).to eq("(1 2 3)")
    expect(@nendo.evalStr( " (list '(1) '(2) '(3)) " )).to eq("((1) (2) (3))")
    expect(@nendo.evalStr( " (list 'a 'b 'c) " )).to eq("(a b c)")
    expect(@nendo.evalStr( " (list '(a) '((b c))) " )).to eq("((a) ((b c)))")
    expect(@nendo.evalStr( " (list) " )).to eq("()")
    expect(@nendo.evalStr( " (list 1) " )).to eq("(1)")
    expect(@nendo.evalStr( " (reverse '(1)) " )).to eq("(1)")
    expect(@nendo.evalStr( " (reverse '(1 2 3)) " )).to eq("(3 2 1)")
    expect(@nendo.evalStr( " (reverse '(1 2 ())) " )).to eq("(() 2 1)")
    expect(@nendo.evalStr( " (reverse (list 1 2 (cdr '(100)))) " )).to eq("(() 2 1)")
    expect(@nendo.evalStr( " (define !a 10) !a" )).to eq("10")
    expect(@nendo.evalStr( " (define $a 11) $a" )).to eq("11")
    expect(@nendo.evalStr( " (define %a 12) %a" )).to eq("12")
    expect(@nendo.evalStr( " (define &a 13) &a" )).to eq("13")
    expect(@nendo.evalStr( " (define *a 14) *a" )).to eq("14")
    expect(@nendo.evalStr( " (define +a 15) +a" )).to eq("15")
    expect(@nendo.evalStr( " (define -a 16) -a" )).to eq("16")
    expect(@nendo.evalStr( " (define /a 17) /a" )).to eq("17")
    expect(@nendo.evalStr( " (define <a 18) <a" )).to eq("18")
    expect(@nendo.evalStr( " (define =a 19) =a" )).to eq("19")
    expect(@nendo.evalStr( " (define ?a 20) ?a" )).to eq("20")
    expect(@nendo.evalStr( " (define @a 21) @a" )).to eq("21")
    expect(@nendo.evalStr( " (define ^a 22) ^a" )).to eq("22")
    expect(@nendo.evalStr( " (define ~a 23) ~a" )).to eq("23")
    expect(@nendo.evalStr( " (define a! 30) a!" )).to eq("30")
    expect(@nendo.evalStr( " (define a$ 31) a$" )).to eq("31")
    expect(@nendo.evalStr( " (define a% 32) a%" )).to eq("32")
    expect(@nendo.evalStr( " (define a& 33) a&" )).to eq("33")
    expect(@nendo.evalStr( " (define a* 34) a*" )).to eq("34")
    expect(@nendo.evalStr( " (define a+ 35) a+" )).to eq("35")
    expect(@nendo.evalStr( " (define a- 36) a-" )).to eq("36")
    expect(@nendo.evalStr( " (define a/ 37) a/" )).to eq("37")
    expect(@nendo.evalStr( " (define a< 38) a<" )).to eq("38")
    expect(@nendo.evalStr( " (define a= 39) a=" )).to eq("39")
    expect(@nendo.evalStr( " (define a? 40) a?" )).to eq("40")
    expect(@nendo.evalStr( " (define a@ 41) a@" )).to eq("41")
    expect(@nendo.evalStr( " (define a^ 42) a^" )).to eq("42")
    expect(@nendo.evalStr( " (define a~ 43) a~" )).to eq("43")
    expect(@nendo.evalStr( " (define aFunc (lambda (x) x)) true" )).to eq("#t")
    expect(@nendo.evalStr( " (define aMacro (macro (x) x)) true" )).to eq("#t")
    expect(@nendo.evalStr( " (define a! 123) a!" )).to eq("123")
    expect(@nendo.evalStr( " (define b? 321) b?" )).to eq("321")
    expect(@nendo.evalStr( " (define a-b 1234) a-b" )).to eq("1234")
    expect(@nendo.evalStr( " (define start-end!? 4321) start-end!?" )).to eq("4321")
    expect(@nendo.evalStr( " (procedure? car) " )).to eq("#t")
    expect(@nendo.evalStr( " (procedure? aFunc) " )).to eq("#t")
    expect(@nendo.evalStr( " (procedure? aMacro) " )).to eq("#f")
    expect(@nendo.evalStr( " (procedure? 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (procedure? 1.1) " )).to eq("#f")
    expect(@nendo.evalStr( " (procedure? \"str\") " )).to eq("#f")
    expect(@nendo.evalStr( " (procedure? 'a) " )).to eq("#f")
    expect(@nendo.evalStr( " (procedure? '(1)) " )).to eq("#f")
    expect(@nendo.evalStr( " (procedure? '()) " )).to eq("#f")
    expect(@nendo.evalStr( " (symbol? car) " )).to eq("#f")
    expect(@nendo.evalStr( " (symbol? aFunc) " )).to eq("#f")
    expect(@nendo.evalStr( " (symbol? aMacro) " )).to eq("#f")
    expect(@nendo.evalStr( " (symbol? 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (symbol? 1.1) " )).to eq("#f")
    expect(@nendo.evalStr( " (symbol? \"str\") " )).to eq("#f")
    expect(@nendo.evalStr( " (symbol? 'a) " )).to eq("#t")
    expect(@nendo.evalStr( " (symbol? '(1)) " )).to eq("#f")
    expect(@nendo.evalStr( " (symbol? '()) " )).to eq("#f")
    expect(@nendo.evalStr( " (pair? car) " )).to eq("#f")
    expect(@nendo.evalStr( " (pair? aFunc) " )).to eq("#f")
    expect(@nendo.evalStr( " (pair? aMacro) " )).to eq("#f")
    expect(@nendo.evalStr( " (pair? 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (pair? 1.1) " )).to eq("#f")
    expect(@nendo.evalStr( " (pair? \"str\") " )).to eq("#f")
    expect(@nendo.evalStr( " (pair? 'a) " )).to eq("#f")
    expect(@nendo.evalStr( " (pair? '(1)) " )).to eq("#t")
    expect(@nendo.evalStr( " (pair? '()) " )).to eq("#f")
    expect(@nendo.evalStr( " (number? car) " )).to eq("#f")
    expect(@nendo.evalStr( " (number? aFunc) " )).to eq("#f")
    expect(@nendo.evalStr( " (number? aMacro) " )).to eq("#f")
    expect(@nendo.evalStr( " (number? 1) " )).to eq("#t")
    expect(@nendo.evalStr( " (number? 1.1) " )).to eq("#t")
    expect(@nendo.evalStr( " (number? \"str\") " )).to eq("#f")
    expect(@nendo.evalStr( " (number? 'a) " )).to eq("#f")
    expect(@nendo.evalStr( " (number? '(1)) " )).to eq("#f")
    expect(@nendo.evalStr( " (number? '()) " )).to eq("#f")
    expect(@nendo.evalStr( " (integer? car) " )).to eq("#f")
    expect(@nendo.evalStr( " (integer? aFunc) " )).to eq("#f")
    expect(@nendo.evalStr( " (integer? aMacro) " )).to eq("#f")
    expect(@nendo.evalStr( " (integer? 1) " )).to eq("#t")
    expect(@nendo.evalStr( " (integer? 1.1) " )).to eq("#f")
    expect(@nendo.evalStr( " (integer? \"str\") " )).to eq("#f")
    expect(@nendo.evalStr( " (integer? 'a) " )).to eq("#f")
    expect(@nendo.evalStr( " (integer? '(1)) " )).to eq("#f")
    expect(@nendo.evalStr( " (integer? '()) " )).to eq("#f")
    expect(@nendo.evalStr( " (string? car) " )).to eq("#f")
    expect(@nendo.evalStr( " (string? aFunc) " )).to eq("#f")
    expect(@nendo.evalStr( " (string? aMacro) " )).to eq("#f")
    expect(@nendo.evalStr( " (string? 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (string? 1.1) " )).to eq("#f")
    expect(@nendo.evalStr( " (string? \"str\") " )).to eq("#t")
    expect(@nendo.evalStr( " (string? 'a) " )).to eq("#f")
    expect(@nendo.evalStr( " (string? '(1)) " )).to eq("#f")
    expect(@nendo.evalStr( " (string? '()) " )).to eq("#f")
    expect(@nendo.evalStr( " (macro? car) " )).to eq("#f")
    expect(@nendo.evalStr( " (macro? aFunc) " )).to eq("#f")
    expect(@nendo.evalStr( " (macro? aMacro) " )).to eq("#t")
    expect(@nendo.evalStr( " (macro? 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (macro? 1.1) " )).to eq("#f")
    expect(@nendo.evalStr( " (macro? \"str\") " )).to eq("#f")
    expect(@nendo.evalStr( " (macro? 'a) " )).to eq("#f")
    expect(@nendo.evalStr( " (macro? '(1)) " )).to eq("#f")
    expect(@nendo.evalStr( " (macro? '()) " )).to eq("#f")
    expect(@nendo.evalStr( " (length '()) " )).to eq("0")
    expect(@nendo.evalStr( " (length '(1)) " )).to eq("1")
    expect(@nendo.evalStr( " (length '((1))) " )).to eq("1")
    expect(@nendo.evalStr( " (length '(1 2)) " )).to eq("2")
    expect { @nendo.evalStr( " (length \"str\") " ) }.to  raise_error(TypeError)
    expect { @nendo.evalStr( " (length 1) " ) }.to  raise_error(TypeError)
    expect(@nendo.evalStr( " (symbol->string 'sym) " )).to eq('"sym"')
    expect(@nendo.evalStr( " (string->symbol \"sym\") " )).to eq('sym')
    expect(@nendo.evalStr( ' (string-join \'("Aa" "Bb" "Cc")    ) ' )).to  eq('"AaBbCc"')
    expect(@nendo.evalStr( ' (string-join \'("Aa" "Bb" "Cc") ":") ' )).to  eq('"Aa:Bb:Cc"')
    expect(@nendo.evalStr( ' (string-join \'("Aa" "Bb" "Cc") "//") ' )).to eq('"Aa//Bb//Cc"')
    expect { @nendo.evalStr( ' (string-join \'("Aa" "Bb" "Cc") 100) ' ) }.to  raise_error(TypeError)
    expect { @nendo.evalStr( ' (string-join \'("Aa" "Bb" "Cc") :xx) ' ) }.to  raise_error(TypeError)
    expect(@nendo.evalStr( ' (read-from-string "1") ' )).to eq('1')
    expect(@nendo.evalStr( ' (read-from-string "(+ 1 2)") ' )).to eq('(+ 1 2)')
    expect(@nendo.evalStr( ' (read-from-string "(\"Aa\" \"Bb\" \"Cc\")") ' )).to eq('("Aa" "Bb" "Cc")')
    expect(@nendo.evalStr( ' (eq? \'Aa (car (read-from-string "(Aa Bb Cc)"))) ' )).to eq('#t')
    expect(@nendo.evalStr( ' (=   \'Aa (car (read-from-string "(Aa Bb Cc)"))) ' )).to eq('#t')
    expect { @nendo.evalStr( ' (read-from-string 100) ' ) }.to  raise_error(TypeError)
    expect(@nendo.evalStr( ' (write-to-string 1) ' )).to eq('"1"')
    expect(@nendo.evalStr( ' (write-to-string \'(+ 1 2)) ' )).to eq('"(+ 1 2)"')
    expect(@nendo.evalStr( ' (write-to-string \'("Aa" "Bb" "Cc")) ' )).to eq('"(\"Aa\" \"Bb\" \"Cc\")"')
  end
end

describe Nendo, "when call evalStr() with variable modifications" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    expect(@nendo.evalStr( " (define x 1)     x " )).to eq("1")
    expect(@nendo.evalStr( " (define x 2)     x " )).to eq("2")
    expect(@nendo.evalStr( " (define x 100)   x " )).to eq("100")
    expect(@nendo.evalStr( " (define x true)  x " )).to eq("#t")
    expect(@nendo.evalStr( " (define x false) x " )).to eq("#f")
    expect(@nendo.evalStr( " (define x nil) x " )).to   eq("nil")
    expect(@nendo.evalStr( " (define x '()) x " )).to   eq("()")
    expect(@nendo.evalStr( " (define x '(1)) x " )).to   eq("(1)")
    expect(@nendo.evalStr( " (define x (+ 1 2 3)) x " )).to   eq("6")
    expect(@nendo.evalStr( " (define x (sprintf \"$%02X\" 17))    x  x  x " )).to   eq('"$11"')
    expect(@nendo.evalStr( " 1 2 3 " )).to   eq("3")
    expect(@nendo.evalStr( " (define x 3.14)  (set! x (* x 2))          x " )).to   eq("6.28")
    expect(@nendo.evalStr( " 1 \n 2 \n 3 \n " )).to   eq("3")
    expect(@nendo.evalStr( " (define a '(1 . 2))  (set-car! a 100)      a " )).to   eq("(100 . 2)")
    expect(@nendo.evalStr( " (define a '(1 . 2))  (set-car! a '())      a " )).to   eq("(() . 2)")
    expect(@nendo.evalStr( " (define a '(1 . 2))  (set-car! a #t)       a " )).to   eq("(#t . 2)")
    expect(@nendo.evalStr( " (define a '(1 . 2))  (set-car! a #f)       a " )).to   eq("(#f . 2)")
    expect(@nendo.evalStr( " (define a '(1 . 2))  (set-car! a nil)      a " )).to   eq("(nil . 2)")
    expect(@nendo.evalStr( " (define a '(1 . 2))  (set-cdr! a 200)      a " )).to   eq("(1 . 200)")
    expect(@nendo.evalStr( " (define a '(1 . 2))  (set-cdr! a '(2))     a " )).to   eq("(1 2)")
    expect(@nendo.evalStr( " (define a '(1 . 2))  (set-cdr! a '())      a " )).to   eq("(1)")
    expect(@nendo.evalStr( " (define a '(1 . 2))  (set-cdr! a #t)       a " )).to   eq("(1 . #t)")
    expect(@nendo.evalStr( " (define a '(1 . 2))  (set-cdr! a #f)       a " )).to   eq("(1 . #f)")
    expect(@nendo.evalStr( " (define a '(1 . 2))  (set-cdr! a nil)      a " )).to   eq("(1 . nil)")
    expect(@nendo.evalStr( " (define a '((1 . 2) 3))    (set-car! (car a) 100)      a " )).to   eq("((100 . 2) 3)")
    expect(@nendo.evalStr( " (define a '((1 . 2) 3))    (set-cdr! (car a) 200)      a " )).to   eq("((1 . 200) 3)")
    expect(@nendo.evalStr( " (define a '((1 . 2) . 3))  (set-cdr! a 300)            a " )).to   eq("((1 . 2) . 300)")
  end
end

describe Nendo, "when call evalStr() with undefined variable" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
  end
  it "should" do
    expect { @nendo.evalStr( " true " ) }.not_to                   raise_error
    expect { @nendo.evalStr( " false " ) }.not_to                  raise_error
    expect { @nendo.evalStr( " nil " ) }.not_to                    raise_error
    expect { @nendo.evalStr( " line1 " ) }.to                      raise_error( NameError )
    expect { @nendo.evalStr( " true \n line2 " ) }.to              raise_error( NameError )
    expect { @nendo.evalStr( " true \n true \n line3 " ) }.to      raise_error( NameError )
    expect { @nendo.evalStr( " (+ 1 x) " ) }.to                    raise_error( NameError )
    expect { @nendo.evalStr( " true \n (+ 1 y) " ) }.to            raise_error( NameError )
  end
end

describe Nendo, "when call evalStr() with built-in special forms" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
  end
  it "should" do
    expect(@nendo.evalStr( " (begin 1) " )).to eq("1")
    expect(@nendo.evalStr( " (begin 1 2) " )).to eq("2")
    expect(@nendo.evalStr( " (begin 1 2 3) " )).to eq("3")
    expect(@nendo.evalStr( <<EOS
(set! x 2)
(set! y (begin
          (set! x (* x 2))
          (set! x (* x 2))
          (set! x (* x 2))
          100))
(+ x y)
EOS
           )).to eq("116")
    expect(@nendo.evalStr( " (%let ()                 100) " )).to eq("100")
    expect(@nendo.evalStr( " (%let ((a 11))           a) " )).to eq("11")
    expect(@nendo.evalStr( " (%let ((a 11) (b 22))    (+ a b)) " )).to eq("33")
    expect(@nendo.evalStr( " (%let ((a 22)) (%let ((b 33))   (+ a b))) " )).to eq("55")
    expect(@nendo.evalStr( " (%let ((a 22)(b 33)) (%let ((c 44) (d 55))   (+ a b c d))) " )).to eq("154")
    expect(@nendo.evalStr( " (%let  ((a (%let ((b 2))   (+ 100 b))))  a) " )).to eq("102")
    expect(@nendo.evalStr( " (letrec ()                 100) " )).to eq("100")
    expect(@nendo.evalStr( " (letrec ((a 11))           a) " )).to eq("11")
    expect(@nendo.evalStr( " (letrec ((a 11) (b 22))    (+ a b)) " )).to eq("33")
    expect(@nendo.evalStr( " (letrec ((a 22)) (%let ((b 33))   (+ a b))) " )).to eq("55")
    expect(@nendo.evalStr( " (letrec ((a 22)(b 33)) (%let ((c 44) (d 55))   (+ a b c d))) " )).to eq("154")
    expect(@nendo.evalStr( " (letrec  ((a (%let ((b 2))   (+ 100 b))))  a) " )).to eq("102")
    expect(@nendo.evalStr( <<EOS
(letrec ((func1 (lambda () 13))
         (func2 (lambda () (* 2 (func1)))))
  (list (func2) (func1)))
EOS
           )).to eq("(26 13)")
    expect(@nendo.evalStr( <<EOS
(letrec ((func2 (lambda () (* 2 (func1))))
         (func1 (lambda () 7)))
  (list (func2) (func1)))
EOS
    )).to eq("(14 7)")
    expect(@nendo.evalStr( " (if true   't 'f)" )).to eq("t")
    expect(@nendo.evalStr( " (if true   '(1) '(2))" )).to eq("(1)")
    expect(@nendo.evalStr( " (if false  't 'f)" )).to eq("f")
    expect(@nendo.evalStr( " (if false  '(1) '(2))" )).to eq("(2)")
    expect(@nendo.evalStr( " (set! x 0) (if true  (set! x 1) (set! x 2))   x" )).to eq("1")
    expect(@nendo.evalStr( " (set! x 0) (if false (set! x 1) (set! x 2))   x" )).to eq("2")
    expect(@nendo.evalStr( " (set! func (lambda (arg1) arg1))              (list (func 1) (func 2))" )).to eq("(1 2)")
    expect(@nendo.evalStr( " ((lambda (arg1) arg1)    3)" )).to eq("3")
    expect(@nendo.evalStr( " ((lambda (arg1) arg1)    (+ 1 2 3))" )).to eq("6")
    expect(@nendo.evalStr( " ((lambda (arg1 . arg2) arg1) 1 '(2))" )).to eq("1")
    expect(@nendo.evalStr( " ((lambda (arg1 . arg2) arg2) 1 '(2))" )).to eq("((2))")
    expect(@nendo.evalStr( " ((lambda (arg1 . arg2) arg2) 1 '(2 3))" )).to eq("((2 3))")
    expect(@nendo.evalStr( " ((lambda (arg1 . arg2) arg1) '() '())" )).to eq("()")
    expect(@nendo.evalStr( " ((lambda (arg1 . arg2) arg2) '() '())" )).to eq("(())")
    expect(@nendo.evalStr( " ((lambda (arg1 . arg2) arg1) (cdr '(100)) (cdr '(200)))" )).to eq("()")
    expect(@nendo.evalStr( " ((lambda (arg1 . arg2) arg2) (cdr '(100)) (cdr '(200)))" )).to eq("(())")
    expect(@nendo.evalStr( " ((if #t + *) 3 4)" )).to eq("7")
    expect(@nendo.evalStr( " ((if #f + *) 3 4)" )).to eq("12")
    expect(@nendo.evalStr( " (apply1 + '(1 2))" )).to eq("3")
    expect(@nendo.evalStr( " (apply1 + (range 10 1))" )).to eq("55")
    expect(@nendo.evalStr( " (apply1 cons '(1 2))" )).to eq("(1 . 2)")
    expect(@nendo.evalStr( " (apply1 list '(1 2 3))" )).to eq("(1 2 3)")
    expect { @nendo.evalStr( " (error \"My Runtime Error\") " ) }.to                     raise_error( RuntimeError, /My Runtime Error/ )
    expect { @nendo.evalStr( " (error \"My Runtime Error\" '(a b c)) " ) }.to            raise_error( RuntimeError, /My Runtime Error [(]a b c[)]/ )
    expect(@nendo.evalStr( "((lambda (arg1) (+ 1 arg1)) 2)" )).to eq("3")
    expect { @nendo.evalStr( "((lambda (arg1) (+ 1 arg1)))" ) }.to                       raise_error( ArgumentError, /wrong number of arguments/ )
  end
end

describe Nendo, "when call evalStr() with built-in special forms (renamed symbol)" do
  before do
    @nendo = Nendo::Core.new( )
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " (/nendo/core/begin 1) " )).to     eq("1")
    expect(@nendo.evalStr( " (/nendo/core/begin 1 2) " )).to   eq("2")
    expect(@nendo.evalStr( " (/nendo/core/begin 1 2 3) " )).to eq("3")
    expect(@nendo.evalStr( <<EOS
(/nendo/core/set! x 2)
(/nendo/core/set! y (/nendo/core/begin
                     (/nendo/core/set! x (* x 2))
                     (/nendo/core/set! x (* x 2))
                     (/nendo/core/set! x (* x 2))
                     100))
(+ x y)
EOS
           )).to eq("116")
    expect(@nendo.evalStr( " (/nendo/core/%let ()                 100) " )).to                                eq("100")
    expect(@nendo.evalStr( " (/nendo/core/%let ((a 11))           a) " )).to                                  eq("11")
    expect(@nendo.evalStr( " (/nendo/core/%let ((a 11) (b 22))    (+ a b)) " )).to                            eq("33")
    expect(@nendo.evalStr( " (/nendo/core/%let ((a 22)) (let ((b 33))   (+ a b))) " )).to                     eq("55")
    expect(@nendo.evalStr( " (/nendo/core/%let ((a 22)(b 33)) (let ((c 44) (d 55))   (+ a b c d))) " )).to    eq("154")
    expect(@nendo.evalStr( " (/nendo/core/%let  ((a (let ((b 2))   (+ 100 b))))  a) " )).to                   eq("102")
    expect(@nendo.evalStr( " (/nendo/core/letrec ()                 100) " )).to                             eq("100")
    expect(@nendo.evalStr( " (/nendo/core/letrec ((a 11))           a) " )).to                               eq("11")
    expect(@nendo.evalStr( " (/nendo/core/letrec ((a 11) (b 22))    (+ a b)) " )).to                         eq("33")
    expect(@nendo.evalStr( " (/nendo/core/letrec ((a 22)) (let ((b 33))   (+ a b))) " )).to                  eq("55")
    expect(@nendo.evalStr( " (/nendo/core/letrec ((a 22)(b 33)) (let ((c 44) (d 55))   (+ a b c d))) " )).to eq("154")
    expect(@nendo.evalStr( " (/nendo/core/letrec  ((a (let ((b 2))   (+ 100 b))))  a) " )).to                eq("102")
    expect(@nendo.evalStr( <<EOS
(/nendo/core/letrec ((func1 (/nendo/core/lambda () 13))
                     (func2 (/nendo/core/lambda () (* 2 (func1)))))
   (list (func2) (func1)))
EOS
           )).to eq("(26 13)")
    expect(@nendo.evalStr( <<EOS
(/nendo/core/letrec ((func2 (/nendo/core/lambda () (* 2 (func1))))
                     (func1 (/nendo/core/lambda () 7)))
   (list (func2) (func1)))
EOS
           )).to eq("(14 7)")
    expect(@nendo.evalStr( " (/nendo/core/if true   't 'f)" )).to     eq("t")
    expect(@nendo.evalStr( " (/nendo/core/if true   '(1) '(2))" )).to eq("(1)")
    expect(@nendo.evalStr( " (/nendo/core/if false  't 'f)" )).to     eq("f")
    expect(@nendo.evalStr( " (/nendo/core/if false  '(1) '(2))" )).to eq("(2)")
    expect(@nendo.evalStr( " (/nendo/core/set! x 0) (/nendo/core/if true  (set! x 1) (set! x 2))   x" )).to eq("1")
    expect(@nendo.evalStr( " (/nendo/core/set! x 0) (/nendo/core/if false (set! x 1) (set! x 2))   x" )).to eq("2")
    expect(@nendo.evalStr( <<EOS
(/nendo/core/set! func (/nendo/core/lambda (arg1) arg1))
(list (func 1) (func 2))
EOS
           )).to eq("(1 2)")
    expect(@nendo.evalStr( " ((/nendo/core/lambda (arg1) arg1)  3)" )).to         eq("3")
    expect(@nendo.evalStr( " ((/nendo/core/lambda (arg1) arg1)  (+ 1 2 3))" )).to eq("6")
    expect(@nendo.evalStr( " ((/nendo/core/if #t + *) 3 4)" )).to                 eq("7")
    expect(@nendo.evalStr( " ((/nendo/core/if #f + *) 3 4)" )).to                 eq("12")
    expect { @nendo.evalStr( " (/nendo/core/error \"My Runtime Error\") " ) }.to            raise_error( RuntimeError )
  end
end


describe Nendo, "when redefined built-in functions(1)." do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " (define (+ a b) (list a b))  (+ 1 2)" )).to       eq("(1 2)")
    expect { @nendo.evalStr( " (define (+ a b) (list a b))  (+ 1 2 3)" ) }.to              raise_error( ArgumentError )
    expect(@nendo.evalStr( " (define (eq? a b) \"eq?\")  (eq? 1 1)" )).to      eq('"eq?"')
  end
end

describe Nendo, "when redefined built-in functions(2)." do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " (define (< a b)   \"<\")    (<   1 1)" )).to      eq('"<"')
  end
end

describe Nendo, "when redefined built-in functions(3)." do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " (define (car lst) \"car\")  (car '(1 2))" )).to   eq('"car"')
  end
end

describe Nendo, "when call evalStr() with global and lexical scope variable" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    expect(@nendo.evalStr( " (define var 111) " )).to eq("111")
    expect(@nendo.evalStr( " (%let ((var 222)) var) " )).to eq("222")
    expect(@nendo.evalStr( " (%let ((var 222)) (set! var 333) var) " )).to eq("333")
    expect(@nendo.evalStr( " (%let ((var 222)) (set! var 333)) var " )).to eq("111")
    expect(@nendo.evalStr( " (define global1 \"G\") " )).to eq('"G"')
    expect(@nendo.evalStr( <<EOS
(%let ((local1 \"L\")
       (local2 \"L\"))
   (set! global1 (+ global1 \"lobal1\"))
   (set! local1  (+ local1   \"ocal1\"))
   (set! local2  (+ local2   \"ocal2\"))
   (list global1
         local1
         local2
         (%let ((local1 \"A\")
               (local2 \"B\"))
           (set! local1  (+ local1   \"a\"))
           (set! local2  (+ local2   \"b\"))
           (list local1 local2
                 (%let ((local1 \"CCC\"))
                   (list global1 local1 local2))))))
EOS
           )).to eq('("Global1" "Local1" "Local2" ("Aa" "Bb" ("Global1" "CCC" "Bb")))')
  end
end

describe Nendo, "when call evalStr() with macroexpand-1 function" do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    expect(@nendo.evalStr( <<EOS
(set! twice (macro (x) (list 'begin x x)))
(macroexpand-1 '(twice (+ 1 1)))
EOS
           )).to eq("(begin (+ 1 1) (+ 1 1))")
    expect(@nendo.evalStr( <<EOS
(set! inc (macro (x) (list 'set! x (list '+ x 1))))
(macroexpand-1 '(inc a))
EOS
           )).to eq("(set! a (+ a 1))")
    expect(@nendo.evalStr( " (set! a 10) (inc a) " )).to eq("11")
    expect(@nendo.evalStr( " (set! a 10) (inc a) (inc a)" )).to eq("12")
    expect(@nendo.evalStr( <<EOS
(macroexpand-1
 '(twice (twice (inc a))))
EOS
           )).to eq(
      "(begin (twice (inc a)) (twice (inc a)))"
    )
    expect(@nendo.evalStr( <<EOS
(macroexpand-1
 (macroexpand-1
  '(twice (twice (inc a)))))
EOS
           )).to eq(
      "(begin (begin (inc a) (inc a)) (twice (inc a)))"
    )
    expect(@nendo.evalStr( <<EOS
(macroexpand-1
 (macroexpand-1
  (macroexpand-1
   '(twice (twice (inc a))))))
EOS
           )).to eq(
      "(begin (begin (set! a (+ a 1)) (inc a)) (twice (inc a)))"
    )
    expect(@nendo.evalStr( <<EOS
(macroexpand-1
 (macroexpand-1
  (macroexpand-1
   (macroexpand-1
    '(twice (twice (inc a)))))))
EOS
           )).to eq(
      "(begin (begin (set! a (+ a 1)) (set! a (+ a 1))) (twice (inc a)))"
    )
    expect(@nendo.evalStr( " (set! a 10) (twice (twice (inc a)))" )).to eq("14")
  end
end


describe Nendo, "when use #xxxx syntax " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " #t " )).to eq("#t")
    expect(@nendo.evalStr( " #f " )).to eq("#f")
    expect(@nendo.evalStr( " '#( 1 ) " )).to eq("#(1)")
    expect(@nendo.evalStr( " '#() " )).to eq("#()")
    expect(@nendo.evalStr( " #!        \n #t" )).to eq("#t")
    expect(@nendo.evalStr( " #!        \n 100" )).to eq("100")
    expect(@nendo.evalStr( " #!   123  \n 100" )).to eq("100")
    expect(@nendo.evalStr( " '#?=1" )).to eq("(debug-print 1 \"(string)\" 1 (quote 1))")
    expect(@nendo.evalStr( " '#?." )).to eq('"(string):1"')
    expect(@nendo.evalStr( " '#?." )).to eq('"(string):1"')
    expect(@nendo.evalStr( " (begin #?. (+ 1 1))" )).to eq("2")
    expect(@nendo.evalStr( " (rxmatch #/[a-z]/ \"abc\")" )).to eq("a")
    expect(@nendo.evalStr( " (quote #?=(rxmatch #/[a-z]/ \"abc\"))" )).to eq('(debug-print (rxmatch #/[a-z]/ "abc") "(string)" 1 (quote (rxmatch #/[a-z]/ "abc")))')
    expect(@nendo.evalStr( <<EOS
(begin
  #?.
  (+ 1 1)
  #?. )
EOS
 )).to eq('"(string):4"')
    expect(@nendo.evalStr( " #b0  " )).to eq(Integer("0b0").to_s)
    expect(@nendo.evalStr( " #b01 " )).to eq(Integer("0b01").to_s)
    expect(@nendo.evalStr( " #b10 " )).to eq(Integer("0b10").to_s)
    expect(@nendo.evalStr( " #b00000001 " )).to         eq(Integer("0b00000001").to_s)
    expect(@nendo.evalStr( " #b1010101010101010 " )).to eq(Integer("0b1010101010101010").to_s)
    expect { @nendo.evalStr( " #b2 " ) }.to      raise_error(RuntimeError)
    expect { @nendo.evalStr( " #b02 " ) }.to     raise_error(RuntimeError)
    expect { @nendo.evalStr( " #bF " ) }.to      raise_error(RuntimeError)
    expect(@nendo.evalStr( " #o0  " )).to  eq(Integer("0o0").to_s)
    expect(@nendo.evalStr( " #o7  " )).to  eq(Integer("0o7").to_s)
    expect(@nendo.evalStr( " #o01 " )).to  eq(Integer("0o01").to_s)
    expect(@nendo.evalStr( " #o10 " )).to  eq(Integer("0o10").to_s)
    expect(@nendo.evalStr( " #o777 " )).to eq(Integer("0o777").to_s)
    expect(@nendo.evalStr( " #o00000007 " )).to         eq(Integer("0o00000007").to_s)
    expect(@nendo.evalStr( " #o0123456701234567 " )).to eq(Integer("0o0123456701234567").to_s)
    expect { @nendo.evalStr( " #o8 " ) }.to      raise_error(RuntimeError)
    expect { @nendo.evalStr( " #o08 " ) }.to     raise_error(RuntimeError)
    expect { @nendo.evalStr( " #oA " ) }.to      raise_error(RuntimeError)
    expect(@nendo.evalStr( " #d0  " )).to  eq(Integer("0d0").to_s)
    expect(@nendo.evalStr( " #d9  " )).to  eq(Integer("0d9").to_s)
    expect(@nendo.evalStr( " #d01 " )).to  eq(Integer("0d01").to_s)
    expect(@nendo.evalStr( " #d10 " )).to  eq(Integer("0d10").to_s)
    expect(@nendo.evalStr( " #d999 " )).to eq(Integer("0d999").to_s)
    expect(@nendo.evalStr( " #d00000009 " )).to         eq(Integer("0d00000009").to_s)
    expect(@nendo.evalStr( " #d0123456701234567 " )).to eq(Integer("0d0123456701234567").to_s)
    expect { @nendo.evalStr( " #dA " ) }.to      raise_error(RuntimeError)
    expect { @nendo.evalStr( " #dF " ) }.to      raise_error(RuntimeError)
    expect(@nendo.evalStr( " #x0  " )).to  eq(Integer("0x0").to_s)
    expect(@nendo.evalStr( " #x9  " )).to  eq(Integer("0x9").to_s)
    expect(@nendo.evalStr( " #xA  " )).to  eq(Integer("0xA").to_s)
    expect(@nendo.evalStr( " #xF  " )).to  eq(Integer("0xF").to_s)
    expect(@nendo.evalStr( " #x01 " )).to  eq(Integer("0x01").to_s)
    expect(@nendo.evalStr( " #x10 " )).to  eq(Integer("0x10").to_s)
    expect(@nendo.evalStr( " #xFFF " )).to eq(Integer("0xFFF").to_s)
    expect(@nendo.evalStr( " #x0000000F " )).to         eq(Integer("0x0000000F").to_s)
    expect(@nendo.evalStr( " #x0123456789ABCDEF0123456789ABCDEF " )).to eq(Integer("0x0123456789ABCDEF0123456789ABCDEF").to_s)
    expect { @nendo.evalStr( " #xg " ) }.to      raise_error(RuntimeError)
    expect { @nendo.evalStr( " #xh " ) }.to      raise_error(RuntimeError)
    expect { @nendo.evalStr( " #xz " ) }.to      raise_error(RuntimeError)
    expect { @nendo.evalStr( " #xG " ) }.to      raise_error(RuntimeError)
    expect { @nendo.evalStr( " #xH " ) }.to      raise_error(RuntimeError)
    expect { @nendo.evalStr( " #xZ " ) }.to      raise_error(RuntimeError)
    expect { @nendo.evalStr( " #a " ) }.to       raise_error(NameError)
    expect { @nendo.evalStr( " #c " ) }.to       raise_error(NameError)
    expect { @nendo.evalStr( " #e " ) }.to       raise_error(NameError)
    expect { @nendo.evalStr( " #tt " ) }.to      raise_error(NameError)
    expect { @nendo.evalStr( " #ff " ) }.to      raise_error(NameError)
    expect { @nendo.evalStr( " #abc " ) }.to     raise_error(NameError)
    expect { @nendo.evalStr( " #? " ) }.to       raise_error(NameError)
    expect { @nendo.evalStr( " #?a " ) }.to      raise_error(NameError)
    expect { @nendo.evalStr( " #= " ) }.to       raise_error(NameError)
    expect { @nendo.evalStr( " #?? " ) }.to      raise_error(NameError)
  end
end

describe Nendo, "when use regexp litteral and library functions " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " #/abc/ " )).to                                       eq("#/abc/")
    expect(@nendo.evalStr( " #/[a-z]/ " )).to                                     eq("#/[a-z]/")
    expect(@nendo.evalStr( " #/[a-zA-Z0-9]+/ " )).to                              eq("#/[a-zA-Z0-9]+/")
    expect(@nendo.evalStr( ' #/\d/ ' )).to                                        eq('#/\d/')
    expect(@nendo.evalStr( ' #/[\/]/ ' )).to                                      eq('#/[\/]/')
    expect(@nendo.evalStr( ' #/\]/ ' )).to                                        eq('#/\]/')
    expect(@nendo.evalStr( ' #/^\]/ ' )).to                                       eq('#/^\]/')
    expect(@nendo.evalStr( ' #/\[/ ' )).to                                        eq('#/\[/')
    expect(@nendo.evalStr( ' #/^\[/ ' )).to                                       eq('#/^\[/')
    expect(@nendo.evalStr( ' #/\.\^\$\/\+\-\(\)\|/ ' )).to                        eq('#/\.\^\$\/\+\-\(\)\|/')
    expect(@nendo.evalStr( " #/abc/i " )).to                                      eq("#/abc/i")
    expect(@nendo.evalStr( " #/[a-z]/i " )).to                                    eq("#/[a-z]/i")
    expect { @nendo.evalStr( " #/[a-z]/I " ) }.to                         raise_error(NameError)
    expect { @nendo.evalStr( " #/[a-z]/a " ) }.to                         raise_error(NameError)

    expect(@nendo.evalStr( ' (string->regexp "abc") ' )).to                       eq('#/abc/')
    expect(@nendo.evalStr( ' (string->regexp "[a-z]") ' )).to                     eq('#/[a-z]/')
    expect(@nendo.evalStr( ' (string->regexp "[a-zA-Z0-9]+" ) ' )).to             eq('#/[a-zA-Z0-9]+/')
    expect(@nendo.evalStr( ' (string->regexp "\\\\d" ) ' )).to                    eq('#/\d/')
    expect(@nendo.evalStr( " (regexp? #/str/ ) " )).to                            eq("#t")
    expect(@nendo.evalStr( " (regexp? #/str/i ) " )).to                           eq("#t")
    expect(@nendo.evalStr( " (regexp? \"str\" ) " )).to                           eq("#f")
    expect(@nendo.evalStr( " (regexp? 'str) " )).to                               eq("#f")
    expect(@nendo.evalStr( " (regexp? (. \"str\" intern)) " )).to                 eq("#f")
    expect(@nendo.evalStr( " (regexp? 100) " )).to                                eq("#f")

    expect(@nendo.evalStr( " (regexp->string #/abc/ ) " )).to                     eq('"abc"')
    expect(@nendo.evalStr( " (regexp->string #/[a-z]/ ) " )).to                   eq('"[a-z]"')
    expect(@nendo.evalStr( " (regexp->string #/[a-zA-Z0-9]+/ ) " )).to            eq('"[a-zA-Z0-9]+"')
    expect(@nendo.evalStr( ' (regexp->string #/\d+/ ) ' )).to                     eq('"\\\\d+"')

    expect(@nendo.evalStr( ' (define matchdata (rxmatch #/(\d+):(\d+)/ "foo314:2000bar")) ' )).to           eq('314:2000')
    expect(@nendo.evalStr( ' (rxmatch-start      matchdata) ' )).to                                         eq('3')
    expect(@nendo.evalStr( ' (rxmatch-start      matchdata 0) ' )).to                                       eq('3')
    expect(@nendo.evalStr( ' (rxmatch-start      matchdata 1) ' )).to                                       eq('3')
    expect(@nendo.evalStr( ' (rxmatch-start      matchdata 2) ' )).to                                       eq('7')
    expect(@nendo.evalStr( ' (rxmatch-end        matchdata) ' )).to                                         eq('11')
    expect(@nendo.evalStr( ' (rxmatch-end        matchdata 0) ' )).to                                       eq('11')
    expect(@nendo.evalStr( ' (rxmatch-end        matchdata 1) ' )).to                                       eq('6')
    expect(@nendo.evalStr( ' (rxmatch-end        matchdata 2) ' )).to                                       eq('11')
    expect(@nendo.evalStr( ' (rxmatch-substring  matchdata) ' )).to                                         eq('"314:2000"')
    expect(@nendo.evalStr( ' (rxmatch-substring  matchdata 0) ' )).to                                       eq('"314:2000"')
    expect(@nendo.evalStr( ' (rxmatch-substring  matchdata 1) ' )).to                                       eq('"314"')
    expect(@nendo.evalStr( ' (rxmatch-substring  matchdata 2) ' )).to                                       eq('"2000"')
    expect(@nendo.evalStr( ' (rxmatch-num-matches matchdata) ' )).to                                        eq('3')

    expect(@nendo.evalStr( ' (define matchdata (rxmatch #/(\w+)@([\w.]+)/ "foo@example.com")) ' )).to       eq('foo@example.com')
    expect(@nendo.evalStr( ' (rxmatch-substring  matchdata) ' )).to                                         eq('"foo@example.com"')
    expect(@nendo.evalStr( ' (rxmatch-substring  matchdata 0) ' )).to                                       eq('"foo@example.com"')
    expect(@nendo.evalStr( ' (rxmatch-substring  matchdata 1) ' )).to                                       eq('"foo"')
    expect(@nendo.evalStr( ' (rxmatch-substring  matchdata 2) ' )).to                                       eq('"example.com"')

    expect(@nendo.evalStr( ' (rxmatch->string #/(\w+)@([\w.]+)/ "foo@example.com")' )).to                   eq('"foo@example.com"')
    expect(@nendo.evalStr( ' (rxmatch->string #/(\w+)@([\w.]+)/ "foo@example.com" 0)' )).to                 eq('"foo@example.com"')
    expect(@nendo.evalStr( ' (rxmatch->string #/(\w+)@([\w.]+)/ "foo@example.com" 1)' )).to                 eq('"foo"')
    expect(@nendo.evalStr( ' (rxmatch->string #/(\w+)@([\w.]+)/ "foo@example.com" 2)' )).to                 eq('"example.com"')

    expect(@nendo.evalStr( ' (rxmatch->string #/abc/  "000abc00ABC000")' )).to                              eq('"abc"')
    expect(@nendo.evalStr( ' (rxmatch->string #/ABC/  "000abc00ABC000")' )).to                              eq('"ABC"')
    expect(@nendo.evalStr( ' (rxmatch->string #/abc/i "abc")' )).to                                         eq('"abc"')
    expect(@nendo.evalStr( ' (rxmatch->string #/abc/i "ABC")' )).to                                         eq('"ABC"')
    expect(@nendo.evalStr( ' (rxmatch->string #/ABC/i "abc")' )).to                                         eq('"abc"')
    expect(@nendo.evalStr( ' (rxmatch->string #/abc/i "AbC")' )).to                                         eq('"AbC"')

    expect(@nendo.evalStr( ' (rxmatch            #/abc/i "xxx")' )).to                                         eq('#f')
    expect(@nendo.evalStr( ' (rxmatch            #/XXX/  "xxx")' )).to                                         eq('#f')
    expect(@nendo.evalStr( ' (rxmatch->string    #/abc/i "xxx")' )).to                                         eq('#f')
    expect(@nendo.evalStr( ' (rxmatch->string    #/XXX/  "xxx")' )).to                                         eq('#f')

    expect(@nendo.evalStr( <<EOS
(define matchdata
  (rxmatch #/([あ-ん])([あ-ん])([あ-ん])([あ-ん])([あ-ん])/
           "ABC漢字あいうえお漢字ABC"))
EOS
           )).to  eq('あいうえお')
    expect(@nendo.evalStr( ' (rxmatch-start      matchdata) ' )).to                                         eq('5')
    expect(@nendo.evalStr( ' (rxmatch-end        matchdata) ' )).to                                         eq('10')
    expect(@nendo.evalStr( ' (rxmatch-substring  matchdata) ' )).to                                         eq('"あいうえお"')
    expect(@nendo.evalStr( ' (rxmatch-substring  matchdata 1) ' )).to                                       eq('"あ"')
    expect(@nendo.evalStr( ' (rxmatch-substring  matchdata 2) ' )).to                                       eq('"い"')
    expect(@nendo.evalStr( ' (rxmatch-substring  matchdata 3) ' )).to                                       eq('"う"')
  end
end


describe Nendo, "when call functions in init.nnd " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
    @nendo.loadInitFile  # to self optimizing.  The init.nnd file will be loaded twice, so `map' can be optimized on second loading phase.
  end
  it "should" do
    expect(@nendo.evalStr( " (cadr '(1 2 3 4)) " )).to eq("2")
    expect(@nendo.evalStr( " (caddr '(1 2 3 4)) " )).to eq("3")
    expect(@nendo.evalStr( " (cadddr '(1 2 3 4)) " )).to eq("4")
    expect(@nendo.evalStr( " (caar '((5 6 7 8))) " )).to eq("5")
    expect(@nendo.evalStr( " (cdar '((5 6 7 8))) " )).to eq("(6 7 8)")
    expect(@nendo.evalStr( " (cadar '((5 6 7 8))) " )).to eq("6")
    expect(@nendo.evalStr( " (cddar '((5 6 7 8))) " )).to eq("(7 8)")
    expect(@nendo.evalStr( " (iota 1) " )).to eq("(0)")
    expect(@nendo.evalStr( " (iota 3) " )).to eq("(0 1 2)")
    expect(@nendo.evalStr( " (append '() '()) " )).to eq("()")
    expect(@nendo.evalStr( " (append '(1) '()) " )).to eq("(1)")
    expect(@nendo.evalStr( " (append '() '(2)) " )).to eq("(2)")
    expect(@nendo.evalStr( " (append '(1) '(2)) " )).to eq("(1 2)")
    expect(@nendo.evalStr( " (append '(1 2) '(3 4)) " )).to eq("(1 2 3 4)")
    expect(@nendo.evalStr( " (append '(1 2) (cdr '(200))) " )).to eq("(1 2)")
    expect(@nendo.evalStr( " (append (cdr '(100)) '(10 20)) " )).to eq("(10 20)")
    expect(@nendo.evalStr( " (define lst '()) " )).to eq("()")
    expect(@nendo.evalStr( " (push! lst 1) " )).to eq("(1)")
    expect(@nendo.evalStr( " lst " )).to eq("(1)")
    expect(@nendo.evalStr( " (push! lst 2) " )).to eq("(2 1)")
    expect(@nendo.evalStr( " lst " )).to eq("(2 1)")
    expect(@nendo.evalStr( " (push! lst 3) " )).to eq("(3 2 1)")
    expect(@nendo.evalStr( " lst " )).to eq("(3 2 1)")
    expect(@nendo.evalStr( ' (push! lst "str") ' )).to eq('("str" 3 2 1)')
    expect(@nendo.evalStr( " lst " )).to eq('("str" 3 2 1)')
    expect(@nendo.evalStr( " (pair? '()) " )).to eq("#f")
    expect(@nendo.evalStr( " (pair? '(1)) " )).to eq("#t")
    expect(@nendo.evalStr( " (pair? '(1 2)) " )).to eq("#t")
    expect(@nendo.evalStr( " (pair? '(1 2 3)) " )).to eq("#t")
    expect(@nendo.evalStr( " (pair? '(1 . 2)) " )).to eq("#t")
    expect(@nendo.evalStr( " (pair? '(())) " )).to eq("#t")
    expect(@nendo.evalStr( " (pair? 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (pair? \"str\") " )).to eq("#f")
    expect(@nendo.evalStr( " (list? '()) " )).to eq("#t")
    expect(@nendo.evalStr( " (list? '(1)) " )).to eq("#t")
    expect(@nendo.evalStr( " (list? '(1 2)) " )).to eq("#t")
    expect(@nendo.evalStr( " (list? '(1 2 3)) " )).to eq("#t")
    expect(@nendo.evalStr( " (list? '(1 . 2)) " )).to eq("#f")
    expect(@nendo.evalStr( " (list? '(1 2 . 3)) " )).to eq("#f")
    expect(@nendo.evalStr( " (list? '(())) " )).to eq("#t")
    expect(@nendo.evalStr( " (list? 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (list? \"str\") " )).to eq("#f")
    expect(@nendo.evalStr( " (even? 2) " )).to eq("#t")
    expect(@nendo.evalStr( " (even? 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (even? 0) " )).to eq("#t")
    expect(@nendo.evalStr( " (even? -1) " )).to eq("#f")
    expect(@nendo.evalStr( " (even? -2) " )).to eq("#t")
    expect(@nendo.evalStr( " (odd? 2) " )).to eq("#f")
    expect(@nendo.evalStr( " (odd? 1) " )).to eq("#t")
    expect(@nendo.evalStr( " (odd? 0) " )).to eq("#f")
    expect(@nendo.evalStr( " (odd? -1) " )).to eq("#t")
    expect(@nendo.evalStr( " (odd? -2) " )).to eq("#f")
    expect(@nendo.evalStr( " (zero? 0) " )).to eq("#t")
    expect(@nendo.evalStr( " (zero? #f) " )).to eq("#f")
    expect(@nendo.evalStr( " (zero? #t) " )).to eq("#f")
    expect(@nendo.evalStr( " (zero? 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (zero? 2) " )).to eq("#f")
    expect(@nendo.evalStr( " (zero? -1) " )).to eq("#f")
    expect(@nendo.evalStr( " (zero? \"str\") " )).to eq("#f")
    expect(@nendo.evalStr( " (zero? zero?) " )).to eq("#f")
    expect(@nendo.evalStr( " (positive? 1) " )).to eq("#t")
    expect(@nendo.evalStr( " (positive? 0) " )).to eq("#f")
    expect(@nendo.evalStr( " (positive? -1) " )).to eq("#f")
    expect(@nendo.evalStr( " (negative? 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (negative? 0) " )).to eq("#f")
    expect(@nendo.evalStr( " (negative? -1) " )).to eq("#t")
    expect(@nendo.evalStr( " (abs -1) " )).to eq("1")
    expect(@nendo.evalStr( " (abs 1) " )).to eq("1")
    expect(@nendo.evalStr( " (abs -1000) " )).to eq("1000")
    expect(@nendo.evalStr( " (abs 1000) " )).to eq("1000")
    expect(@nendo.evalStr( " (max -2 1 0 1 2 3 4 5) " )).to eq("5")
    expect(@nendo.evalStr( " (max 5 4 3 2 1 0 -1 -2) " )).to eq("5")
    expect(@nendo.evalStr( " (max 1000000000 10 -10000) " )).to eq("1000000000")
    expect(@nendo.evalStr( " (min -2 1 0 1 2 3 4 5) " )).to eq("-2")
    expect(@nendo.evalStr( " (min 5 4 3 2 1 0 -1 -2) " )).to eq("-2")
    expect(@nendo.evalStr( " (min 1000000000 10 -10000) " )).to eq("-10000")
    expect(@nendo.evalStr( " (succ -1) " )).to eq("0")
    expect(@nendo.evalStr( " (succ 0) " )).to eq("1")
    expect(@nendo.evalStr( " (succ 1) " )).to eq("2")
    expect(@nendo.evalStr( " (pred -1) " )).to eq("-2")
    expect(@nendo.evalStr( " (pred 0) " )).to eq("-1")
    expect(@nendo.evalStr( " (pred 1) " )).to eq("0")
    expect(@nendo.evalStr( " (pred 2) " )).to eq("1")
    expect(@nendo.evalStr( " (min 1000000000 10 -10000) " )).to eq("-10000")
    expect(@nendo.evalStr( " (nth 0  '(100 200 300)) " )).to eq("100")
    expect(@nendo.evalStr( " (nth 1  '(100 200 300)) " )).to eq("200")
    expect(@nendo.evalStr( " (nth 2  '(100 200 300)) " )).to eq("300")
    expect(@nendo.evalStr( " (nth 3  '(100 200 300)) " )).to eq("()")
    expect(@nendo.evalStr( " (nth -1 '(100 200 300)) " )).to eq("()")
    expect(@nendo.evalStr( " (first   '(100 200 300 400 500 600 700 800 900 1000)) " )).to eq("100")
    expect(@nendo.evalStr( " (second  '(100 200 300 400 500 600 700 800 900 1000)) " )).to eq("200")
    expect(@nendo.evalStr( " (third   '(100 200 300 400 500 600 700 800 900 1000)) " )).to eq("300")
    expect(@nendo.evalStr( " (fourth  '(100 200 300 400 500 600 700 800 900 1000)) " )).to eq("400")
    expect(@nendo.evalStr( " (fifth   '(100 200 300 400 500 600 700 800 900 1000)) " )).to eq("500")
    expect(@nendo.evalStr( " (sixth   '(100 200 300 400 500 600 700 800 900 1000)) " )).to eq("600")
    expect(@nendo.evalStr( " (seventh '(100 200 300 400 500 600 700 800 900 1000)) " )).to eq("700")
    expect(@nendo.evalStr( " (eighth  '(100 200 300 400 500 600 700 800 900 1000)) " )).to eq("800")
    expect(@nendo.evalStr( " (ninth   '(100 200 300 400 500 600 700 800 900 1000)) " )).to eq("900")
    expect(@nendo.evalStr( " (tenth   '(100 200 300 400 500 600 700 800 900 1000)) " )).to eq("1000")
    expect(@nendo.evalStr( " (first   '()) " )).to eq("()")
    expect(@nendo.evalStr( " (tenth   '()) " )).to eq("()")
    expect(@nendo.evalStr( " (to-s      10) " )).to eq('"10"')
    expect(@nendo.evalStr( " (to_s      10) " )).to eq('"10"')
    expect(@nendo.evalStr( " (x->string 10) " )).to eq('"10"')
    expect(@nendo.evalStr( " (number->string 11) " )).to eq('"11"')
    expect(@nendo.evalStr( " (to-s      2.1) " )).to eq('"2.1"')
    expect(@nendo.evalStr( " (to_s      2.1) " )).to eq('"2.1"')
    expect(@nendo.evalStr( " (x->string 2.1) " )).to eq('"2.1"')
    expect(@nendo.evalStr( " (number->string 2.2) " )).to eq('"2.2"')
    expect(@nendo.evalStr( ' (string-append) ' )).to eq('""')
    expect(@nendo.evalStr( ' (string-append "a") ' )).to eq('"a"')
    expect(@nendo.evalStr( ' (string-append "a" "b") ' )).to eq('"ab"')
    expect(@nendo.evalStr( ' (string-append "a" "B" "c" "D" "e") ' )).to eq('"aBcDe"')
    expect(@nendo.evalStr( ' (string=? "ABC" "ABC") ' )).to              eq('#t')
    expect(@nendo.evalStr( ' (string=? "ABC" "ABc") ' )).to              eq('#f')
    expect(@nendo.evalStr( ' (string=? "ABC" "abc") ' )).to              eq('#f')
    expect(@nendo.evalStr( ' (string=? 100 100) ' )).to                  eq('#t')
    expect(@nendo.evalStr( ' (string=? (+ "A" "B") "AB") ' )).to         eq('#t')
    expect(@nendo.evalStr( " (to_i    \"22\") " )).to eq('22')
    expect(@nendo.evalStr( " (to-i    \"22\") " )).to eq('22')
    expect(@nendo.evalStr( " (to_i    \"10000\") " )).to eq('10000')
    expect(@nendo.evalStr( " (to-i    \"10000\") " )).to eq('10000')
    expect(@nendo.evalStr( " (let1 aaa 111 aaa) " )).to eq("111")
    expect(@nendo.evalStr( " (let1 aaa (+ 2 3) aaa) " )).to eq("5")
    expect(@nendo.evalStr( " (let1 aaa 333 (let1 bbb 444 (+ aaa bbb))) " )).to eq("777")
    expect(@nendo.evalStr( " (let1 aaa 333 (let1 bbb 444 (set! bbb 555) (+ aaa bbb))) " )).to eq("888")
    expect(@nendo.evalStr( " (memq 'b '(a b c d)) " )).to eq("(b c d)")
    expect(@nendo.evalStr( " (memq 'c '(a b c d)) " )).to eq("(c d)")
    expect(@nendo.evalStr( " (memq 'd '(a b c d)) " )).to eq("(d)")
    expect(@nendo.evalStr( " (memq 'e '(a b c d)) " )).to eq("#f")
    expect(@nendo.evalStr( " (memq 'e '(a b c d . e)) " )).to eq("#f")
    expect(@nendo.evalStr( ' (memq "b" \'("a" "b" "c" "d")) ' )).to eq('#f')
    expect(@nendo.evalStr( ' (memv "b" \'("a" "b" "c" "d")) ' )).to eq('("b" "c" "d")')
    expect(@nendo.evalStr( ' (memv "c" \'("a" "b" "c" "d")) ' )).to eq('("c" "d")')
    expect(@nendo.evalStr( ' (memv "d" \'("a" "b" "c" "d")) ' )).to eq('("d")')
    expect(@nendo.evalStr( ' (memv "e" \'("a" "b" "c" "d")) ' )).to eq('#f')
    expect(@nendo.evalStr( ' (memv "e" \'("a" "b" "c" "d" . "e")) ' )).to eq('#f')
    expect(@nendo.evalStr( ' (memv \'("b") \'(("a") ("b") ("c") ("d"))) ' )).to eq('#f')
    expect(@nendo.evalStr( ' (member \'("b") \'(("a") ("b") ("c") ("d"))) ' )).to eq('(("b") ("c") ("d"))')
    expect(@nendo.evalStr( ' (member \'("c") \'(("a") ("b") ("c") ("d"))) ' )).to eq('(("c") ("d"))')
    expect(@nendo.evalStr( ' (member \'("d") \'(("a") ("b") ("c") ("d"))) ' )).to eq('(("d"))')
    expect(@nendo.evalStr( ' (member \'("e") \'(("a") ("b") ("c") ("d"))) ' )).to eq('#f')
    expect(@nendo.evalStr( ' (member \'("e") \'(("a") ("b") ("c") ("d") . ("e"))) ' )).to eq('#f')
    expect(@nendo.evalStr( " (let1 v (map (lambda (x) x) '(1 2 3))  v) " )).to eq("(1 2 3)")
    expect(@nendo.evalStr( " (let  ((v (map (lambda (x) x) '(1 2 3)))) v) " )).to eq("(1 2 3)")
    expect(@nendo.evalStr( " (cond (true  1) (false 2)) " )).to eq("1")
    expect(@nendo.evalStr( " (cond (true   ) (false  )) " )).to eq("#t")
    expect(@nendo.evalStr( " (cond (false 1) (true  2)) " )).to eq("2")
    expect(@nendo.evalStr( " (cond (true  1) (true  2)) " )).to eq("1")
    expect(@nendo.evalStr( " (cond (false 1) (false 2)) " )).to eq("()")
    expect(@nendo.evalStr( " (cond (false 1) (false 2) (else 3)) " )).to eq("3")
    expect(@nendo.evalStr( <<EOS
(cond
 ((- 10 9)
  =>
  (lambda (x)
    (+ \"<\" (to_s x) \">\")))
 (else
  2))
EOS
           )).to eq('"<1>"')
    expect(@nendo.evalStr( <<EOS
(cond
 (true  1)
 ((- 10 8)
  =>
  (lambda (x)
    (+ \"<\" (to_s x) \">\")))
 (else
  3))
EOS
           )).to eq("1")
    expect(@nendo.evalStr( " (or) " )).to eq("#f")
    expect(@nendo.evalStr( " (or true) " )).to eq("#t")
    expect(@nendo.evalStr( " (or false) " )).to eq("#f")
    expect(@nendo.evalStr( " (or nil) " )).to eq("#f")
    expect(@nendo.evalStr( " (or '(1)) " )).to eq("(1)")
    expect(@nendo.evalStr( " (or '()) " )).to eq("()")
    expect(@nendo.evalStr( " (or true true true) " )).to eq("#t")
    expect(@nendo.evalStr( " (or 1 2 3) " )).to eq("1")
    expect(@nendo.evalStr( " (or false 2) " )).to eq("2")
    expect(@nendo.evalStr( " (or false false 3) " )).to eq("3")
    expect(@nendo.evalStr( " (or false '(2) false) " )).to eq("(2)")
    expect(@nendo.evalStr( " (and) " )).to eq("#t")
    expect(@nendo.evalStr( " (and true) " )).to eq("#t")
    expect(@nendo.evalStr( " (and false) " )).to eq("#f")
    expect(@nendo.evalStr( " (and nil) " )).to eq("nil")
    expect(@nendo.evalStr( " (and '(1)) " )).to eq("(1)")
    expect(@nendo.evalStr( " (and '()) " )).to eq("()")
    expect(@nendo.evalStr( " (and true true true) " )).to eq("#t")
    expect(@nendo.evalStr( " (and 1 2 3) " )).to eq("3")
    expect(@nendo.evalStr( " (and false 2) " )).to eq("#f")
    expect(@nendo.evalStr( " (and false false 3) " )).to eq("#f")
    expect(@nendo.evalStr( " (and true  2) " )).to eq("2")
    expect(@nendo.evalStr( " (and true  true  3) " )).to eq("3")
    expect(@nendo.evalStr( " (and true  true  3 false) " )).to eq("#f")
    expect(@nendo.evalStr( " (and true '(2) true) " )).to eq("#t")
    expect(@nendo.evalStr( " (and true true '(2)) " )).to eq("(2)")
    expect(@nendo.evalStr( " (and true '(2) false) " )).to eq("#f")
    expect(@nendo.evalStr( <<EOS
(define total 0)
(and 1
     2
     (set! total (+ total 1))
     (set! total (+ total 2))
     5)
total
EOS
           )).to eq("3")
    expect(@nendo.evalStr( <<EOS
(define total 1)
(and 1
     2
     false
     (set! total (+ total 2))
     (set! total (+ total 3))
     5)
total
EOS
           )).to eq("1")
    expect(@nendo.evalStr( " (apply + 100 '()) " )).to eq("100")
    expect(@nendo.evalStr( " (apply + '(1 2)) " )).to eq("3")
    expect(@nendo.evalStr( " (apply + 1 2 '(3)) " )).to eq("6")
    expect(@nendo.evalStr( " (apply + 1 2 '(3 4)) " )).to eq("10")
    expect(@nendo.evalStr( " (apply + 1 2 3 '(4)) " )).to eq("10")
    expect(@nendo.evalStr( ' (apply + \'("a" "b" "c")) ' )).to eq('"abc"')
    expect(@nendo.evalStr( " (range 5) " )).to eq("(0 1 2 3 4)")
    expect(@nendo.evalStr( " (range 5 1) " )).to eq("(1 2 3 4 5)")
    expect(@nendo.evalStr( " (range 5 2) " )).to eq("(2 3 4 5 6)")
    expect(@nendo.evalStr( " (iota  5 2) " )).to eq("(2 3 4 5 6)")
    expect(@nendo.evalStr( " (apply + (range 11)) " )).to eq("55")
    expect(@nendo.evalStr( " (apply + (map (lambda (x) (+ x 1)) (range 10))) " )).to eq("55")
    expect(@nendo.evalStr( " (apply + (append (range 11) '(100))) " )).to eq("155")
    expect(@nendo.evalStr( " (apply cons '(1 2)) " )).to eq("(1 . 2)")
    expect(@nendo.evalStr( " (apply list '(1 2)) " )).to eq("(1 2)")
    expect(@nendo.evalStr( " (apply list (list 1 '())) " )).to eq("(1 ())")
    expect(@nendo.evalStr( " (apply list (list 1 (cdr '(100)))) " )).to eq("(1 ())")
    expect(@nendo.evalStr( " (map (lambda (x) 1)  '()) " )).to           eq("()")
    expect(@nendo.evalStr( " (map (lambda (x) 1) (to-list '#())) " )).to eq("()")
    expect(@nendo.evalStr( " (map (lambda (x) (* x 2)) '(1 2 3)) " )).to eq("(2 4 6)")
    expect(@nendo.evalStr( " (map (lambda (x) (+ x 1)) '(1 2 3)) " )).to eq("(2 3 4)")
    expect(@nendo.evalStr( <<EOS
(map
 (lambda (a b)   (+ a b))
 '(1 2 3)
 '(10 20 30))
EOS
           )).to eq("(11 22 33)")
    expect(@nendo.evalStr( <<EOS
(map
 (lambda (a b)
   (- b a))
 '(1 2 3)
 '(10 20 30))
EOS
           )).to eq("(9 18 27)")
    expect(@nendo.evalStr( <<EOS
(map
 (lambda (a b c)
   (+ a b c))
 '(1 2 3)
 '(10 20 30)
 '(100 200 300))
EOS
           )).to eq("(111 222 333)")
    expect(@nendo.evalStr( <<EOS
(define _result
  (map
   (lambda (x)
     (* x 2))
   (range 10000 1)))
(list
 (first  _result)
 (second _result)
 (last-pair _result))
EOS
           )).to eq("(2 4 (20000))")

    expect(@nendo.evalStr( <<EOS
(list
 (list* 1)
 (list* 1 2)
 (list* 1 2 3)
 (list* 1 2 3 4))
EOS
           )).to eq("(1 (1 . 2) (1 2 . 3) (1 2 3 . 4))")

    expect(@nendo.evalStr( <<EOS
(list
 (list* '())
 (list* 1 '())
 (list* 1   2 '())
 (list* 1   2   3  '()))
EOS
           )).to eq("(() (1) (1 2) (1 2 3))")

    expect(@nendo.evalStr( <<EOS
(list
 (list* (cdr '(100)))
 (list* 1   (cdr '(100)))
 (list* 1   2   (cdr '(100)))
 (list* 1   2   3    (cdr '(100))))
EOS
           )).to eq("(() (1) (1 2) (1 2 3))")

    expect(@nendo.evalStr( <<EOS
(list
 (list* '())
 (list* '() '())
 (list* '() '() '())
 (list* '() '() '() '()))
EOS
           )).to eq("(() (()) (() ()) (() () ()))")

    expect(@nendo.evalStr( <<EOS
(define _lst '())
(for-each
 (lambda (x)
   (set! _lst (cons 1 _lst)))
 '())
_lst
EOS
           )).to eq("()")
    expect(@nendo.evalStr( <<EOS
(define _lst '())
(for-each
 (lambda (x)
   (set! _lst (cons (* x 2) _lst)))
 '(1 2 3))
_lst
EOS
           )).to eq("(6 4 2)")
    expect(@nendo.evalStr( <<EOS
(define _lst '())
(for-each
 (lambda (x)
   (set! _lst (cons (+ x 1) _lst)))
 '(1 2 3))
_lst
EOS
           )).to eq("(4 3 2)")
    expect(@nendo.evalStr( <<EOS
(define _lst '())
(for-each
 (lambda (a b)
   (set! _lst (cons (cons a b) _lst)))
 '(1 2 3)
 '(10 20 30))
_lst
EOS
           )).to eq(
      "((3 . 30) (2 . 20) (1 . 10))"
    )
    expect(@nendo.evalStr( <<EOS
(define _cnt 0)
(for-each
 (lambda (x)
   (set! _cnt (+ _cnt 1)))
 (range 10000))
_cnt
EOS
           )).to eq("10000")
    expect(@nendo.evalStr( " (filter     (lambda (x) x)             '()) " )).to      eq("()")
    expect(@nendo.evalStr( " (filter     (lambda (x) (= x 100))     '(1 2 3)) " )).to eq("()")
    expect(@nendo.evalStr( " (filter     (lambda (x) (= x 2))       '(1 2 3)) " )).to eq("(2)")
    expect(@nendo.evalStr( " (filter     (lambda (x) (not (= x 2))) '(1 2 3)) " )).to eq("(1 3)")
    expect(@nendo.evalStr( " (filter     (lambda (x) (if (= x 2) (* x 100) false))   '(1 2 3)) " )).to eq("(2)")
    expect(@nendo.evalStr( " (find       (lambda (x) (= x 100))     '(1 2 3)) " )).to eq("#f")
    expect(@nendo.evalStr( " (find       (lambda (x) (= x 2))       '(1 2 3)) " )).to eq("2")
    expect(@nendo.evalStr( " (find       (lambda (x) (not (= x 2))) '(1 2 3)) " )).to eq("1")
    expect(@nendo.evalStr( " (find       (lambda (x) (if (= x 2) (* x 100) false))   '(1 2 3)) " )).to eq("2")
    expect(@nendo.evalStr( " (eq? find any)" )).to      eq("#f")
    expect(@nendo.evalStr( " (find  even?  '(1 2 3)) " )).to eq("2")
    expect(@nendo.evalStr( " (filter-map (lambda (x) x)             '()) " )).to      eq("()")
    expect(@nendo.evalStr( " (filter-map (lambda (x) (= x 100))     '(1 2 3)) " )).to eq("()")
    expect(@nendo.evalStr( " (filter-map (lambda (x) (= x 2))       '(1 2 3)) " )).to eq("(#t)")
    expect(@nendo.evalStr( " (filter-map (lambda (x) (not (= x 2))) '(1 2 3)) " )).to eq("(#t #t)")
    expect(@nendo.evalStr( " (fold (lambda (x y) x y)       0 '()) " )).to            eq("0")
    expect(@nendo.evalStr( " (fold (lambda (x y) (+ x y))   0  '(1 2 3)) " )).to      eq("6")
    expect(@nendo.evalStr( " (fold (lambda (x y) (+ x y))   1  '(2 3 4)) " )).to      eq("10")
    expect(@nendo.evalStr( " (fold (lambda (x y) (* x y))   1  '(2 3 4 5)) " )).to    eq("120")
    expect(@nendo.evalStr( " (fold (lambda (x y) (* x y))   0  '(2 3 4 5)) " )).to    eq("0")
    expect(@nendo.evalStr( <<EOS
(filter-map
 (lambda (x)
   (if (= x 2) (* x 10) false))
 '(1 2 3))
EOS
           )).to eq("(20)")
    expect(@nendo.evalStr( <<EOS
(filter-map
 (lambda (x)
   (if (not (= x 2)) (* x 10) false))
 '(1 2 3))
EOS
           )).to eq("(10 30)")
    expect(@nendo.evalStr( " (any   even?  '(1 2 3)) " )).to eq("#t")
    expect(@nendo.evalStr( " (any   even?  '(1 3)) " )).to eq("#f")
    expect(@nendo.evalStr( " (any   odd?   '(1 3)) " )).to eq("#t")
    expect(@nendo.evalStr( " (any   (lambda (x) x) '(1 2 3)) " )).to eq("1")
    expect(@nendo.evalStr( <<EOS
(let1 result '()
  (do
      ((i 0 (+ i 1)))
      ((< 10 i) #f)
    (set! result (cons i result)))
  (reverse result))
EOS
           )).to eq("(0 1 2 3 4 5 6 7 8 9 10)")
    expect(@nendo.evalStr( <<EOS
(let1 result '()
  (do
      ((i 0 (+ i 3)))
      ((< (* 3 10) i) #f)
    (set! result (cons i result)))
  (reverse result))
EOS
           )).to eq("(0 3 6 9 12 15 18 21 24 27 30)")
  end
end

describe Nendo, "when use raise function " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    expect { @nendo.evalStr( ' (%raise TypeError      "typeError"     "nendo_spec.rb:1  typeError"    ) ' ) }.to  raise_error( TypeError )
    expect { @nendo.evalStr( ' (%raise ArgumentError  "argumentError" "nendo_spec.rb:1  argumentError") ' ) }.to  raise_error( ArgumentError )
    expect { @nendo.evalStr( ' (raise TypeError       "typeError"                                     ) ' ) }.to  raise_error( TypeError )
    expect { @nendo.evalStr( ' (raise ArgumentError   "argumentError"                                 ) ' ) }.to  raise_error( ArgumentError )
    expect { @nendo.evalStr( ' (raise TypeError                                                       ) ' ) }.to  raise_error( TypeError )
    expect { @nendo.evalStr( ' (raise ArgumentError                                                   ) ' ) }.to  raise_error( ArgumentError )
  end
end

describe Nendo, "when use values " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " (values? (make-values '())) " )).to eq("#t")
    expect { @nendo.evalStr( " (make-values '(1))) " ) }.to        raise_error(ArgumentError)
    expect(@nendo.evalStr( " (values? (make-values '(1 2))) " )).to eq("#t")
    expect(@nendo.evalStr( " (values? (make-values '(1 2 3))) " )).to eq("#t")
    expect(@nendo.evalStr( " (values? (values)) " )).to eq("#t")
    expect(@nendo.evalStr( " (values? (values 1)) " )).to eq("#f")
    expect(@nendo.evalStr( " (values 1) " )).to eq("1")
    expect(@nendo.evalStr( " (values? (values 1 2)) " )).to eq("#t")
    expect(@nendo.evalStr( " (values? (values 1 2 3)) " )).to eq("#t")
    expect(@nendo.evalStr( " (values? (values '(a) \"b\" '(\"C\"))) " )).to eq("#t")
    expect(@nendo.evalStr( " (values-values (values)) " )).to eq("()")
    expect { @nendo.evalStr( " (values-values (values 1)) " ) }.to     raise_error(TypeError)
    expect(@nendo.evalStr( " (values-values (values 1 2)) " )).to eq("(1 2)")
    expect(@nendo.evalStr( " (values-values (values 1 2 3)) " )).to eq("(1 2 3)")
    expect(@nendo.evalStr( " (values-values (values '(a) \"b\" '(\"C\"))) " )).to eq('((a) "b" ("C"))')
    expect(@nendo.evalStr( <<EOS
(call-with-values
    (lambda () (values 4 5))
  (lambda (a b) b))
EOS
           )).to eq("5")
    expect(@nendo.evalStr( <<EOS
(call-with-values
    (lambda () (values 1 2))
  cons)
EOS
           )).to eq("(1 . 2)")
    expect(@nendo.evalStr( <<EOS
(call-with-values
    (lambda () (values 10))
  list)
EOS
           )).to eq("(10)")
    expect(@nendo.evalStr( <<EOS
(call-with-values
    (lambda () (values))
  list)
EOS
           )).to eq("()")
    expect(@nendo.evalStr( " (call-with-values * -) " )).to eq("-1")
    expect(@nendo.evalStr( " (receive (a)       (values 10)        (list a))       " )).to eq("(10)")
    expect(@nendo.evalStr( " (receive (a b)     (values 10 20)     (list a b))     " )).to eq("(10 20)")
    expect(@nendo.evalStr( " (receive (a b c)   (values 10 20 30)  (list a b c))   " )).to eq("(10 20 30)")
    expect(@nendo.evalStr( " (receive (a . b)   (values 10)        (list a b))     " )).to eq("(10 ())")
    expect(@nendo.evalStr( " (receive (a . b)   (values 10 20)     (list a b))     " )).to eq("(10 (20))")
    expect(@nendo.evalStr( " (receive (a . b)   (values 10 20 30)  (list a b))     " )).to eq("(10 (20 30))")
    expect(@nendo.evalStr( " (receive all       (values)           all)            " )).to eq("()")
    expect(@nendo.evalStr( " (receive all       (values 10)        all)            " )).to eq("(10)")
    expect(@nendo.evalStr( " (receive all       (values 10 20)     all)            " )).to eq("(10 20)")
    expect(@nendo.evalStr( " (receive all       (values 10 20 30)  all)            " )).to eq("(10 20 30)")
    expect(@nendo.evalStr( " (receive (a b)     (values '(1) '(2)) (list a b))     " )).to eq("((1) (2))")
    expect(@nendo.evalStr( " (receive (a b)     (values '() '(2))  (list a b))     " )).to eq("(() (2))")
    expect(@nendo.evalStr( " (receive (a b)     (values '(1) '())  (list a b))     " )).to eq("((1) ())")
    expect(@nendo.evalStr( " (receive (a b)     (values #t #t)     (cons a b))     " )).to eq("(#t . #t)")
    expect(@nendo.evalStr( " (receive (a b)     (values #t #f)     (cons a b))     " )).to eq("(#t . #f)")
    expect(@nendo.evalStr( " (receive (a b)     (values nil #t)    (cons a b))     " )).to eq("(nil . #t)")
    expect(@nendo.evalStr( " (receive (a b)     (values nil #f)    (cons a b))     " )).to eq("(nil . #f)")
    expect(@nendo.evalStr( " (receive (a b)     (values nil nil)   (cons a b))     " )).to eq("(nil . nil)")
    expect { @nendo.evalStr( " (receive (a)       (values)           (list a))       " ) }.to   raise_error( ArgumentError, /wrong number of arguments/ )
    expect { @nendo.evalStr( <<EOS
(map
 (lambda (a)   a))
EOS
                    ) }.to   raise_error( ArgumentError, /wrong number of arguments/ )
    expect { @nendo.evalStr( <<EOS
(map
 (lambda () 1)
 '(1 2 3))
EOS
                    ) }.to   raise_error( ArgumentError, /wrong number of arguments/ )
    expect { @nendo.evalStr( <<EOS
(map
 (lambda (a)   a)
 '(1 2 3)
 '(10 20 30))
EOS
                    ) }.to   raise_error( ArgumentError, /wrong number of arguments/ )
    expect { @nendo.evalStr( <<EOS
(map
 (lambda (a b)   (+ a b))
 '(1 2 3))
EOS
                    ) }.to   raise_error( ArgumentError, /wrong number of arguments/ )
  end
end

describe Nendo, "when toplevel variable was overwritten " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " (define a 1) a" )).to eq("1")
    expect { @nendo.evalStr( " (define (c-func) (+ a b)) (c-func)" ) }.to   raise_error( NameError )
    expect(@nendo.evalStr( " (define b 2) b" )).to eq("2")
    expect(@nendo.evalStr( " (c-func) " )).to eq("3")
    expect(@nendo.evalStr( " (define b 20) " )).to eq("20")
    expect(@nendo.evalStr( " (c-func) " )).to eq("21")

    expect(@nendo.evalStr( " (define (a-func) 10) (a-func)" )).to eq("10")
    expect { @nendo.evalStr( " (define (c-func) (* (a-func) (b-func))) (c-func)" ) }.to   raise_error( NameError )
    expect(@nendo.evalStr( " (define (b-func) 20)  (b-func)" )).to eq("20")
    expect(@nendo.evalStr( " (c-func) " )).to eq("200")
    expect(@nendo.evalStr( " (define (b-func) 200) (b-func)" )).to eq("200")
    expect(@nendo.evalStr( " (c-func) " )).to eq("2000")
  end
end

describe Nendo, "when use quasiquote macro " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " '(a b c) " )).to eq("(a b c)")
    expect(@nendo.evalStr( " `(a b c) " )).to eq("(a b c)")
    expect(@nendo.evalStr( " `(1 2 3) " )).to eq("(1 2 3)")
    expect(@nendo.evalStr( " (set! a 3) `(1 2 ,a) " )).to eq("(1 2 3)")
    expect(@nendo.evalStr( " (set! a 3) `(1 2 ,@(list a)) " )).to eq("(1 2 3)")
    expect(@nendo.evalStr( " (set! a 3) `(1 ,@(list 2 a)) " )).to eq("(1 2 3)")
    expect(@nendo.evalStr( " (set! a 11) `,a " )).to eq("11")
    expect(@nendo.evalStr( " (set! a 12) ``,a " )).to eq("(quasiquote (unquote a))")
    expect(@nendo.evalStr( ' (define str "string") str ' )).to eq('"string"')
    expect(@nendo.evalStr( ' `(,str) ' )).to eq('("string")')
    expect(@nendo.evalStr( ' `("STRING") ' )).to eq('("STRING")')
    expect(@nendo.evalStr( ' `(,str "STRING") ' )).to eq('("string" "STRING")')
    expect(@nendo.evalStr( ' `("STRING" ,str) ' )).to eq('("STRING" "string")')
    expect(@nendo.evalStr( ' (car    `("STRING" ,str)) ' )).to eq('"STRING"')
    expect(@nendo.evalStr( ' (second `("STRING" ,str)) ' )).to eq('"string"')
    expect(@nendo.evalStr( ' (caar   `(("STRING" ,str))) ' )).to eq('"STRING"')
    expect(@nendo.evalStr( ' (string-join `("A" "B" "C" "D")) ' )).to eq('"ABCD"')
    expect(@nendo.evalStr( " `(list ,(+ 1 2) 4) " )).to eq("(list 3 4)")
    expect(@nendo.evalStr( " (let ((name 'a)) `(list ,name ',name)) " )).to eq("(list a (quote a))")
    expect(@nendo.evalStr( " `(a `(b ,(+ 1 2) ,(foo ,(+ 1 3) d) e) f) " )).to eq("(a (quasiquote (b (unquote (+ 1 2)) (unquote (foo 4 d)) e)) f)")
    expect(@nendo.evalStr( " `(( foo ,(- 10 3)) ,@(cdr '(c)) . ,(car '(cons))) " )).to eq("((foo 7) . cons)")
  end
end

describe Nendo, "when use macros made by quasiquote. " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " (case (length '(1      )) ((1) \"one\") ((2) \"two\") (else \"else\")) " )).to eq('"one"')
    expect(@nendo.evalStr( " (case (length '(1 2    )) ((1) \"one\") ((2) \"two\") (else \"else\")) " )).to eq('"two"')
    expect(@nendo.evalStr( " (case (length '(1 2 3  )) ((1) \"one\") ((2) \"two\") (else \"else\")) " )).to eq('"else"')
    expect(@nendo.evalStr( " (case (length '(1 2 3 4)) ((1) \"one\") ((2) \"two\") (else \"else\")) " )).to eq('"else"')
    expect(@nendo.evalStr( " (case   100               ((1) \"one\") ((2) \"two\") (else \"else\")) " )).to eq('"else"')
    expect(@nendo.evalStr( " (case (car '(a b 1))      ((a) 'a) ((b) 'b) (else 'else)) "              )).to eq('a')
    expect(@nendo.evalStr( " (case (cadr '(a b 1))     ((a) 'a) ((b) 'b) (else 'else)) "              )).to eq('b')
    expect(@nendo.evalStr( " (case (caddr '(a b 1))    ((a b) 'a) ((1 2) 'number) (else 'else)) "     )).to eq('number')
    expect(@nendo.evalStr( " (case (cadddr '(a b 1 2)) ((a b) 'a) ((1 2) 'number) (else 'else)) "     )).to eq('number')
    expect(@nendo.evalStr( " (let* ((a 1)   (b (+ a 2)))  (cons a b)) " )).to eq("(1 . 3)")
    expect(@nendo.evalStr( " (let* ((a 10)  (b (* a 2)))  (cons a b)) " )).to eq("(10 . 20)")
    expect(@nendo.evalStr( " (let* ((a 10)  (b (* a 2)) (c (* b 3)))  (list a b c)) " )).to eq("(10 20 60)")
    expect(@nendo.evalStr( " (begin0 1 2 3) " )).to eq("1")
    expect(@nendo.evalStr( <<EOS
(define a 2)
(begin0 (set! a (* a 2))
        (set! a (* a 2))
        (set! a (* a 2)))
EOS
           )).to eq("4")
    expect(@nendo.evalStr( " (begin0 100) " )).to eq("100")
    expect(@nendo.evalStr( " (begin0) " )).to eq("#f")
    expect(@nendo.evalStr( <<EOS
(receive (a b)
    (begin0
      (values 1 2)
      (values 10 20)
      (values 100 200))
  (cons a b))
EOS
           )).to eq("(1 . 2)")
    expect(@nendo.evalStr( " (macroexpand '(when #t (print \"1\") (print \"2\"))) " )).to eq('(if #t (begin (print "1") (print "2")))')
    expect(@nendo.evalStr( " (macroexpand '(unless #t (print \"1\") (print \"2\"))) " )).to eq('(if (not #t) (begin (print "1") (print "2")))')
    expect(@nendo.evalStr( " (macroexpand '(if-let1 a #t  (print \"T\")  (print \"F\"))) " )).to eq('(%let ((a #t)) (if a (print "T") (print "F")))')
    expect(@nendo.evalStr( " (let1 count 0 (when   #t (set! count (+ count 1)) (set! count (+ count 1)))  count) " )).to eq("2")
    expect(@nendo.evalStr( " (let1 count 0 (when   #f (set! count (+ count 1)) (set! count (+ count 1)))  count) " )).to eq("0")
    expect(@nendo.evalStr( " (let1 count 0 (unless #t (set! count (+ count 1)) (set! count (+ count 1)))  count) " )).to eq("0")
    expect(@nendo.evalStr( " (let1 count 0 (unless #f (set! count (+ count 1)) (set! count (+ count 1)))  count) " )).to eq("2")
    expect(@nendo.evalStr( " (if-let1 m (rxmatch #/([0-9]+)/ \"abc100abc\") (rxmatch-substring m 1)) " )).to eq('"100"')
    expect(@nendo.evalStr( " (macroexpand '#?.) " )).to eq('"(string):1"')
    expect(@nendo.evalStr( " (macroexpand '(begin 1 2 #?. 4 5)) " )).to eq('(begin 1 2 "(string):1" 4 5)')
  end
end

describe Nendo, "when use define and lambda macro " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( <<EOS
(macroexpand
 '(define (main argv)
    (newline)
    0))
EOS
           )).to eq("(define main (lambda (argv) (newline) 0))")
    expect(@nendo.evalStr( <<EOS
(macroexpand
 '(define (main argv)
    (define (foo x) x)
    (+ 10 20)
    0
    (foo 111)))
EOS
           )).to eq("(define main (lambda (argv) (letrec ((foo (lambda (x) x))) (+ 10 20) 0 (foo 111))))")
    expect(@nendo.evalStr( <<EOS
(macroexpand
 '(define (main argv)
    (define result '())
    (define (foo x) x)
    (define val 0)
    (define (bar x)
      (+ val 10))))
EOS
           )).to eq("(define main (lambda (argv) (letrec ((result (quote ())) (foo (lambda (x) x)) (val 0) (bar (lambda (x) (+ val 10)))))))")
    expect(@nendo.evalStr( <<EOS
(define (main . argv)
  (define (foo x) x)
  (+ 10 20)
  0
  (foo 111))
(main)
EOS
           )).to eq("111")
    expect(@nendo.evalStr( <<EOS
(define (main argv)
  (define (foo1 x) (+ 1 x))
  (define (foo2 x) (+ 2 x))
  (*
   (foo1 20)
   (foo2 30)))
(main '())
EOS
           )).to eq("672")
    expect(@nendo.evalStr( " (macroexpand '(define (main argv) 0)) " )).to eq("(define main (lambda (argv) 0))")
  end
end

describe Nendo, "when use macro macro " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( <<EOS
(define inc!-macro
  (macro (x)
    (+ x 1)))
EOS
           )).to  match( /Nendo::LispMacro/ )
    expect(@nendo.evalStr( " (inc!-macro 10) " )).to eq("11")
    expect(@nendo.evalStr( <<EOS
(define dec!-macro
  (macro (x)
    (define (dec! v)
      (- v 1))
    (dec! x)))
EOS
           )).to  match( /Nendo::LispMacro/ )
    expect(@nendo.evalStr( " (dec!-macro 10) " )).to eq("9")
    expect(@nendo.evalStr( " (define val (dec!-macro 10)) (val.is_a? Integer) " )).to eq("#t")
  end
end

describe Nendo, "when use macros expand some syntax. " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( "" +
                    "  (let1 total 0" +
                    "    (let loop ((cnt 10))" +
                    "      (if (< 0 cnt)" +
                    "          (begin" +
                    "            (set! total (+ total cnt))" +
                    "            (loop (- cnt 1)))))" +
                    "    total)" +
                    "" )).to eq("55")
    expect(@nendo.evalStr( "" +
                    "(let label ((a 2)" +
                    "            (b 3))" +
                    "  (if (<= 9 (+ a b))" +
                    "      (* a b)" +
                    "      (label 4 5)))" +
                    "" )).to eq("20")
    expect(@nendo.evalStr( "" +
                    "(macroexpand '(let loop ((x 1)) "+
                    "                 1"+
                    "                 2"+
                    "                 (loop 100)))" )).to eq("(letrec ((loop (lambda (x) 1 2 (loop 100)))) (loop 1))")
  end
end

describe Nendo, "when occur illegal syntax. " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do

    expect { @nendo.evalStr( <<EOS
(let abc 1  ;; let1 style form is illegal syntax for let form.
  (print abc))
EOS
                    ) }.to  raise_error( SyntaxError, /^named let requires/ )

    expect { @nendo.evalStr( "(let 1)"           ) }.to  raise_error( SyntaxError, /^let requires/  )
    expect { @nendo.evalStr( "(let ())"          ) }.to  raise_error( SyntaxError, /^let requires/  )
    expect(@nendo.evalStr(          "(let () 1)"          )).to  eq('1')
    expect { @nendo.evalStr( "(let loop 1)"      ) }.to  raise_error( SyntaxError, /^named let requires/ )
    expect { @nendo.evalStr( "(let loop ())"     ) }.to  raise_error( SyntaxError, /^named let requires/ )
    expect(@nendo.evalStr(          "(let loop () 1)"     )).to  eq('1')

    expect { @nendo.evalStr( "(let1)"                       ) }.to  raise_error( SyntaxError, /^let1 requires/ )
    expect { @nendo.evalStr( "(let1 a)"                     ) }.to  raise_error( SyntaxError, /^let1 requires/ )
    expect { @nendo.evalStr( "(let1 a 1)"                   ) }.to  raise_error( SyntaxError, /^let1 requires/ )
    expect { @nendo.evalStr( "(let1 (a 1)   (print a))"     ) }.to  raise_error( SyntaxError, /^let1 requires/ )
    expect { @nendo.evalStr( "(let1 ((a 1)) (print a))"     ) }.to  raise_error( SyntaxError, /^let1 requires/ )
    expect(@nendo.evalStr(          "(let1 a 123 a)"               )).to  eq('123')
    expect(@nendo.evalStr(          "(let1 b (+ 100 20 3) b)"      )).to  eq('123')
  end
end


describe Nendo, "when use dot-operator (.) macro " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " (macroexpand '(. a b)) " )).to eq("(a.b)")
    expect(@nendo.evalStr( " (macroexpand '(. a b c)) " )).to eq("(a.b c)")
    expect(@nendo.evalStr( " (macroexpand '(. Kernel open)) " )).to eq("(Kernel.open)")
    expect { @nendo.evalStr( " (macroexpand '(. open)) " ) }.to                   raise_error( ArgumentError )
    expect { @nendo.evalStr( " (macroexpand '(. open \"aaa\")) " ) }.to           raise_error( TypeError )
    expect(@nendo.evalStr( " (macroexpand '(. a size)) " )).to eq("(a.size)")
    expect(@nendo.evalStr( " (macroexpand '(. (. a size) to_s)) " ).gsub( /_[0-9][0-9][0-9][0-9][0-9]/, "_X0000" )).to eq("(%let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 (a.size))) (__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000.to_s))")
    expect(@nendo.evalStr( " (macroexpand '(. (. (. a size) to_s) to_i)) " ).gsub( /_[0-9][0-9][0-9][0-9][0-9]/, "_X0000" )).to eq("(%let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 (%let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 (a.size))) (__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000.to_s)))) (__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000.to_i))")
    expect { @nendo.evalStr( " (macroexpand '(. (. a size))) " ) }.to             raise_error( ArgumentError )
    expect(@nendo.evalStr( " (set! str \"str\") str.size " )).to eq("3")
    expect(@nendo.evalStr( " (set! str \"str\") (. str size) " )).to eq("3")
    expect(@nendo.evalStr( " (set! str \"str\") (+ 1 (. str size)) " )).to eq("4")
    expect(@nendo.evalStr( " (set! str \"string\") (. (. str size) to_s) " )).to eq('"6"')
    expect(@nendo.evalStr( " (to-s str.size) " )).to eq('"6"')
    expect(@nendo.evalStr( " (to-s 'str.size) " )).to eq('"str.size"')
    expect(@nendo.evalStr( " (require \"date\") " )).to eq("#f")
    expect(@nendo.evalStr( " (. (Date.new 0) strftime \"%F %r\") " )).to eq('"0000-01-01 12:00:00 AM"')
    expect(@nendo.evalStr( " (require \"digest/md5\") " )).to eq("#f")
    expect(@nendo.evalStr( " (Digest::MD5.hexdigest \"abc\") " )).to eq('"900150983cd24fb0d6963f7d28e17f72"')
    expect(@nendo.evalStr( " (Digest::MD5.hexdigest \"source text\") " )).to eq('"20f79a1416626eeacc0bd9a8db87faa2"')
    expect(@nendo.evalStr( " (define a 1) (a.is_a? Fixnum) " )).to eq("#t")
    expect(@nendo.evalStr( " (define a 1) (a.is_a? Float) " )).to eq("#f")
    expect(@nendo.evalStr( " (define a 1) (a.is_a? String) " )).to eq("#f")
    expect(@nendo.evalStr( " (define a 1.1) (a.is_a? Fixnum) " )).to eq("#f")
    expect(@nendo.evalStr( " (define a 1.1) (a.is_a? Float) " )).to eq("#t")
    expect(@nendo.evalStr( " (define a 1.1) (a.is_a? String) " )).to eq("#f")
    expect(@nendo.evalStr( " (define a \"s\") (a.is_a? Fixnum) " )).to eq("#f")
    expect(@nendo.evalStr( " (define a \"s\") (a.is_a? Float) " )).to eq("#f")
    expect(@nendo.evalStr( " (define a \"s\") (a.is_a? String) " )).to eq("#t")
    expect(@nendo.evalStr( ' (equal? (read-from-string "\"100\"") (. 100 to_s)) ' )).to eq("#t")
  end
end

describe Nendo, "when use dot-operator (.) macro  and  (&block ...) " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " (define arr '#(10 50 40 10000 20 30))" )).to                    eq("#(10 50 40 10000 20 30)")
    expect(@nendo.evalStr( " (arr.sort)" )).to                                               eq("#(10 20 30 40 50 10000)")
    expect(@nendo.evalStr( " (arr.sort (&block (a b)  (if (le? a b)  1  -1))) " )).to        eq("#(10000 50 40 30 20 10)")
    expect(@nendo.evalStr( " (arr.sort_by (&block (item)  item.to_s)) " )).to                eq("#(10 10000 20 30 40 50)")
  end
end

describe Nendo, "when use sort libraries " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " (define lst '(1 50 60 30000 4000 200)) " )).to                  eq("(1 50 60 30000 4000 200)")
    expect(@nendo.evalStr( " (sort lst) " )).to                                              eq("(1 50 60 200 4000 30000)")
    expect(@nendo.evalStr( " (sort '()) " )).to                                              eq("()")
    expect(@nendo.evalStr( " (sort lst  (lambda (a b) (- b a))) " )).to                      eq("(30000 4000 200 60 50 1)")
    expect(@nendo.evalStr( " (sort-by lst (lambda (item) item)) " )).to                      eq("(1 50 60 200 4000 30000)")
    expect(@nendo.evalStr( " (sort-by '() (lambda (item) item)) " )).to                      eq("()")
    expect(@nendo.evalStr( " (define lst2 '((1 . \"ddd\") (2 . \"cc\") (3 . \"bbbb\") (4 . \"a\"))) " )).to  eq('((1 . "ddd") (2 . "cc") (3 . "bbbb") (4 . "a"))')
    expect(@nendo.evalStr( " (sort lst2 (lambda (a b)  (- (car a) (car b)))) " )).to              eq('((1 . "ddd") (2 . "cc") (3 . "bbbb") (4 . "a"))')
    expect(@nendo.evalStr( " (sort lst2 (lambda (a b)  (if (>= (cdr a) (cdr b)) 1 -1))) " )).to   eq('((4 . "a") (3 . "bbbb") (2 . "cc") (1 . "ddd"))')
    expect(@nendo.evalStr( " (sort-by lst2 (lambda (item) (car item))) " )).to                    eq('((1 . "ddd") (2 . "cc") (3 . "bbbb") (4 . "a"))')
    expect(@nendo.evalStr( " (sort-by lst2 (lambda (item) (cdr item))) " )).to                    eq('((4 . "a") (3 . "bbbb") (2 . "cc") (1 . "ddd"))')
    expect(@nendo.evalStr( " (sort-by lst2 (lambda (item) (. (cdr item) size))) " )).to           eq('((4 . "a") (2 . "cc") (1 . "ddd") (3 . "bbbb"))')
  end
end

describe Nendo, "when use with-open libraries " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
    @fn = "/tmp/for-with-open.dat"
    open( @fn, "w" ) { |f|
      f.puts( "line1" )
      f.puts( "line2" )
      f.puts( "line3" )
    }
  end
  it "should" do
    expect(@nendo.evalStr( sprintf( " (with-open \"%s\" (lambda (f) (f.readline.chop))) ", @fn ))).to                         eq('"line1"')
    expect(@nendo.evalStr( sprintf( " (with-open \"%s\" (lambda (f) (f.readline.chop))) ", @fn ))).to                         eq('"line1"')
    expect(@nendo.evalStr( sprintf( " (with-open \"%s\" (lambda (f) (f.readline.chop) (f.readline.chop))) ", @fn ))).to       eq('"line2"')
    expect(@nendo.evalStr( sprintf( " (with-open \"%s\" (lambda (f) (map (lambda (line) (line.chop)) f))) ", @fn ))).to       eq('#("line1" "line2" "line3")')
    expect(@nendo.evalStr( sprintf( " (with-open \"%s\" (lambda (f) (f.puts \"Wrote from Nendo.\")) \"w\")  #t", @fn ))).to   eq("#t")
    expect(@nendo.evalStr( sprintf( " (with-open \"%s\" (lambda (f) (f.readline.chop))) ", @fn ))).to                         eq('"Wrote from Nendo."')
    expect { @nendo.evalStr( sprintf( " (with-open \"%s\" (lambda (f) #t) 1 2 ", @fn )) }.to                          raise_error(RuntimeError)
    expect { @nendo.evalStr( sprintf( " (with-open \"%s\" \"string\" 1 2 ", @fn )) }.to                               raise_error(RuntimeError)
  end

  after do
    File.unlink( @fn )
  end
end

describe Nendo, "when use (use ...) macro " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " (macroexpand '(use abc)) " )).to            eq('(load "abc")')
    expect(@nendo.evalStr( " (macroexpand '(use a.b)) " )).to            eq('(load "a/b")')
    expect(@nendo.evalStr( " (macroexpand '(use a.b.c)) " )).to          eq('(load "a/b/c")')
    expect(@nendo.evalStr( " (macroexpand '(use a.b.c.d.e.f.g)) " )).to  eq('(load "a/b/c/d/e/f/g")')
    expect(@nendo.evalStr( " (macroexpand '(use srfi-1)) " )).to         eq('(load "srfi-1")')
    expect(@nendo.evalStr( " (macroexpand '(use text.tree)) " )).to      eq('(load "text/tree")')
    expect(@nendo.evalStr( " (macroexpand '(use debug.syslog)) " )).to   eq('(load "debug/syslog")')
    expect(@nendo.evalStr( " (macroexpand `(use ,(string->symbol (+ \"text\" \".\" \"tree\")))) " )).to eq('(load "text/tree")')
    expect { @nendo.evalStr( " (macroexpand '(use '(a)) " ) }.to    raise_error( RuntimeError )
    expect { @nendo.evalStr( " (macroexpand '(use \"srfi-1\") " ) }.to    raise_error( RuntimeError )
    expect { @nendo.evalStr( " (macroexpand '(use 1)) " ) }.to    raise_error( RuntimeError )
    expect { @nendo.evalStr( " (macroexpand '(use (+ 10 20))) " ) }.to    raise_error( RuntimeError )
  end
end

describe Nendo, "when use keyword feature " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " (keyword? :a) " )).to eq("#t")
    expect(@nendo.evalStr( ' (keyword? (intern ":a")) ' )).to eq("#f")
    expect(@nendo.evalStr( ' (symbol?  (intern ":a")) ' )).to eq("#t")
    expect(@nendo.evalStr( " (keyword? ':a) " )).to eq("#t")
    expect(@nendo.evalStr( " (symbol? ':a) " )).to eq("#f")
    expect(@nendo.evalStr( " (eq?  :a :a) " )).to eq("#t")
    expect(@nendo.evalStr( " (eqv? :a :a) " )).to eq("#t")
    expect(@nendo.evalStr( ' (eq?  :a (intern ":a")) ' )).to eq("#f")
    expect(@nendo.evalStr( ' (eqv? :a (intern ":a")) ' )).to eq("#f")
    expect(@nendo.evalStr( ' (eq?  :a (intern  "a")) ' )).to eq("#f")
    expect(@nendo.evalStr( ' (eqv? :a (intern  "a")) ' )).to eq("#f")
    expect(@nendo.evalStr( " (=    :a :a) " )).to eq("#t")
    expect(@nendo.evalStr( ' (=    :a (intern ":a")) ' )).to eq("#f")
    expect(@nendo.evalStr( ' (=    :a (intern  "a")) ' )).to eq("#f")
    expect(@nendo.evalStr( ' (keyword? (make-keyword "a")) ' )).to eq("#t")
    expect(@nendo.evalStr( " :a " )).to eq(":a")
    expect(@nendo.evalStr( " ::a " )).to eq("::a")
    expect(@nendo.evalStr( " :::key " )).to eq(":::key")
    expect(@nendo.evalStr( ' (make-keyword "a") ' )).to eq(":a")
    expect(@nendo.evalStr( ' (make-keyword ":a") ' )).to eq("::a")
    expect(@nendo.evalStr( " (make-keyword 'a) " )).to eq(":a")
    expect(@nendo.evalStr( " (keyword->string :a) " )).to eq('"a"')
    expect(@nendo.evalStr( " (keyword->string :abcde) " )).to eq('"abcde"')
    expect { @nendo.evalStr( " (keyword->string 'a) " ) }.to                  raise_error( TypeError )
    expect(@nendo.evalStr( " : " )).to eq(':')
    expect(@nendo.evalStr( " (keyword->string :) " )).to eq('""')
    expect(@nendo.evalStr( ' (make-keyword "") ' )).to eq(":")
    expect(@nendo.evalStr( " (get-keyword :y '(:x 1 :y 2 :z 3)) " )).to eq("2")
    expect(@nendo.evalStr( " (get-keyword 'z '(x 1 y 2 z 3)) " )).to eq("3")
    expect { @nendo.evalStr( " (get-keyword 'z '(x 1 y 2 z)) " ) }.to         raise_error( RuntimeError )
    expect { @nendo.evalStr( " (get-keyword :t '(:x 1 :y 2 :z 3)) " ) }.to    raise_error( RuntimeError )
    expect(@nendo.evalStr( " (get-keyword :t '() #f) " )).to eq("#f")
    expect(@nendo.evalStr( " (get-keyword :t '(:x) #f) " )).to eq("#f")
    expect { @nendo.evalStr( " (get-keyword :t '()) " ) }.to                  raise_error( RuntimeError )
    expect { @nendo.evalStr( " (get-keyword :t '(:x)) " ) }.to                raise_error( RuntimeError )
    expect { @nendo.evalStr( " (get-keyword :t 1) " ) }.to                    raise_error( RuntimeError )
    expect(@nendo.evalStr( " (get-keyword :t 1 #f) " )).to eq("#f")
  end
end

describe Nendo, "when use hash-table feature " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " (define h (make-hash-table)) " )).to eq("{}")
    expect(@nendo.evalStr( " (hash-table? 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (hash-table? '(1)) " )).to eq("#f")
    expect(@nendo.evalStr( " (hash-table? (Array.new)) " )).to eq("#f")
    expect(@nendo.evalStr( " (hash-table? (Hash.new)) " )).to eq("#t")
    expect(@nendo.evalStr( " h " )).to eq("{}")
    expect(@nendo.evalStr( " (hash-table-put! h 'k1 'v1) h" )).to eq("{:k1=>:v1}")
    expect(@nendo.evalStr( " (hash-table-put! h 'k2 200) h" )).to eq("{:k1=>:v1, :k2=>200}")
    expect(@nendo.evalStr( " (hash-table-get  h 'k1)" )).to eq("v1")
    expect(@nendo.evalStr( " (hash-table-get  h 'k2)" )).to eq("200")
    expect(@nendo.evalStr( " (hash-table-exist? h 'k1)" )).to eq("#t")
    expect(@nendo.evalStr( " (hash-table-exist? h 'k2)" )).to eq("#t")
    expect(@nendo.evalStr( " (hash-table-exist? h 'k3)" )).to eq("#f")
    expect(@nendo.evalStr( " (hash-table-exist? h \"k1\")" )).to eq("#f")
    expect(@nendo.evalStr( " (hash-table-num-entries h)" )).to eq("2")
    expect(@nendo.evalStr( " (hash-table-delete! h 'k1)" )).to eq("v1")
    expect { @nendo.evalStr( " (hash-table-get h 'k1)" ) }.to                 raise_error( RuntimeError )
    expect(@nendo.evalStr( " (hash-table-get h 'k1 #f) " )).to eq("#f")
    expect(@nendo.evalStr( " (hash-table-num-entries h)" )).to eq("1")
    expect(@nendo.evalStr( " (hash-table-clear! h)" )).to eq("{}")
    expect(@nendo.evalStr( " (hash-table-num-entries h)" )).to eq("0")
    expect(@nendo.evalStr( <<EOS
(set! h (hash-table eq?
                    '("a" "AAA")
                    '("b" "BBB")
                    '("c" "CCC" 100)))
(hash-table-keys   h)
EOS
           )).to eq("(\"a\" \"b\" \"c\")")
    expect(@nendo.evalStr( <<EOS
(set! h (hash-table eq?
                    '("a" "AAA")
                    '("b" "BBB")
                    '("c" "CCC" 100)))
(hash-table-values h)
EOS
           )).to eq("((\"AAA\") (\"BBB\") (\"CCC\" 100))")
    expect(@nendo.evalStr( <<EOS
(set! h (hash-table eq?
                    '("a" . "AAA")
                    '("b" . "BBB")
                    '("c" . "CCC")))
h
EOS
           )).to eq("{\"a\"=>\"AAA\", \"b\"=>\"BBB\", \"c\"=>\"CCC\"}")
    expect(@nendo.evalStr( " (hash-table-keys       h)" )).to eq('("a" "b" "c")')
    expect(@nendo.evalStr( " (hash-table-values     h)" )).to eq('("AAA" "BBB" "CCC")')
    expect(@nendo.evalStr( " (hash-table-map        h (lambda (a b) (+ a b)))" )).to eq('("aAAA" "bBBB" "cCCC")')
    expect(@nendo.evalStr( " (hash-table-for-each   h (lambda (a b) (+ a b)))" )).to eq('("aAAA" "bBBB" "cCCC")')
    expect(@nendo.evalStr( " (set! h (make-hash-table)) " )).to eq("{}")
    expect(@nendo.evalStr( <<EOS
(set! h (hash-table eq?
                    '(true . 1)
                    '(false . 2)
                    '(nil . 3)))
h
EOS
           )).to   eq("{true=>1, false=>2, nil=>3}")
    expect(@nendo.evalStr( "   (hash-table-keys   h) " )).to                                           eq("(#t #f nil)")
    expect(@nendo.evalStr( <<EOS
(set! h (hash-table eq?
                    '(1 . true)
                    '(2 . false)
                    '(3 . nil)))
h
EOS
           )).to   eq("{1=>true, 2=>false, 3=>nil}")
    expect(@nendo.evalStr( "   (hash-table-keys   h) " )).to                                           eq("(1 2 3)")
  end
end

describe Nendo, "when use vector feature " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( " (define v (vector)) v" )).to eq("#()")
    expect(@nendo.evalStr( " (vector? 1) " )).to eq("#f")
    expect(@nendo.evalStr( " (vector? (vector)) " )).to eq("#t")
    expect(@nendo.evalStr( " (vector? (vector 1)) " )).to eq("#t")
    expect(@nendo.evalStr( " (vector? (vector 1 2)) " )).to eq("#t")
    expect(@nendo.evalStr( " (vector? '#(1)) " )).to eq("#t")
    expect(@nendo.evalStr( " (vector? '#(1 2)) " )).to eq("#t")
    expect(@nendo.evalStr( " (vector? (Array.new)) " )).to eq("#t")
    expect(@nendo.evalStr( " (vector? (Hash.new)) " )).to eq("#f")
    expect(@nendo.evalStr( " (vector? 1.1) " )).to eq("#f")
    expect(@nendo.evalStr( " (vector? \"str\") " )).to eq("#f")
    expect(@nendo.evalStr( " (define v (make-vector 4))" )).to eq("#(nil nil nil nil)")
    expect(@nendo.evalStr( " (vector-set! v 0 'v1)  v" )).to eq("#(v1 nil nil nil)")
    expect(@nendo.evalStr( " (vector-set! v 1 '100) v" )).to eq("#(v1 100 nil nil)")
    expect(@nendo.evalStr( " (vector-set! v 2 '200) v" )).to eq("#(v1 100 200 nil)")
    expect(@nendo.evalStr( " (vector-set! v 3 '(a b c))  v" )).to eq("#(v1 100 200 (a b c))")
    expect(@nendo.evalStr( " (vector-length v)" )).to eq("4")
    expect(@nendo.evalStr( " (vector-ref v 0) " )).to eq("v1")
    expect(@nendo.evalStr( " (vector-ref v 1) " )).to eq("100")
    expect(@nendo.evalStr( " (vector-ref v 2) " )).to eq("200")
    expect(@nendo.evalStr( " (vector-ref v 3) " )).to eq("(a b c)")
    expect { @nendo.evalStr( " (vector-ref v -1)" ) }.to                 raise_error( RuntimeError )
    expect { @nendo.evalStr( " (vector-ref v -2)" ) }.to                 raise_error( RuntimeError )
    expect { @nendo.evalStr( " (vector-ref v  5)" ) }.to                 raise_error( RuntimeError )
    expect { @nendo.evalStr( " (vector-ref v  6)" ) }.to                 raise_error( RuntimeError )
    expect(@nendo.evalStr( " (vector-ref v -1 1000)" )).to eq("1000")
    expect(@nendo.evalStr( " (vector-ref v -2 2000)" )).to eq("2000")
    expect(@nendo.evalStr( " (vector-ref v  5 3000)" )).to eq("3000")
    expect(@nendo.evalStr( " (vector-ref v  6 4000)" )).to eq("4000")
    expect(@nendo.evalStr( " (vector-ref v  7 #f)" )).to   eq("#f")
    expect(@nendo.evalStr( " (define v   (make-vector 10)) v" )).to eq("#(nil nil nil nil nil nil nil nil nil nil)")
    expect(@nendo.evalStr( " (vector->list v)" )).to eq("(nil nil nil nil nil nil nil nil nil nil)")
    expect(@nendo.evalStr( " (define lst '(a b c (d)))" )).to eq("(a b c (d))")
    expect(@nendo.evalStr( " (list->vector lst)" )).to eq("#(a b c (d))")
    expect(@nendo.evalStr( " (list->vector (range 10 1))" )).to eq("#(1 2 3 4 5 6 7 8 9 10)")
  end
end

describe Nendo, "tail call optimization " do
  before do
    @nendo = Nendo::Core.new( )
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
    @nendo.loadInitFile  # to self optimizing.  The init.nnd file will be loaded twice, so `filter' can be optimized on second loading phase.
  end
  it "should" do
    expect(@nendo.evalStr( " (%setup-%tailcall-mark '(print \"abc\")) " )).to eq("(%tailcall (print \"abc\"))")
    expect(@nendo.evalStr( " (%setup-%tailcall-mark '(begin (print \"abc\") 1 2 3)) " )).to eq("(begin (print \"abc\") 1 2 3)")
    expect(@nendo.evalStr( " (%setup-%tailcall-mark '(begin 1 2 (print \"abc\") 3)) " )).to eq("(begin 1 2 (print \"abc\") 3)")
    expect(@nendo.evalStr( " (%setup-%tailcall-mark '(begin 1 2 3 (print \"abc\"))) " )).to eq("(begin 1 2 3 (%tailcall (print \"abc\")))")
    expect(@nendo.evalStr( " (%setup-%tailcall-mark '(lambda  (x) x)) " )).to                     eq("(lambda (x) x)")
    expect(@nendo.evalStr( " (%setup-%tailcall-mark '(macro   (x) x)) " )).to                     eq("(macro (x) x)")
    expect(@nendo.evalStr( " (%setup-%tailcall-mark '(%syntax (x) x)) " )).to                     eq("(%syntax (x) x)")
    expect(@nendo.evalStr( " (%setup-%tailcall-mark '(%syntax (a b c) (begin a b c))) " )).to     eq("(%syntax (a b c) (begin a b c))")
    expect(@nendo.evalStr( " (%setup-%tailcall-mark '(lambda  (x) (%syntax (y) x))) " )).to       eq("(lambda (x) (%syntax (y) x))")
    expect(@nendo.evalStr( " (%setup-%tailcall-mark '(lambda  (x) (syntax-quote x))) " )).to      eq("(lambda (x) (quote x))")
    expect(@nendo.evalStr( " (%setup-%tailcall-mark '(lambda  (x) (quote x))) " )).to             eq("(lambda (x) (quote x))")
    expect(@nendo.evalStr( <<EOS
(%setup-%tailcall-mark
 '(lambda '(x)
    1
    2
    (print \"abc\")))
EOS
           )).to eq("(lambda (quote (x)) 1 2 (%tailcall (print \"abc\")))")
    expect(@nendo.evalStr( <<EOS
(%setup-%tailcall-mark
 '(lambda (x)
    1
    2
    (if #t
        (begin 1 2 (print "abc"))
        (begin 1 2 (print "ABC")))))
EOS
           )).to eq("(lambda (x) 1 2 (if #t (begin 1 2 (%tailcall (print \"abc\"))) (begin 1 2 (%tailcall (print \"ABC\")))))")
    expect(@nendo.evalStr( <<EOS
(%setup-%tailcall-mark (macroexpand
                        '(define (foo) (foo))
                        ))
EOS
           )).to eq("(define foo (lambda () (%tailcall (foo))))")
    expect(@nendo.evalStr( <<EOS
(%setup-%tailcall-mark (macroexpand
                        '(values? (make-values '()))
                        ))
EOS
           )).to eq("(%tailcall (values? (make-values (quote ()))))")
    expect(@nendo.evalStr( <<EOS
(%setup-%tailcall-mark (macroexpand
                        '(cond
                          (false  1)
                          (false  2))
                        ))
EOS
           )).to eq("(if #f (begin 1) (if #f (begin 2) ()))")
    expect(@nendo.evalStr( <<EOS
(%setup-%tailcall-mark (macroexpand
                        '(cond
                          (false 1)
                          (false 2)
                          (else 3))
                        ))
EOS
           )).to eq("(if #f (begin 1) (if #f (begin 2) (if #t (begin 3) ())))")
    expect(@nendo.evalStr( <<EOS
(%setup-%tailcall-mark (macroexpand
                        '(and
                          (foo 1)
                          (bar 2))
                        ))
EOS
           )).to eq("(if (not (eq? #f (foo 1))) (%tailcall (bar 2)) #f)")
    expect(@nendo.evalStr( <<EOS
(%setup-%tailcall-mark (macroexpand
                        '(or
                          (foo 1)
                          (bar 2))
                        ))
EOS
           ).gsub( /_[0-9][0-9][0-9][0-9][0-9][ ]/, "_X0000 " )).to eq("(%let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 (foo 1))) (if __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 (%let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 (bar 2))) (if __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_X0000 #f))))")
    expect(@nendo.evalStr( <<EOS
(%setup-%tailcall-mark (macroexpand
                        '(let loop ((x 1))
                           1
                           2
                           (loop 100))
                        ))
EOS
           )).to eq("(letrec ((loop (lambda (x) 1 2 (%tailcall (loop 100))))) (%tailcall (loop 1)))")
    expect(@nendo.evalStr( "(%setup-%tailcall-mark (macroexpand "+
                    "   '(let1 aaa 111 aaa)"+
                    "  ))" )).to eq("(%let ((aaa 111)) aaa)")
    expect(@nendo.evalStr( <<EOS
(%setup-%tailcall-mark
 '(letrec ((func1
            (lambda (x)
              1
              (func2)))
           (func2
            (lambda (x)
              2
              (func1))))
    (func1 100)))
EOS
           )).to eq("(letrec ((func1 (lambda (x) 1 (%tailcall (func2)))) (func2 (lambda (x) 2 (%tailcall (func1))))) (%tailcall (func1 100)))")
    expect(@nendo.evalStr( "(set-optimize-level 0) " )).to eq("0")
    expect { @nendo.evalStr( <<EOS
(filter
 (lambda (x) (< x 10))
 (range  10000))
EOS
                    ) }.to               raise_error(SystemStackError)
    expect(@nendo.evalStr( "(set-optimize-level 1) " )).to eq("1")
    expect(@nendo.evalStr( <<EOS
(apply +
       (map
        (lambda (x) (* x 2))
        (range  10000)))
EOS
           )).to eq("99990000")
    expect(@nendo.evalStr( <<EOS
(filter
 (lambda (x) (< x 10))
 (range  1000))
EOS
           )).to eq("(0 1 2 3 4 5 6 7 8 9)")
    expect(@nendo.evalStr( <<EOS
(filter-map
 (lambda (x)
   (when (< x 10) (- x)))
 (range  1000))
EOS
           )).to eq("(0 -1 -2 -3 -4 -5 -6 -7 -8 -9)")
    expect(@nendo.evalStr( <<EOS
(define str
  (if #t
      (car '("a"))
      (car '("b"))))
(sprintf "A%sZ" str)
EOS
           )).to eq('"AaZ"')
    expect(@nendo.evalStr( <<EOS
(letrec ((str (if #t
                  (+ "a" "A")
                  '())))
  str.class)
EOS
           )).to eq('String')
    expect(@nendo.evalStr( <<EOS
(letrec ((str
          (if #t
              (+ \"a\" \"A\")
              '())))
  (+ str \"...\"))
EOS
           )).to eq('"aA..."')
  end
end


