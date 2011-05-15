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
    @nendo.evalStr( "(define a 1)" ).should         == '1'
    @nendo.evalStr( "(define a if)" ).should        match( /Nendo::LispCoreSyntax/ )
    @nendo.evalStr( "(eq?    a if)" ).should        == '#t'
    @nendo.evalStr( "(define a begin)" ).should     match( /Nendo::LispCoreSyntax/ )
    @nendo.evalStr( "(eq?    a begin)" ).should     == '#t'
    @nendo.evalStr( "(define a lambda)" ).should    match( /Nendo::LispCoreSyntax/ )
    @nendo.evalStr( "(eq?    a lambda)" ).should    == '#t'
    @nendo.evalStr( "(define a macro)" ).should     match( /Nendo::LispCoreSyntax/ )
    @nendo.evalStr( "(eq?    a macro)" ).should     == '#t'
    @nendo.evalStr( "(define a &block)" ).should    match( /Nendo::LispCoreSyntax/ )
    @nendo.evalStr( "(eq?    a &block)" ).should    == '#t'
    @nendo.evalStr( "(define a %let)" ).should       match( /Nendo::LispCoreSyntax/ )
    @nendo.evalStr( "(eq?    a %let)" ).should       == '#t'
    @nendo.evalStr( "(define a letrec)" ).should    match( /Nendo::LispCoreSyntax/ )
    @nendo.evalStr( "(eq?    a letrec)" ).should    == '#t'
    @nendo.evalStr( "(define a set!)" ).should      match( /Nendo::LispCoreSyntax/ )
    @nendo.evalStr( "(eq?    a set!)" ).should      == '#t'
  end
end


describe Nendo, "when use lib functions for let-syntax " do
  before do
    @nendo = Nendo::Core.new()
  end
  it "should" do
    @nendo.evaluator.write_to_string(
       @nendo.evaluator.__wrapNestedLet( 1000,
                          [[ :a, Cell.new( 2 ) ]]
                          )).should == "(%let ((a 2)) 1000)"
    @nendo.evaluator.write_to_string(
       @nendo.evaluator.__wrapNestedLet( 1000,
                          [[ :a, Cell.new( 2 ) ], [ :b, Cell.new( 3 ) ]]
                          )).should == "(%let ((a 2)) (%let ((b 3)) 1000))"
    @nendo.evaluator.write_to_string(
       @nendo.evaluator.__wrapNestedLet( Cell.new( :"+", Cell.new( :a, Cell.new( :b ))),
                          [[ :a, Cell.new( 2 ) ], [ :b, Cell.new( 3 ) ]]
                          )).should == "(%let ((a 2)) (%let ((b 3)) (+ a b)))"
  end
end


describe Nendo, "when use identifier checker " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( "(symbol? 'a)" ).should                                     == '#t'
    @nendo.evalStr( "(identifier? 'a)" ).should                                 == '#t'
    @nendo.evalStr( "(identifier? 'identifier)" ).should                        == '#t'
    @nendo.evalStr( "(identifier? 'lambda)" ).should                            == '#t'
    @nendo.evalStr( "(identifier? 10)" ).should                                 == '#f'
    @nendo.evalStr( "(identifier? \"str\")" ).should                            == '#f'
    @nendo.evalStr( "(identifier=? '() 'lambda '() 'lambda)" ).should           == '#t'
    @nendo.evalStr( "(identifier=? '() 'define '() 'lambda)" ).should           == '#f'
    @nendo.evalStr( "(identifier=? '() 'if '() '/nendo/macroenv/if)" ).should   == '#f'
  end
end


describe Nendo, "when call make-syntactic-closure " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'print  )" ).should                  == 'print'
    @nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'if     )" ).should                  == 'if'
    @nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'lambda )" ).should                  == 'lambda'
    @nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'aaaa   )" ).should                  match( /_aaaa_/ )
    @nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'tmp    )" ).should                  match( /_tmp_/ )
    @nendo.evalStr( "(define name (make-syntactic-closure (global-variables) '() 'tmp ))" ).should       match( /_tmp_/ )
    @nendo.evalStr( "name" ).should                                                                      match( /_tmp_/ )
    @nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'new_global_var)" ).should           match( /_new_global_var_/ )
    @nendo.evalStr( "(define new_global_var 10)" ).should                                                == '10'
    @nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'new_global_var)" ).should           == 'new_global_var'
  end
end


describe Nendo, "when use core syntax " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( "(if                        #t 1 2)" ).should                        == '1'
    @nendo.evalStr( "(if                        #f 1 2)" ).should                        == '2'
    @nendo.evalStr( "(/nendo/core/if            #t 1 2)" ).should                        == '1'
    @nendo.evalStr( "(/nendo/core/if            #f 1 2)" ).should                        == '2'
    @nendo.evalStr( "(begin                      1 2 3)" ).should                        == '3'
    @nendo.evalStr( "(/nendo/core/begin          1 2 3)" ).should                        == '3'
    @nendo.evalStr( "(car (memq '/nendo/core/begin (global-variables)))" ).should        == '/nendo/core/begin'
  end
end


describe Nendo, "when use er-macro-transformer " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( <<EOS
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
           ).should    match( /Nendo::LispSyntax/ )
    @nendo.evalStr( "(my-or 1 2)" ).should                  ==  '1'
    @nendo.evalStr( "(my-or #f 100 200)" ).should           ==  '100'
    @nendo.evalStr( "(my-or #f #f #f #f 500)" ).should      ==  '500'
    @nendo.evalStr( "(my-or #f #f #f #f #f)" ).should       ==  '#f'

    @nendo.evalStr( <<EOS
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
           ).should    match( /Nendo::LispSyntax/ )
    @nendo.evalStr( "(my-and 1 2)" ).should                 ==  '2'
    @nendo.evalStr( "(my-and 1 2 3 4)" ).should             ==  '4'
    @nendo.evalStr( "(my-and #t #t #t #t 500)" ).should     ==  '500'
    @nendo.evalStr( "(my-and 1  2  3  4 #f)" ).should       ==  '#f'
    @nendo.evalStr( "(my-and 1  2 #f  4  5)" ).should       ==  '#f'
  end
end


describe Nendo, "when use syntax-rules " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do
    @nendo.evalStr( <<EOS
(define-syntax nil!
  (syntax-rules ()
    ((_ x)
     (set! x '()))))
nil!
EOS
           ).should    match( /Nendo::LispSyntax/ )
    @nendo.evalStr( "(define a 1)  a" ).should                 ==  '1'
    @nendo.evalStr( "(nil! a)      a" ).should                 ==  '()'
    @nendo.evalStr( "(set! a 2)    a" ).should                 ==  '2'
    @nendo.evalStr( "(nil! a)      a" ).should                 ==  '()'
    @nendo.evalStr( <<EOS
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
           ).should    match( /Nendo::LispSyntax/ )
    @nendo.evalStr( "(test-syntax 1)" ).should                 ==  '(1)'
    @nendo.evalStr( "(test-syntax 1 2)" ).should               ==  '(1 (2))'
    @nendo.evalStr( "(test-syntax 1 2 3)" ).should             ==  '(1 (2 (3)))'
    @nendo.evalStr( "(test-syntax 1 2 3 4)" ).should           ==  '(1 (2 (3 4)))'
    @nendo.evalStr( "(test-syntax 1 2 3 4 5)" ).should         ==  '(1 (2 (3 4 5)))'
    @nendo.evalStr( "(test-syntax 1 2 3 4 5 6)" ).should       ==  '(1 (2 (3 4 5 6)))'
    @nendo.evalStr( "(test-syntax 'a)" ).should                ==  '(a)'
    @nendo.evalStr( "(test-syntax 'a \"B\")" ).should          ==  '(a ("B"))'
    @nendo.evalStr( "(test-syntax 'a \"B\" 'C)" ).should       ==  '(a ("B" (C)))'
    @nendo.evalStr( "(test-syntax 'a \"B\" 'C \"d\")" ).should ==  '(a ("B" (C "d")))'
    lambda { @nendo.evalStr( <<EOS
(define-syntax dummy-syntax
  (syntax-rules))
EOS
                    ) }.should     raise_error( RuntimeError, /syntax-rules.+\(1\)/ )
    lambda { @nendo.evalStr( <<EOS
(define-syntax dummy-syntax
  (syntax-rules eee))
EOS
                    ) }.should     raise_error( RuntimeError, /syntax-rules.+\(2\)/ )

    lambda { @nendo.evalStr( <<EOS
(define-syntax dummy-syntax
  (syntax-rules
    ((_ arg1)
     arg1)))
EOS
                    ) }.should     raise_error( RuntimeError, /syntax-rules.+\(3\)/ )

    @nendo.evalStr( <<EOS
(define this-is-var 1)
(define-syntax dummy-syntax
  (syntax-rules ()
    ((_ arg1)
     this-is-var)))
(macroexpand
 '(dummy-syntax 100))
EOS
                    ).should     == "this-is-var"

    @nendo.evalStr( <<EOS
(define-syntax dummy-syntax
  (syntax-rules ()
    ((_ arg1)
     'this-is-symbol)))
(macroexpand
 '(dummy-syntax 100))
EOS
                    ).should     == "'this-is-symbol"

  end
end

describe Nendo, "When use let-syntax" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do

    @nendo.evalStr( <<EOS
(macroexpand
 '(let-syntax ((nil!
                (syntax-rules ()
                  ((_ x)
                   (set! x '())))))
    (nil! aa)))
EOS
           ).should == "(let-syntax ((nil! (%syntax-rules () ((_ x) (set! x '()))))) (set! aa '()))"

    @nendo.evalStr( <<EOS
(macroexpand
 '(let-syntax ((dummy-syntax
                (syntax-rules ()
                  ((_ x)
                   'this-is-symbol))))
    (dummy-syntax 100)))
EOS
           ).should == "(let-syntax ((dummy-syntax (%syntax-rules () ((_ x) 'this-is-symbol)))) 'this-is-symbol)"

    @nendo.evalStr( <<EOS
(define aa 100)
(let-syntax ((nil!
              (syntax-rules ()
                ((_ x)
                 (set! x '())))))
  (nil! aa))
aa
EOS
           ).should == "()"

    @nendo.evalStr( <<EOS
(let ()
  (let-syntax ()
    (define internal-def 'ok)
    internal-def))
EOS
           ).should == "ok"

    @nendo.evalStr( <<EOS
(let ()
  (let-syntax ()
    (define internal-def 'ok)
    internal-def))
EOS
           ).should == "ok"

    @nendo.evalStr( <<EOS
(let-syntax
    ((foo (syntax-rules ()
            ((foo args ... penultimate ultimate)
             (list ultimate penultimate args ...)))))
  (foo 1 2 3 4 5))
EOS
           ).should == "(5 4 1 2 3)"

    lambda { @nendo.evalStr( <<EOS
(let-syntax ((a (+ 1 2)))
  (a))
EOS
                    ) }.should     raise_error( SyntaxError, /syntax-rules/ )

    lambda { @nendo.evalStr( <<EOS
(let-syntax ((a 100))
  (a))
EOS
                    ) }.should     raise_error( SyntaxError, /syntax-rules/ )

    lambda { @nendo.evalStr( <<EOS
(let-syntax ((a (syntax-rules-dummy () 1))
             (b (syntax-rules       () 2)))
  (list (a) (b)))
EOS
                    ) }.should     raise_error( SyntaxError, /syntax-rules/ )

    @nendo.evalStr( <<EOS
(let-syntax ()
  (list 1 2))
EOS
           ).should == "(1 2)"

    @nendo.evalStr( <<EOS
(let ()
  (let-syntax ((a (syntax-rules () ((_ ?x) (+ ?x 8))))
               (b (syntax-rules () ((_ ?x) (- ?x 8)))))
    (list (a 7) (b 8))))
EOS
           ).should == "(15 0)"

    @nendo.evalStr( <<EOS
(let ()
  (let-syntax ((a (syntax-rules () ((_ ?x) (+ ?x 8))))
               (b (syntax-rules () ((_ ?x) (- ?x 8)))))
    (let-syntax ((aa (syntax-rules () ((_ ?x) (b 2))))
                 (bb (syntax-rules () ((_ ?x) (a 3)))))
      (list (aa 7) (bb 8)))))
EOS
           ).should == "(-6 11)"

    @nendo.evalStr( <<EOS
(let ()
  (let-syntax ((a (syntax-rules () ((_ ?x) (+ ?x 8))))
               (b (syntax-rules () ((_ ?x) (- ?x 8)))))
    (let-syntax ((a (syntax-rules () ((_ ?y) (b 2))))
                 (b (syntax-rules () ((_ ?y) (a 3)))))
      (list (a 7) (b 8)))))
EOS
           ).should == "(-6 11)"
  end
end


describe Nendo, "When use let-syntax in lexical scope " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do

    @nendo.evalStr( <<EOS
(let ((... 2))
  (let-syntax ((s (syntax-rules ()
                    ((_ x ...) 'bad)
                    ((_ . r) 'ok))))
    (s a b c)))
EOS
           ).should == "ok"

    @nendo.evalStr( <<EOS
(let ((x 'outer))
  (let-syntax ((m (syntax-rules () ((m) x))))
    (let ((x 'inner))
      (m))))
EOS
           ).should == "outer"

    @nendo.evalStr( <<EOS
(let ((x 'outer1))
  (let ((y 'outer2))
    (let ((z 'outer3))
      (let-syntax ((m (syntax-rules () ((m) (list x y z)))))
        (let ((x 'inner1))
          (let ((y 'inner2))
            (let ((z 'inner3))
              (m))))))))
EOS
           ).should == "(outer1 outer2 outer3)"

    @nendo.evalStr( <<EOS
(define z 'top-level-1)
(let ((x 'outer1))
  (let ((y x))
    (let ((z y))
      (let-syntax ((m (syntax-rules () ((m) z))))
        (let ((x 'inner1))
          (let ((y x))
            (let ((z y))
              (m))))))))
EOS
           ).should == "outer1"

    @nendo.evalStr( <<EOS
(let ((x 'outer))
  (let-syntax ((with-x
                (syntax-rules ()
                  ((_ y expr)
                   (let-syntax ((y (syntax-rules () ((_) x))))
                     expr)))))
    (let ((x 'inner))
      (with-x z (z)))))
EOS
           ).should == "outer"

  end
end

describe Nendo, "When use complex let-syntax" do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
  end
  it "should" do

    @nendo.evalStr( <<EOS
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
           ).should     match( /Nendo::LispSyntax/ )

    @nendo.evalStr( <<EOS
(define-syntax cut
  (syntax-rules () ((cut args ...) (%cut #f () () args ...))))
EOS
           ).should     match( /Nendo::LispSyntax/ )

    @nendo.evalStr( <<EOS
(define rassq (cut rassoc <> <> eq?))
EOS
           ).should     match( /Proc/ )

    @nendo.evalStr( <<EOS
((cut list 1 <> 3 <>) 2 4)
EOS
           ).should     == "(1 2 3 4)"

  @nendo.evalStr( <<EOS
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
         ).should     match( /Nendo::LispSyntax/ )

  @nendo.evalStr( <<EOS
(match-check-ellipse (aa bb) "ellipse" "non-ellipse")
EOS
         ).should     == '"non-ellipse"'

  @nendo.evalStr( <<EOS
(match-check-ellipse xxx "ellipse" "non-ellipse")
EOS
         ).should     == '"non-ellipse"'

  @nendo.evalStr( <<EOS
(match-check-ellipse ... "ellipse" "non-ellipse")
EOS
         ).should     == '"ellipse"'

  @nendo.evalStr( <<EOS
(define-syntax dummy-syntax
  (syntax-rules ()
    ((_ arg)
     (match-check-ellipse arg (result-str "ellipse") (result-str "non-ellipse")))))
(define-syntax result-str
  (syntax-rules ()
    ((_ arg-str)
     arg-str)))
(dummy-syntax xxx)
EOS
         ).should     == '"non-ellipse"'

  @nendo.evalStr( <<EOS
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
             ((sym? y sk fk) fk))))
       (sym? abracadabra success-k failure-k)))))
EOS
         ).should     match( /Nendo::LispSyntax/ )

  @nendo.evalStr( <<EOS
(match-check-identifier (aa bb) "id" "non-id")
EOS
         ).should     == '"non-id"'

  @nendo.evalStr( <<EOS
(match-check-identifier xx "id" "non-id")
EOS
         ).should     == '"id"'

  @nendo.evalStr( <<EOS
(let ([yy (match-check-identifier xx "id" "non-id")])
  yy)
EOS
         ).should     == '"id"'

  end
end


