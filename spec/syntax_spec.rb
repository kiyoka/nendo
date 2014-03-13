#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# syntax_spec.rb -  "RSpec file for nendo language (syntax part)"
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


describe Nendo, "when read the core syntax keyword " do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    expect(@nendo.evalStr( "(define a 1)" )).to         eq('1')
    expect(@nendo.evalStr( "(define a if)" )).to        match( /Nendo::LispCoreSyntax/ )
    expect(@nendo.evalStr( "(eq?    a if)" )).to        eq('#t')
    expect(@nendo.evalStr( "(define a begin)" )).to     match( /Nendo::LispCoreSyntax/ )
    expect(@nendo.evalStr( "(eq?    a begin)" )).to     eq('#t')
    expect(@nendo.evalStr( "(define a lambda)" )).to    match( /Nendo::LispCoreSyntax/ )
    expect(@nendo.evalStr( "(eq?    a lambda)" )).to    eq('#t')
    expect(@nendo.evalStr( "(define a macro)" )).to     match( /Nendo::LispCoreSyntax/ )
    expect(@nendo.evalStr( "(eq?    a macro)" )).to     eq('#t')
    expect(@nendo.evalStr( "(define a &block)" )).to    match( /Nendo::LispCoreSyntax/ )
    expect(@nendo.evalStr( "(eq?    a &block)" )).to    eq('#t')
    expect(@nendo.evalStr( "(define a %let)" )).to       match( /Nendo::LispCoreSyntax/ )
    expect(@nendo.evalStr( "(eq?    a %let)" )).to       eq('#t')
    expect(@nendo.evalStr( "(define a letrec)" )).to    match( /Nendo::LispCoreSyntax/ )
    expect(@nendo.evalStr( "(eq?    a letrec)" )).to    eq('#t')
    expect(@nendo.evalStr( "(define a set!)" )).to      match( /Nendo::LispCoreSyntax/ )
    expect(@nendo.evalStr( "(eq?    a set!)" )).to      eq('#t')
  end
end


describe Nendo, "when use lib functions for let-syntax " do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    expect(@nendo.evaluator.write_to_string(
       @nendo.evaluator.__wrapNestedLet( 1000,
                          [[ :a, Cell.new( 2 ) ]]
                          ))).to eq("(%let ((a 2)) 1000)")
    expect(@nendo.evaluator.write_to_string(
       @nendo.evaluator.__wrapNestedLet( 1000,
                          [[ :a, Cell.new( 2 ) ], [ :b, Cell.new( 3 ) ]]
                          ))).to eq("(%let ((a 2)) (%let ((b 3)) 1000))")
    expect(@nendo.evaluator.write_to_string(
       @nendo.evaluator.__wrapNestedLet( Cell.new( :"+", Cell.new( :a, Cell.new( :b ))),
                          [[ :a, Cell.new( 2 ) ], [ :b, Cell.new( 3 ) ]]
                          ))).to eq("(%let ((a 2)) (%let ((b 3)) (+ a b)))")

    expect(@nendo.evalStr( "(strip-syntax-quote 'abc)" )).to                    eq("abc")
    expect(@nendo.evalStr( "(strip-syntax-quote '())" )).to                     eq("()")
    expect(@nendo.evalStr( "(strip-syntax-quote '(a (b) ((c))))" )).to          eq("(a (b) ((c)))")
    expect(@nendo.evalStr( "(strip-syntax-quote '(syntax-quote abc))" )).to     eq("(quote abc)")
    expect(@nendo.evalStr( "(strip-syntax-quote '(syntax-quote (syntax-quote abc)))" )).to     eq("(quote (quote abc))")

    expect(@nendo.evalStr( "(strip-let-syntax-keyword 'abc)" )).to                    eq("abc")
    expect(@nendo.evalStr( <<EOS
(strip-let-syntax-keyword
  '(let-syntax ((nil!
		 (syntax-rules ()
			       ((_ x)
				(set! x '())))))
	       (nil! aa)))
EOS
           )).to     eq("(begin (nil! aa))")

    expect(@nendo.evalStr( <<EOS
(strip-let-syntax-keyword
 '(let ()
    (let-syntax ((a (syntax-rules () ((_ ?x) (+ ?x 8))))
		 (b (syntax-rules () ((_ ?x) (- ?x 8)))))
		(let-syntax ((a (syntax-rules () ((_ ?y) (b 2))))
			     (b (syntax-rules () ((_ ?y) (a 3)))))
			    (list (a 7) (b 8))))))
EOS
           )).to     eq("(let () (begin (begin (list (a 7) (b 8)))))")
  end
end


describe Nendo, "when use identifier checker " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( "(symbol? 'a)" )).to                                     eq('#t')
    expect(@nendo.evalStr( "(identifier? 'a)" )).to                                 eq('#t')
    expect(@nendo.evalStr( "(identifier? 'identifier)" )).to                        eq('#t')
    expect(@nendo.evalStr( "(identifier? 'lambda)" )).to                            eq('#t')
    expect(@nendo.evalStr( "(identifier? 10)" )).to                                 eq('#f')
    expect(@nendo.evalStr( "(identifier? \"str\")" )).to                            eq('#f')
    expect(@nendo.evalStr( "(identifier=? '() 'lambda '() 'lambda)" )).to           eq('#t')
    expect(@nendo.evalStr( "(identifier=? '() 'define '() 'lambda)" )).to           eq('#f')
    expect(@nendo.evalStr( "(identifier=? '() 'if '() '/nendo/macroenv/if)" )).to   eq('#f')
  end
end


describe Nendo, "when call make-syntactic-closure " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'print  )" )).to                  eq('print')
    expect(@nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'if     )" )).to                  eq('if')
    expect(@nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'lambda )" )).to                  eq('lambda')
    expect(@nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'aaaa   )" )).to                  match( /SyntacticClosure.aaaa:_aaaa_/ )
    expect(@nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'tmp    )" )).to                  match( /SyntacticClosure.tmp:_tmp_/ )
    expect(@nendo.evalStr( "(define name (make-syntactic-closure (global-variables) '() 'tmp ))" )).to       match( /SyntacticClosure.tmp:_tmp_/ )
    expect(@nendo.evalStr( "name" )).to                                                                      match( /SyntacticClosure.tmp:_tmp_/ )
    expect(@nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'new_global_var)" )).to           match( /SyntacticClosure.new_global_var:_new_global_var_/ )
    expect(@nendo.evalStr( "(define new_global_var 10)" )).to                                                eq('10')
    expect(@nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'new_global_var)" )).to           eq('new_global_var')

    expect(@nendo.evalStr( "(strip-syntactic-closures name)" )).to                                           match( /_tmp_/ )
    expect(@nendo.evalStr( "(strip-syntactic-closures (list name name))" )).to                               match( /[(]_tmp_/ )
  end
end


describe Nendo, "when use core syntax " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( "(if                        #t 1 2)" )).to                        eq('1')
    expect(@nendo.evalStr( "(if                        #f 1 2)" )).to                        eq('2')
    expect(@nendo.evalStr( "(/nendo/core/if            #t 1 2)" )).to                        eq('1')
    expect(@nendo.evalStr( "(/nendo/core/if            #f 1 2)" )).to                        eq('2')
    expect(@nendo.evalStr( "(begin                      1 2 3)" )).to                        eq('3')
    expect(@nendo.evalStr( "(/nendo/core/begin          1 2 3)" )).to                        eq('3')
    expect(@nendo.evalStr( "(car (memq '/nendo/core/begin (global-variables)))" )).to        eq('/nendo/core/begin')
  end
end


describe Nendo, "when use er-macro-transformer " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do

    expect(@nendo.evalStr( <<EOS
(define-syntax test-of-identifier1?
  (er-macro-transformer
   (lambda (expr rename compare)
     (cons (rename 'list)
           (list (identifier? 'rename)
                 (identifier? 'sym))))))
test-of-identifier1?
EOS
           )).to    match( /Nendo::LispSyntax/ )

    expect(@nendo.evalStr( "(test-of-identifier1? 1)" )).to       eq('(#t #t)')

    expect(@nendo.evalStr( <<EOS
(define-syntax test-of-identifier2?
  (er-macro-transformer
   (lambda (expr rename compare)
     (identifier? (cadr expr)))))

(let ((a 1)
      (b 2)
      (c 3))
  (let ((b a))
    (list
     a
     b
     c
     (test-of-identifier2? a)
     (test-of-identifier2? b)
     (test-of-identifier2? c)
     (test-of-identifier2? d)
     (test-of-identifier2? 'e))))
EOS
           )).to       eq('(1 1 3 #t #t #t #t #f)')

    expect(@nendo.evalStr( <<EOS
(define-syntax test-of-rename
  (er-macro-transformer
   (lambda (expr rename compare)
     (list (rename 'quote)
           (rename 'sym)))))
test-of-rename
EOS
           )).to    match( /Nendo::LispSyntax/ )
    expect(@nendo.evalStr( "(test-of-rename 2)" )).to       eq('sym')

    expect(@nendo.evalStr( <<EOS
(define-syntax test-of-identifier=?
  (er-macro-transformer
   (lambda (expr rename compare)
     (let ((_compare (rename 'compare)))
       (compare
        (cadr expr)
        (caddr expr))))))
(let ((a 1)
      (b 2)
      (c 3))
  (let ((b a))
    (list
     a
     b
     c
     (test-of-identifier=? a a)
     (test-of-identifier=? b b)
     (test-of-identifier=? c c)
     (test-of-identifier=? a b)
     (test-of-identifier=? a c))))
EOS
           )).to       eq('(1 1 3 #t #t #t #f #f)')

    expect(@nendo.evalStr( <<EOS
(define-syntax my-or
  (er-macro-transformer
   (lambda (expr rename compare)
     (cond ((null? (cdr expr)) #f)
           ((null? (cddr expr)) (cadr expr))
           (else
            (list (rename 'let) (list (list (rename 'tmp) (cadr expr)))
                  (list (rename 'if) (rename 'tmp)
                        (rename 'tmp)
                        (cons (rename 'my-or) (cddr expr)))))))))
my-or
EOS
           )).to    match( /Nendo::LispSyntax/ )
    expect(@nendo.evalStr( "(my-or 1 2)" )).to                  eq('1')
    expect(@nendo.evalStr( "(my-or #f 100 200)" )).to           eq('100')
    expect(@nendo.evalStr( "(my-or #f #f #f #f 500)" )).to      eq('500')
    expect(@nendo.evalStr( "(my-or #f #f #f #f #f)" )).to       eq('#f')

    expect(@nendo.evalStr( <<EOS
(define-syntax my-and
  (er-macro-transformer
   (lambda (expr rename compare)
     (cond ((null? (cdr expr)))
           ((null? (cddr expr)) (cadr expr))
           (else (list (rename 'if) (cadr expr)
                       (cons (rename 'my-and) (cddr expr))
                       #f))))))
my-and
EOS
           )).to    match( /Nendo::LispSyntax/ )
    expect(@nendo.evalStr( "(my-and 1 2)" )).to                 eq('2')
    expect(@nendo.evalStr( "(my-and 1 2 3 4)" )).to             eq('4')
    expect(@nendo.evalStr( "(my-and #t #t #t #t 500)" )).to     eq('500')
    expect(@nendo.evalStr( "(my-and 1  2  3  4 #f)" )).to       eq('#f')
    expect(@nendo.evalStr( "(my-and 1  2 #f  4  5)" )).to       eq('#f')
  end
end


describe Nendo, "when use syntax-rules " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( <<EOS
(define-syntax nil!
  (syntax-rules ()
    ((_ x)
     (set! x '()))))
nil!
EOS
           )).to    match( /Nendo::LispSyntax/ )
    expect(@nendo.evalStr( "(define a 1)  a" )).to                 eq('1')
    expect(@nendo.evalStr( "(nil! a)      a" )).to                 eq('()')
    expect(@nendo.evalStr( "(set! a 2)    a" )).to                 eq('2')
    expect(@nendo.evalStr( "(nil! a)      a" )).to                 eq('()')
    expect(@nendo.evalStr( <<EOS
(define-syntax test-syntax
  (syntax-rules ()
    ((_ a)
     (list a))
    ((_ a b)
     (list a (list b)))
    ((_ a b c ...)
     (list a (list b (list c ...))))))
test-syntax
EOS
           )).to    match( /Nendo::LispSyntax/ )
    expect(@nendo.evalStr( "(test-syntax 1)" )).to                 eq('(1)')
    expect(@nendo.evalStr( "(test-syntax 1 2)" )).to               eq('(1 (2))')
    expect(@nendo.evalStr( "(test-syntax 1 2 3)" )).to             eq('(1 (2 (3)))')
    expect(@nendo.evalStr( "(test-syntax 1 2 3 4)" )).to           eq('(1 (2 (3 4)))')
    expect(@nendo.evalStr( "(test-syntax 1 2 3 4 5)" )).to         eq('(1 (2 (3 4 5)))')
    expect(@nendo.evalStr( "(test-syntax 1 2 3 4 5 6)" )).to       eq('(1 (2 (3 4 5 6)))')
    expect(@nendo.evalStr( "(test-syntax 'a)" )).to                eq('(a)')
    expect(@nendo.evalStr( "(test-syntax 'a \"B\")" )).to          eq('(a ("B"))')
    expect(@nendo.evalStr( "(test-syntax 'a \"B\" 'C)" )).to       eq('(a ("B" (C)))')
    expect(@nendo.evalStr( "(test-syntax 'a \"B\" 'C \"d\")" )).to eq('(a ("B" (C "d")))')
    expect { @nendo.evalStr( <<EOS
(define-syntax dummy-syntax
  (syntax-rules))
EOS
                    ) }.to     raise_error( RuntimeError, /syntax-rules.+\(1\)/ )
    expect { @nendo.evalStr( <<EOS
(define-syntax dummy-syntax
  (syntax-rules eee))
EOS
                    ) }.to     raise_error( RuntimeError, /syntax-rules.+\(2\)/ )

    expect { @nendo.evalStr( <<EOS
(define-syntax dummy-syntax
  (syntax-rules
    ((_ arg1)
     arg1)))
EOS
                    ) }.to     raise_error( RuntimeError, /syntax-rules.+\(3\)/ )

    expect(@nendo.evalStr( <<EOS
(define this-is-var 1)
(define-syntax dummy-syntax
  (syntax-rules ()
    ((_ arg1)
     this-is-var)))
(macroexpand
 '(dummy-syntax 100))
EOS
                    )).to     eq("this-is-var")

    expect(@nendo.evalStr( <<EOS
(define-syntax dummy-syntax
  (syntax-rules ()
    ((_ arg1)
     'this-is-symbol)))
(macroexpand
 '(dummy-syntax 100))
EOS
                    )).to     match( /quote #<SyntacticClosure.this-is-symbol:_this/ )

    expect(@nendo.evalStr( <<EOS
(define-syntax dummy-syntax
  (syntax-rules ()
    ((_ arg1)
     'this-is-symbol)))
(dummy-syntax 100)
EOS
                    )).to     eq("this-is-symbol")

  end
end

describe Nendo, "When use let-syntax" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do

    expect(@nendo.evalStr( <<EOS
(macroexpand
 '(let-syntax ((nil!
                (syntax-rules ()
                  ((_ x)
                   (set! x '())))))
    (nil! aa)))
EOS
           )).to eq("(begin (set! aa (quote ())))")

    expect(@nendo.evalStr( <<EOS
(macroexpand
 '(let-syntax ((dummy-syntax
                (syntax-rules ()
                  ((_ x)
                   'this-is-symbol))))
    (dummy-syntax 100)))
EOS
           )).to   match( /begin [(]quote #<SyntacticClosure.this-is-symbol:/ )

    expect(@nendo.evalStr( <<EOS
(macroexpand
 '(let-syntax ((dummy-syntax
                (syntax-rules ()
                  ((_ x)
                   (begin "this is debug line"
                          #?.)))))
    (dummy-syntax 100)))
EOS
           )).to eq("(begin (begin \"this is debug line\" \"(string):6\"))")

    expect(@nendo.evalStr( <<EOS
(define aa 100)
(let-syntax ((nil!
              (syntax-rules ()
                ((_ x)
                 (set! x '())))))
  (nil! aa))
aa
EOS
           )).to eq("()")

    expect(@nendo.evalStr( <<EOS
(let ()
  (let-syntax ()
    (define internal-def 'ok)
    internal-def))
EOS
           )).to eq("ok")

    expect(@nendo.evalStr( <<EOS
'"internal-def2"
(let ()
  (let-syntax ()
    (define internal-def 'ok)
    internal-def))
EOS
           )).to eq("ok")

    expect(@nendo.evalStr( <<EOS
(let-syntax
    ((foo (syntax-rules ()
            ((foo args ... penultimate ultimate)
             (list ultimate penultimate args ...)))))
  (foo 1 2 3 4 5))
EOS
           )).to eq("(5 4 1 2 3)")

    expect { @nendo.evalStr( <<EOS
(let-syntax ((a (+ 1 2)))
  (a))
EOS
                    ) }.to     raise_error( SyntaxError, /syntax-rules/ )

    expect { @nendo.evalStr( <<EOS
(let-syntax ((a 100))
  (a))
EOS
                    ) }.to     raise_error( SyntaxError, /syntax-rules/ )

    expect { @nendo.evalStr( <<EOS
(let-syntax ((a (syntax-rules-dummy () 1))
             (b (syntax-rules       () 2)))
  (list (a) (b)))
EOS
                    ) }.to     raise_error( SyntaxError, /syntax-rules/ )

    expect(@nendo.evalStr( <<EOS
(let-syntax ()
  (list 1 2))
EOS
           )).to eq("(1 2)")

    expect(@nendo.evalStr( <<EOS
(let ()
  (let-syntax ((a (syntax-rules () ((_ ?x) (+ ?x 8))))
               (b (syntax-rules () ((_ ?x) (- ?x 8)))))
    (list (a 7) (b 8))))
EOS
           )).to eq("(15 0)")

    expect(@nendo.evalStr( <<EOS
(let ()
  (let-syntax ((a (syntax-rules () ((_ ?x) (+ ?x 8))))
               (b (syntax-rules () ((_ ?x) (- ?x 8)))))
    (let-syntax ((aa (syntax-rules () ((_ ?x) (b 2))))
                 (bb (syntax-rules () ((_ ?x) (a 3)))))
      (list (aa 7) (bb 8)))))
EOS
           )).to eq("(-6 11)")

    expect(@nendo.evalStr( <<EOS
(let ()
  (let-syntax ((a (syntax-rules () ((_ ?x) (+ ?x 8))))
               (b (syntax-rules () ((_ ?x) (- ?x 8)))))
    (let-syntax ((a (syntax-rules () ((_ ?y) (b 2))))
                 (b (syntax-rules () ((_ ?y) (a 3)))))
      (list (a 7) (b 8)))))
EOS
           )).to eq("(-6 11)")
  end
end


describe Nendo, "When use let-syntax in lexical scope " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do

    expect(@nendo.evalStr( <<EOS
(let ((... 2))
  (let-syntax ((s (syntax-rules ()
                    ((_ x ...) 'bad)
                    ((_ . r) 'ok))))
    (s a b c)))
EOS
           )).to eq("ok")

    expect(@nendo.evalStr( <<EOS
(let ((x 'outer))
  (let-syntax ((m (syntax-rules () ((m) x))))
    (let ((x 'inner))
      (m)))) ;; '
EOS
           )).to eq("outer")

    expect(@nendo.evalStr( <<EOS
(let ((x 'outer1))
  (let ((y 'outer2))
    (let ((z 'outer3))
      (let-syntax ((m (syntax-rules () ((m) (list x y z)))))
        (let ((x 'inner1))
          (let ((y 'inner2))
            (let ((z 'inner3))
              (m))))))))
EOS
           )).to eq("(outer1 outer2 outer3)")

    expect(@nendo.evalStr( <<EOS
(let ((x 'outer))
  (let-syntax ((with-x
                (syntax-rules ()
                  ((_ y expr)
                   (let-syntax ((y (syntax-rules () ((_) x))))
                     expr)))))
    (let ((x 'inner))
      (with-x z (z)))))
EOS
           )).to eq("outer")

#    pending( "nested let fails on limitation of Nendo's let-syntax." )
#
#    @nendo.evalStr( <<EOS
#(define z 'top-level-1)
#(let ((x 'outer1))
#  (let ((y x))
#    (let ((z y))
#      (let-syntax ((m (syntax-rules () ((m) z))))
#        (let ((x 'inner1))
#          (let ((y x))
#            (let ((z y))
#              (m))))))))
#EOS
#           ).should == "outer1"

  end
end

describe Nendo, "When use complex let-syntax" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do

    expect(@nendo.evalStr( <<EOS
(define-syntax %cut
  (syntax-rules (<> <...>)
    ((%cut e? params args)
     (lambda params args))
    ((%cut e? (params ...) (args ...) <> . rest)
     (%cut e? (params ... tmp) (args ... tmp) . rest))
    ((%cut e? (params ...) (args ...) <...>)
     (%cut e? (params ... . tmp) (apply args ... tmp)))
    ((%cut e? (params ...) (args ...) <...> . rest)
     (error "cut: non-terminal <...>"))
    ((%cut #t (params ...) (args ...) x . rest)
     (let ((tmp x)) (%cut #t (params ...) (args ... tmp) . rest)))
    ((%cut #f (params ...) (args ...) x . rest)
     (%cut #t (params ...) (args ... x) . rest))))
EOS
           )).to     match( /Nendo::LispSyntax/ )

    expect(@nendo.evalStr( <<EOS
(define-syntax cut
  (syntax-rules () ((cut args ...) (%cut #f () () args ...))))
EOS
           )).to     match( /Nendo::LispSyntax/ )

    expect(@nendo.evalStr( <<EOS
(define rassq (cut rassoc <> <> eq?))
EOS
           )).to     match( /Proc/ )

    expect(@nendo.evalStr( <<EOS
((cut list 1 <> 3 <>) 2 4)
EOS
           )).to     eq("(1 2 3 4)")

  expect(@nendo.evalStr( <<EOS
(define-syntax match-check-ellipse
  (syntax-rules ()
    ((match-check-ellipse (a . b) success-k failure-k) failure-k)
    ((match-check-ellipse #(a ...) success-k failure-k) failure-k)
    ;; matching an atom
    ((match-check-ellipse id success-k failure-k)
     (let-syntax ((ellipse? (syntax-rules ()
                              ((ellipse? (foo id) sk fk) sk)
                              ((ellipse? other sk fk) fk))))
       (ellipse? (a b c) success-k failure-k)))))
EOS
         )).to     match( /Nendo::LispSyntax/ )

  expect(@nendo.evalStr( <<EOS
(match-check-ellipse (aa bb) (+ #?. " ellipse") (+ #?. " non-ellipse"))
EOS
         )).to     eq('"(string):1 non-ellipse"')

  expect(@nendo.evalStr( <<EOS
(match-check-ellipse xxx (+ #?. " ellipse") (+ #?. " non-ellipse"))
EOS
         )).to     eq('"(string):1 non-ellipse"')

  expect(@nendo.evalStr( <<EOS
(match-check-ellipse ... (+ #?. " ellipse") (+ #?. " non-ellipse"))
EOS
         )).to     eq('"(string):1 ellipse"')

  expect(@nendo.evalStr( <<EOS
(define-syntax dummy-syntax
  (syntax-rules ()
    ((_ arg)
     (match-check-ellipse arg (result-str "ellipse") (result-str "non-ellipse")))))
(define-syntax result-str
  (syntax-rules ()
    ((_ arg-str)
     (+ #?. " " arg-str))))
(dummy-syntax xxx)
EOS
         )).to     eq('"(string):8 non-ellipse"')

  expect(@nendo.evalStr( <<EOS
(match-check-ellipse ... (match-check-ellipse xxx 'tt 'tf) (match-check-ellipse xxx 'ft 'ff))
EOS
         )).to     eq('tf')

  expect(@nendo.evalStr( <<EOS
(match-check-ellipse yyy (match-check-ellipse xxx 'tt 'tf) (match-check-ellipse xxx 'ft 'ff))
EOS
         )).to     eq('ff')

  expect(@nendo.evalStr( <<EOS
(define-syntax match-check-identifier
  (syntax-rules ()
    ;; fast-case failures, lists and vectors are not identifiers
    ((_ (x . y) success-k failure-k) failure-k)
    ((_ #(x ...) success-k failure-k) failure-k)
    ;; x is an atom
    ((_ x success-k failure-k)
     (let-syntax
         ((sym?
           (syntax-rules ()
             ((sym? x sk fk) sk)
             ;; otherwise x is a non-symbol datum
             ((sym? y sk fk) (begin #?. fk)))))
       (sym? abracadabra success-k failure-k)))))
EOS
         )).to     match( /Nendo::LispSyntax/ )

  expect(@nendo.evalStr( <<EOS
(match-check-identifier (aa bb) "id" "non-id")
EOS
         )).to     eq('"non-id"')

  expect(@nendo.evalStr( <<EOS
(match-check-identifier xx "id" "non-id")
EOS
         )).to     eq('"id"')

  expect(@nendo.evalStr( <<EOS
(let ([yy (match-check-identifier xx "id" "non-id")])
  yy)
EOS
         )).to     eq('"id"')

  end
end


describe Nendo, "When expand guard special form" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( <<EOS
(macroexpand-1
 (quote
  (%guard-var (exc
               (else (print "ELSE"))))))
EOS
                    )).to eq("exc")

    expect(@nendo.evalStr( <<EOS
(macroexpand-1
 (quote
  (%guard-var (exc
               ((exc.is_a? RuntimeError)
                (print "<<RuntimeError>>"))
               (else (print "ELSE"))))))
EOS
                    )).to eq("exc")

    expect(@nendo.evalStr( <<EOS
(macroexpand-1
 (quote
  (%guard-var (exc
               ((exc.is_a? RuntimeError)
                (print "<<RuntimeError>>"))
               (else
                => (lambda (e)
                     (printf "Type is [%s]\n" e.class)))))))
EOS
                    )).to eq("exc")

    expect(@nendo.evalStr( <<EOS
(macroexpand-1
 (quote
  (%guard-clause (exc
                  (else (print "ELSE"))))))
EOS
                    )).to match( /^[(]cond.+else.+print.+ELSE.+[(]#t [(]raise.+exc[)][)][)]$/ )


    expect(@nendo.evalStr( <<EOS
(macroexpand-1
 (quote
  (%guard-clause (exc
                  ((exc.is_a? RuntimeError)
                   (print "<<RuntimeError>>"))
                  (else (print "ELSE"))))))
EOS
                    )).to match( /^[(]cond.+exc.is_a.+RuntimeError.+<<RuntimeError>>.+else.+print.+ELSE.+[(]#t [(]raise.+exc[)][)][)]$/ )

    expect(@nendo.evalStr( <<EOS
(macroexpand-1
 (quote
  (%guard-clause (exc
                  ((exc.is_a? RuntimeError)
                   (print "<<RuntimeError>>"))))))
EOS
                    )).to match( /^[(]cond.+exc.is_a.+RuntimeError.+<<RuntimeError>>.+[(]#t [(]raise.+exc[)][)][)]$/ )

    expect(@nendo.evalStr( <<EOS
(macroexpand-1
 (quote
  (%guard-clause (exc))))
EOS
                    )).to match( /^[(]cond.+[(]#t [(]raise.+exc[)][)][)]$/ )

    expect(@nendo.evalStr( <<EOS
(macroexpand-1
 (quote
  (%guard-clause (exc
                  ((exc.is_a? RuntimeError)
                   (print "<<RuntimeError>>"))
                  (else
                   => (lambda (e)
                        (sprintf "Type is [%s]" e.class)))))))
EOS
                    )).to match( /^[(]cond.+exc.is_a.+RuntimeError.+print.+RuntimeError.+else.+feedto.+[(]#t [(]raise exc[)][)][)]$/ )


  end
end


describe Nendo, "When use guard special form" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( <<EOS
(guard
 (exc (else (sprintf "Type is [%s]" (exc.class))))
 (error "This is RuntimeError"))
EOS
                    )).to  eq('"Type is [RuntimeError]"')

    expect(@nendo.evalStr( <<EOS
(guard
 (exc (else (sprintf "Type is [%s]" exc.class)))
 (+ (Array.new) 1))
EOS
                    )).to  eq('"Type is [TypeError]"')

    expect(@nendo.evalStr( <<EOS
(guard
 (exc (else (sprintf "Type is [%s]" exc.class)))
 (+ (Array.new) 1)
 (error "This is RuntimeError"))
EOS
                    )).to  eq('"Type is [TypeError]"')

    expect(@nendo.evalStr( <<EOS
(guard
 (exc (else (sprintf "Type is [%s]" exc.class)))
 (error "This is RuntimeError")
 (+ (Array.new) 1))
EOS
                    )).to  eq('"Type is [RuntimeError]"')

    expect(@nendo.evalStr( <<EOS
(guard
    (exc ((exc.is_a? RuntimeError)
          "Type is [RuntimeError]")
         ((exc.is_a? TypeError)
          "Type is [TypeError]")
         (else
          "Type is Others"))
  (error "This is RuntimeError")
  (+ (Array.new) 1))
EOS
                    )).to  eq('"Type is [RuntimeError]"')

    expect(@nendo.evalStr( <<EOS
(guard
    (exc ((exc.is_a? RuntimeError)
          "Type is [RuntimeError]")
         ((exc.is_a? TypeError)
          "Type is [TypeError]"))
  (+ (Array.new) 1)
  (error "This is RuntimeError"))
EOS
                    )).to  eq('"Type is [TypeError]"')

    expect(@nendo.evalStr( <<EOS
(guard
 (exc ((exc.is_a? TypeError)
       "Type is [TypeError]"))
 (+ (Array.new) 1)
 (error "This is RuntimeError"))
EOS
                    )).to  eq('"Type is [TypeError]"')

    expect(@nendo.evalStr( <<EOS
(guard
 (exc ((exc.is_a? RuntimeError)
       "Type is [RuntimeError]"))
 (error "This is RuntimeError")
 (+ (Array.new) 1))
EOS
                    )).to  eq('"Type is [RuntimeError]"')

    expect { @nendo.evalStr( <<EOS
(guard
   (exc)
  (error "This is RuntimeError"))
EOS
                    ) }.to  raise_error( RuntimeError )

    expect { @nendo.evalStr( <<EOS
(begin
  (guard
      (exc ((exc.is_a? RuntimeError)
            "Type is [RuntimeError]"))
    (+ (Array.new) 1))
  \"-END-\")
EOS
                    ) }.to  raise_error( TypeError )

  end
end



describe Nendo, "When use guard and raise" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end
  it "should" do
    expect(@nendo.evalStr( <<EOS
(guard
 (exc ((exc.is_a? TypeError)
       "[TypeError]")
      (else
       "[OtherError]"))
 (guard
   (exc (else (+ "a" 1.1)))
   (error "This is RuntimeError")))
EOS
           )).to  eq('"[TypeError]"')

    expect(@nendo.evalStr( <<EOS
(let1 lst '()
   (guard
       (exc (else (push! lst 2)))
     (guard
         (exc (else (push! lst 1)))
       (error "Error occur")))
   lst)
EOS
           )).to  eq('(1)')

    expect(@nendo.evalStr( <<EOS
(let1 lst '()
  (guard
      (exc (else (push! lst 2)))
    (guard
        (exc (else (push! lst 1)
                   (error "Error occur(2)")))
      (error "Error occur(1)")))
  lst)
EOS
           )).to  eq('(2 1)')


    expect { @nendo.evalStr( <<EOS
(let1 lst '()
  (guard
      (exc (else (push! lst 3)
                 (errorf "Error occur:%s" (write-to-string lst))))
    (guard
        (exc (else (push! lst 2)
                   (error "Error occur(3)")))
      (guard
          (exc (else (push! lst 1)
                     (error "Error occur(2)")))
        (error "Error occur(1)"))))
  #t)
EOS
                    ) }.to  raise_error( RuntimeError, /Error occur:[(]3 2 1[)]/ )


    expect(@nendo.evalStr( <<EOS
(define a
 (guard
     (exc (else (exc.message))) ;; line 1
   (raise RuntimeError)))
(define b
 (guard
     (exc (else (exc.message))) ;; line 5
   (raise NoMethodError)))
(define c
 (guard
     (exc (else (exc.message))) ;; line 9
   (raise ArgumentError)))
(list a b c)
EOS
                    )).to  eq('("(string):1 raised RuntimeError" "(string):5 raised NoMethodError" "(string):9 raised ArgumentError")')


  end
end


describe Nendo, "When use unwind-protect" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.setDisplayErrors( false )
    @nendo.loadInitFile
  end

  it "should" do
    expect(@nendo.evalStr( "(macroexpand '(unwind-protect 1 2)) ;; '" )).to  match( /[(]%guard #<SyntacticClosure.exc:_exc__gensym/ )

    expect { @nendo.evalStr( <<EOS
(let1 cnt 0
  (begin
    (set! cnt (+ cnt 1))
    (set! cnt (+ cnt "string"))
  ))
EOS
                    ) }.to  raise_error( TypeError )

    expect(@nendo.evalStr( <<EOS
(let1 cnt 0
  (unwind-protect
      1
    2))
EOS
           )).to  eq('1')

    expect(@nendo.evalStr( <<EOS
(let1 cnt 0
  (unwind-protect
      (begin 1 2)
    3))
EOS
           )).to  eq('2')

    expect(@nendo.evalStr( <<EOS
(let* ([cnt 0]
       [result (unwind-protect
                   (begin
                     (set! cnt (+ cnt 1))
                     (set! cnt (+ cnt 2))
                     (+ 1.1 "str")
                     (set! cnt (+ cnt 3)))
                 (set! cnt (+ cnt 100)))])
  (list result cnt))
EOS
           )).to  eq('(#f 103)')

    expect(@nendo.evalStr( <<EOS
(let* ([cnt 0]
       [result (unwind-protect
                   (begin
                     (set! cnt (+ cnt 10))
                     (set! cnt (+ cnt 01))
                     (error "[RuntimeError]")
                     (set! cnt (+ cnt 02)))
                 (set! cnt (+ cnt 100)))])
  (list result cnt))
EOS
           )).to  eq('(#f 111)')

    expect(@nendo.evalStr( <<EOS
(let* ([cnt 0]
       [result (unwind-protect
                   (begin
                     (set! cnt (+ cnt 10))
                     (set! cnt (+ cnt 01))
                     (guard (exc (else (set! cnt (+ cnt 100))))
                       (error "[RuntimeError]"))
                     (set! cnt (+ cnt 02)))
                 (set! cnt (+ cnt 1000)))])
  (list result cnt))
EOS
           )).to  eq('(113 1113)')

  end
end
