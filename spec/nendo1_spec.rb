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

describe Cell, "when bootstrapping" do
  before do
    @nendo = Nendo::Core.new()
  end

  it "should" do
    
    @nendo.evalStr( <<EOS
;; ----------------------------------------
;; define
;; ----------------------------------------
(define %expand-define-form-lambda
  (lambda (arg body-list)
    ;; (define (func arg...) body)
    (if (pair? (cdr arg))
        (if (pair? (car (cdr arg)))
            (error "Error: define syntax error.")))
    (cons 'define
          (cons (car arg)
                (list
                 (cons 'lambda
                       (cons  (cdr arg)
                              body-list)))))))
EOS
                  )

    @nendo.evalStr( <<EOS
(define define
  (macro (arg . body)
    (if (not (pair? arg))
        ;; (define var body)
        (cons 'define
              (cons arg
                    body))
        (%expand-define-form-lambda arg body))))
EOS
                  )

    @nendo.evalStr( <<EOS
(define %expand-define-form
  (lambda (arg-and-body)
    (%let ((arg  (car arg-and-body))
           (body (cdr arg-and-body)))
      ;; (define (func arg...) body)
      (if (not (pair? arg))
          ;; (define var body)
          (cons 'define
                (cons arg
                      body))
          (%expand-define-form-lambda arg body)))))
EOS
                  )
    
    @nendo.evalStr( <<EOS
(define debug-print
  (macro (_form sourcefile lineno sourcesexp)
    _form))
EOS
                  )

    @nendo.evalStr( <<EOS
(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))
(define (caaar x) (car (car (car x))))
(define (caadr x) (car (car (cdr x))))
(define (cadar x) (car (cdr (car x))))
(define (caddr x) (car (cdr (cdr x))))
(define (cdaar x) (cdr (car (car x))))
(define (cdadr x) (cdr (car (cdr x))))
(define (cddar x) (cdr (cdr (car x))))
(define (cdddr x) (cdr (cdr (cdr x))))
(define (caaaar x) (car (car (car (car x)))))
(define (caaadr x) (car (car (car (cdr x)))))
(define (caadar x) (car (car (cdr (car x)))))
(define (caaddr x) (car (car (cdr (cdr x)))))
(define (cadaar x) (car (cdr (car (car x)))))
(define (cadadr x) (car (cdr (car (cdr x)))))
(define (caddar x) (car (cdr (cdr (car x)))))
(define (cadddr x) (car (cdr (cdr (cdr x)))))
(define (cdaaar x) (cdr (car (car (car x)))))
(define (cdaadr x) (cdr (car (car (cdr x)))))
(define (cdadar x) (cdr (car (cdr (car x)))))
(define (cdaddr x) (cdr (car (cdr (cdr x)))))
(define (cddaar x) (cdr (cdr (car (car x)))))
(define (cddadr x) (cdr (cdr (car (cdr x)))))
(define (cdddar x) (cdr (cdr (cdr (car x)))))
(define (cddddr x) (cdr (cdr (cdr (cdr x)))))
EOS
                  )

    @nendo.evalStr( <<EOS
(define iota range)
EOS
                  )

    @nendo.evalStr( <<EOS
(define (append a b)
  (letrec ((append-reverse
            (lambda (a b)
              (if (pair? a)
                  (append-reverse (cdr a) (cons (car a) b))
                  b))))
    (append-reverse (reverse a) b)))
EOS
                                  )

    @nendo.evalStr( <<EOS
;; ----------------------------------------
;; Utility functions
;; ----------------------------------------
(define (vector . lst)  (to-arr lst))
(define list? %list?)
(define (even? n) (= (% n 2) 0))
(define (odd? n) (not (= (% n 2) 0)))
(define (zero? n) (= n 0))
(define (positive? n) (> n 0))
(define (negative? n) (< n 0))
(define (abs n) (if (>= n 0) n (- n)))
(define (max . lst)
     (fold-right (lambda (a b) (if (> a b) a b)) (car lst) (cdr lst)))
(define (min . lst)
     (fold-right (lambda (a b) (if (< a b) a b)) (car lst) (cdr lst)))
(define (succ x) (+ x 1))
(define (pred x) (- x 1))
(define (nth n lst)
  (letrec ((nth-iter
            (lambda (n index lst)
              (if (null? lst)
                  '()
                  (if (not (pair? lst))
                      (error "Error: nth got improper list.")
                      (if (eqv? n index)
                          (car lst)
                          (nth-iter n (+ index 1) (cdr lst))))))))
    (nth-iter n 0 lst)))
(define (first lst)    (nth  0 lst))
(define (second lst)   (nth  1 lst))
(define (third lst)    (nth  2 lst))
(define (fourth lst)   (nth  3 lst))
(define (fifth lst)    (nth  4 lst))
(define (sixth lst)    (nth  5 lst))
(define (seventh lst)  (nth  6 lst))
(define (eighth lst)   (nth  7 lst))
(define (ninth lst)    (nth  8 lst))
(define (tenth lst)    (nth  9 lst))

(define (x->string object)   (to-s object))
(define (number->string num) (x->string num))
(define string-append
  (lambda str-lst
    (string-join str-lst "")))

(define (string=? a b)
  (equal? a b))
EOS
                  )

    @nendo.evalStr( <<EOS
;; ----------------------------------------
;; Vector Library
;; ----------------------------------------
(define (vector? v)
  (v.is_a? Array))

(define (make-vector k . rest)
  (if (null? rest)
      (Array.new k)
      (Array.new k (car rest))))

(define (vector-length v)
  (v.size))

(define (vector-copy v)
  (v.clone))

(define (vector-ref v index . fallback)
  (if (and (<= 0 index) (< index v.size))
      (v.fetch index)
      (if (null? fallback)
          (errorf "Error: vector-ref  index value is overflow: %s\n" index)
          (car fallback))))

;;
;; ported from tinyscheme-1.39 by Kiyoka Nishiyama
;;
(define (vector-equal? x y)
     (and (vector? x) (vector? y) (= (vector-length x) (vector-length y))
          (let ((n (vector-length x)))
               (let loop ((i 0))
                    (if (= i n)
                         #t
                         (and (equal? (vector-ref x i) (vector-ref y i))
                              (loop (succ i))))))))

(define (list->vector x)
     (apply vector x))

(define (vector-fill! v e)
     (let ((n (vector-length v)))
          (let loop ((i 0))
               (if (= i n)
                    v
                    (begin (vector-set! v i e) (loop (succ i)))))))

(define (vector->list v)
     (let loop ((n (pred (vector-length v))) (l '()))
          (if (= n -1)
               l
               (loop (pred n) (cons (vector-ref v n) l)))))
EOS
                  )
    
    @nendo.evalStr( <<EOS
;; ----------------------------------------
;; basic forms
;; ----------------------------------------
(define (macroexpand sexp)
  (%let ((newsexp (macroexpand-1 sexp)))
     (if (not (equal? sexp newsexp))
         (macroexpand newsexp)
         (strip-let-syntax-keyword
          (strip-syntax-quote
           newsexp)))))
EOS
                  )

        @nendo.evalStr( <<EOS
(define (feedto)
  (error "=> (feedto) appeared outside cond or case."))
EOS
                      )

        @nendo.evalStr( <<EOS
(define cond
  (macro lst
    (letrec ((case-block
              (lambda (elem . elseblock)
                (%let ((condition (if (eq? 'else (car elem))
                                      true
                                      (car elem)))
                      (body      (if (null? (cdr elem))
                                     '(#t)
                                     (cdr elem)))
                      (tmpsym    (gensym)))
                  ;;(display "CONDITION") (print condition)
                  ;;(display "BODY")      (print body)
                  ;;(display "TMPSYM")    (print tmpsym)
                  (append
                   (if (eq? 'feedto (car body))
                       (cons 'if
                             (list
                              (list 'set! tmpsym condition)
                              (list (cadr body) tmpsym)))
                       (cons 'if
                             (list
                              condition
                              (cons 'begin body))))
                   (if (< 0 (length elseblock))
                       elseblock
                       '())))))
             (cond-iter
              (lambda (lst)
                (if (eq? 0 (length lst))
                    '()
                    (if (eq? 1 (length lst))
                        (case-block (car lst) '())
                        (case-block (car lst)
                                    (cond-iter (cdr lst))))))))
      (cond-iter lst))))
EOS
                      )

    expect(@nendo.evalStr( <<EOS
    (macroexpand '(define val 1))
EOS
                         )).to eq( "(define val 1)" )

    expect(@nendo.evalStr( <<EOS
    (macroexpand '(define (func1) (+ 1 1)))
EOS
                         )).to eq( "(define func1 (lambda () (+ 1 1)))" )

    expect(@nendo.evalStr( <<EOS
    (macroexpand '(define (func2 a) (+ a 1)))
EOS
                         )).to eq( "(define func2 (lambda (a) (+ a 1)))" )

    expect(@nendo.evalStr( <<EOS
    (macroexpand '
       (cond
        ((= 0 (% x 15))
         "FizzBuzz")
        ((= 0 (% x 3))
         "Fizz")
        ((= 0 (% x 5))
         "Buzz")
        (else
         x)))
EOS
                         )).to eq( "(if (= 0 (% x 15)) (begin \"FizzBuzz\") (if (= 0 (% x 3)) (begin \"Fizz\") (if (= 0 (% x 5)) (begin \"Buzz\") (if #t (begin x) ()))))" )

        @nendo.evalStr( <<EOS
(define let1
  (macro (var expr . body)
    (append
     (list '%let (list (list var expr)))
     body)))
EOS
                      )

        expect(@nendo.evalStr( <<EOS
    (macroexpand '
      (let1 x 5))
EOS
                             )).to eq( "(%let ((x 5)))")

        @nendo.evalStr( <<EOS
(define or
  (macro lst
    (letrec ((or-iter
              (lambda (lst)
                (cond
                 ((eq? 0 (length lst))
                  false)
                 ((eq? 1 (length lst))
                  (let1 sym (gensym)
                    (list 'let1 sym (car lst)
                          (list 'if sym sym false))))
                 (else
                  (let1 sym (gensym)
                    (list 'let1 sym (car lst)
                          (list 'if sym sym (or-iter (cdr lst))))))))))
      (or-iter lst))))
EOS
                      )

        @nendo.evalStr( <<EOS
(define and
  (macro lst
    (letrec ((and-iter
              (lambda (lst)
                (cond
                 ((eq? 0 (length lst))
                  true)
                 ((eq? 1 (length lst))
                  (car lst))
                 (else
                  (list 'if (list 'not (list 'eq? 'false (car lst)))
                        (and-iter (cdr lst))
                        'false))))))
      (and-iter lst))))
EOS
                      )

        expect(@nendo.evalStr( <<EOS
    (macroexpand '
      (or a b))
EOS
                             )).to eq("(%let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_11 a)) (if __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_11 __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_11 (%let ((__gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_12 b)) (if __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_12 __gensym__fb4e25e49e9fb4e46342224606faf2e3eabf1251_12 #f))))")

        expect(@nendo.evalStr( <<EOS
    (macroexpand '
      (and a b))
EOS
                             )).to eq("(if (not (eq? #f a)) b #f)")

        @nendo.evalStr( <<EOS
(define (apply proc . args)
  (if (null? args)
      (proc)
      ((lambda (lol)
         (apply1 proc (append (reverse (cdr lol)) (car lol))))
       (reverse args))))
EOS
                      )

        @nendo.evalStr( <<EOS
;; The following quasiquote macro is due to Eric S. Tiedemann. ( Imported from TinyScheme )
;;   Copyright 1988 by Eric S. Tiedemann; all rights reserved.
;;
;; Subsequently modified for initialize library for nendo: Kiyoka Nishiyama
(define quasiquote
 (macro (l)
   (letrec ((mcons
             (lambda (f l r)
               (if (and (pair? r)
                        (eq? (car r) 'quote)
                        (eq? (car (cdr r)) (cdr f))
                        (pair? l)
                        (eq? (car l) 'quote)
                        (eq? (car (cdr l)) (car f)))
                   (if (or (procedure? f) (number? f) (string? f))
                       f
                       (list 'quote f))
                   (if (eqv? l vector)
                       (apply l (eval r))
                       (list 'cons l r)
                       ))))

            (mappend
             (lambda (f l r)
               (if (or (null? (cdr f))
                       (and (pair? r)
                            (eq? (car r) 'quote)
                            (eq? (car (cdr r)) '())))
                   l
                   (list 'append l r))))
            (foo
             (lambda (level form)
               (cond ((not (pair? form))
                      (if (or (procedure? form) (number? form) (string? form))
                          form
                          (list 'quote form))
                      )
                     ((eq? 'quasiquote (car form))
                      (mcons form ''quasiquote (foo (+ level 1) (cdr form))))
                     (else (if (zero? level)
                               (cond ((eq? (car form) 'unquote) (car (cdr form)))
                                     ((eq? (car form) 'unquote-splicing)
                                      (%raise RuntimeError (+ "Error: Unquote-splicing wasn't in a list: " (write-to-string form))
                                             (sprintf "%s:%s outside list." (*FILE*) (*LINE*))))
                                     ((and (pair? (car form))
                                           (eq? (car (car form)) 'unquote-splicing))
                                      (mappend form (car (cdr (car form)))
                                               (foo level (cdr form))))
                                     (else (mcons form (foo level (car form))
                                                  (foo level (cdr form)))))
                               (cond ((eq? (car form) 'unquote)
                                      (mcons form ''unquote (foo (- level 1)
                                                                 (cdr form))))
                                     ((eq? (car form) 'unquote-splicing)
                                      (mcons form ''unquote-splicing
                                             (foo (- level 1) (cdr form))))
                                     (else (mcons form (foo level (car form))
                                                  (foo level (cdr form)))))))))))
     (foo 0 l))))

(define unquote
  (macro (lst)
    (%raise RuntimeError "Error: unquote appeared outside quasiquote" (sprintf "%s:%s outside quasiquote" (*FILE*) (*LINE*)))))

EOS
                      )

        @nendo.evalStr( <<EOS
(define lst '(10 20))
(list `,(car lst) 2 3)
        
EOS
                      )

        @nendo.evalStr( <<EOS
(define when
  (macro form
    `(if ,(car form) (begin ,@(cdr form)))))
EOS
                      )

        @nendo.evalStr( <<EOS
(define unless
  (macro form
    `(if (not ,(car form)) (begin ,@(cdr form)))))
EOS
                      )
               
        @nendo.evalStr( <<EOS
(define while
  (macro form
    (let1 sym (gensym)
      `(begin
	 (define ,sym
	   (lambda ()
	     (if ,(car form)
		 (begin ,@(cdr form)
			(,sym)))))
	 (,sym)))))
EOS
                      )
        @nendo.evalStr( <<EOS
;; named let supporting
(define let
  (macro lst
    ;; checking syntax
    (cond
     ((symbol? (car lst))
      ;; named let
      (when (or (< (length lst) 3)
                (not (list? (second lst))))
        (%raise SyntaxError
                (sprintf "named let requires (let name (bind-list) body ...) form  But got %s" (write-to-string (cons 'let lst)))
                (sprintf "%s:%s in named let form" (*FILE*) (*LINE*)))))
     (else
      (when (or (< (length lst) 2)
                (not (list? (first lst))))
        (%raise SyntaxError
                (sprintf "let requires (let (bind-list) body ...) form  But got %s" (write-to-string (cons 'let lst)))
                (sprintf "%s:%s in named let form" (*FILE*) (*LINE*))))))

    ;; expanding macro
    (if (symbol? (car lst))
        ;; named let
        `(letrec ((,(first lst)
                   (lambda ,(map
                             (lambda (x)
                               (first x))
                             (second lst))
                     ,@(cddr lst))))
           (,(first lst)
            ,@(map
               (lambda (x)
                 (second x))
               (second lst))))
           
        ;; trasform to internal let syntax (%let)
        `(%let ,@lst))))
EOS
                      )

        @nendo.evalStr( <<EOS
(define (%map-original proc . lists)
  (letrec ((result '())
           (%map-arg1
            (lambda (proc lst)
              (if (null? lst)
                  #t
                  (begin
                    (set! result
                          (cons (proc (car lst))
                                result))
                    (%map-arg1 proc (cdr lst)))))))
    (cond
     ((null? lists)
      (apply proc))
     ((eq? 1 (length lists))
      (%map-arg1 proc (car lists)) ;; tail call optimization version
      (reverse result))
     (else
      (if (null? (car lists))
          '()
          (let1 unz (apply unzip1-with-cdr lists)
            (let ((cars (car unz))
                  (cdrs (cdr unz)))
              (cons (apply proc cars)
                    (if (null? cdrs)
                        '()
                        (apply %map-original (cons proc cdrs)))))))))))
(define %map %map-original)
(define map         %map)

EOS
                      )

        @nendo.evalStr( <<EOS
(define (find pred lst)
  (let1 result (%filter pred lst)
    (if (null? result)
        #f
        (car result))))

(define (any pred lst)
  (let1 result (%filter-map pred lst)
    (if (null? result)
        #f
        (car result))))
EOS
                      )

        @nendo.evalStr( <<EOS
(define (%filter-original pred lst)
  (define result '())
  (define (%filter-arg1 proc lst)
    (if (null? lst)
        '()
        (let1 v (proc (car lst))
          (when v
            (set! result (cons (car lst) result)))
          (%filter-arg1 proc (cdr lst)))))

  (%filter-arg1 pred lst) ;; tail call optimization version
  (reverse result))
(define %filter %filter-original)
(define filter      %filter)
EOS
                      )

        @nendo.evalStr( <<EOS
;; ----------------------------------------
;; List utilities imported from TinyScheme
;; ----------------------------------------
;;
;; (do ((var init inc) ...) (endtest result ...) body ...)
;;
(define do
  (macro do-macro
    (apply (lambda (vars endtest . body)
             (%let ((do-loop (gensym)))
               `(letrec ((,do-loop
                          (lambda ,(%map (lambda (x)
                                          (if (pair? x) (car x) x))
                                        `,vars)
                            (if ,(car endtest)
                                (begin ,@(cdr endtest))
                                (begin
                                  ,@body
                                  (,do-loop
                                   ,@(%map (lambda (x)
                                            (cond
                                             ((not (pair? x)) x)
                                             ((< (length x) 3) (car x))
                                             (else (car (cdr (cdr x))))))
                                          `,vars)))))))
                  (,do-loop
                   ,@(%map (lambda (x)
                            (if (and (pair? x) (cdr x))
                                (car (cdr x))
                                '()))
                          `,vars)))))
           do-macro)))
EOS
                      )

        expect(@nendo.evalStr( <<EOS
(do ((i 0 (+ i 1))
     (j 0 (+ i j)))
    ((= i 10) j)
  j)
EOS
                             )).to eq("45")


        @nendo.evalStr( <<EOS
;; generic-member 
(define (generic-member cmp obj lst)
  (cond
    ((null? lst) #f)
    ((not (pair? lst)) #f)
    ((cmp obj (car lst)) lst)
    (else (generic-member cmp obj (cdr lst)))))

(define (memq obj lst)
     (generic-member eq? obj lst))
(define (memv obj lst)
     (generic-member eqv? obj lst))
(define (member obj lst)
     (generic-member equal? obj lst))

;; generic-assoc
(define (generic-assoc cmp obj alst)
     (cond
          ((null? alst) false)
          ((cmp obj (caar alst)) (car alst))
          (else (generic-assoc cmp obj (cdr alst)))))

(define (assq obj alst)
     (generic-assoc eq? obj alst))
(define (assv obj alst)
     (generic-assoc eqv? obj alst))
(define (assoc obj alst)
     (generic-assoc equal? obj alst))

(define (acons x y z) (cons (cons x y) z))

(define (assq-ref obj alst)
  (cond  ((assq obj alst)  => cdr)
         (else                nil)))
(define (assv-ref obj alst)
  (cond  ((assv obj alst)  => cdr)
         (else                nil)))
(define (assoc-ref obj alst)
  (cond  ((assoc obj alst)  => cdr)
         (else                nil)))

EOS
                      )

        @nendo.evalStr( <<EOS
(define (identifier? x)
  (symbol? x))
EOS
                      )
        
        @nendo.evalStr( <<EOS
(define (identifier=? use-env-x x use-env-y y)
  (eq? x y))
EOS
                      )

        @nendo.evalStr( <<EOS
(define (identifier->symbol id)
  (when (not (symbol? id))
    (error "Error: identifier->symbol requires only symbol"))
  id)
EOS
                      )

        @nendo.evalStr( <<EOS
;; readable code for nendo. (original code is chibi-scheme-0.3)
(define er-macro-transformer
  (lambda (f)
    (%syntax (expr use-env mac-env)
      (define (expander-main rename compare)
        (f expr rename compare))
      (define (_rename renames)
        (lambda (identifier)
          (let ([cell (assq identifier renames)])
            (if cell
                (cdr cell)
                ((lambda (name)
                   (set! renames (cons (cons identifier name) renames))
                   name)
                 (make-syntactic-closure mac-env '() identifier))))))
      (define (_compare x y)
        (identifier=? use-env x use-env y))
      
      (expander-main
       (_rename '())
       _compare))))
EOS
                      )

        @nendo.evalStr( <<EOS
;; explicit renameing macro transformer
;;   ported from chibi-scheme-0.3  by Kiyoka Nishiyama
(define ... '...)
(define-syntax syntax-rules
  (er-macro-transformer
   (lambda (expr rename compare)
     (when (not (pair? (cdr expr)))
       (error "syntax-rules requires: (syntax-rules (ellipses...) ..patterns..) form (1). but got: " expr))
     (when (not (or (null? (cadr expr)) (list? (cadr expr))))
       (error "syntax-rules requires: (syntax-rules (ellipses...) ..patterns..) form (2). but got: " expr))
     (when (> 3 (length expr))
       (error "syntax-rules requires: (syntax-rules (ellipses...) ..patterns..) form (3). but got: " expr))
     (let ((ellipse-specified? (identifier? (cadr expr)))
           (count 0)
           (_er-macro-transformer (rename 'er-macro-transformer))
           (_lambda (rename 'lambda))      (_let (rename 'let))
           (_begin (rename 'begin))        (_if (rename 'if))
           (_and (rename 'and))            (_or (rename 'or))
           (_eq? (rename 'eq?))            (_equal? (rename 'equal?))
           (_car (rename 'car))            (_cdr (rename 'cdr))
           (_cons (rename 'cons))          (_pair? (rename 'pair?))
           (_null? (rename 'null?))        (_expr (rename 'expr))
           (_rename (rename 'rename))      (_compare (rename 'compare))
           (_quote (rename 'syntax-quote)) (_apply (rename 'apply))
           (_append (rename 'append))      (_map (rename 'map))
           (_vector? (rename 'vector?))    (_list? (rename 'list?))
           (_lp (rename 'lp))              (_reverse (rename 'reverse))
           (_len (rename'len))             (_length (rename 'length))
           (_- (rename '-))   (_>= (rename '>=))   (_error (rename 'error))
           (_ls (rename 'ls)) (_res (rename 'res)) (_i (rename 'i))
           (_vector->list (rename 'vector->list))
           (_list->vector (rename 'list->vector))
           (_list (rename 'list)))
       (define ellipse (rename (if ellipse-specified? (cadr expr) '...)))
       (define lits (if ellipse-specified? (caddr expr) (cadr expr)))
       (define forms (if ellipse-specified? (cdddr expr) (cddr expr)))
       (define (next-v)
         (set! count (+ count 1))
         (rename (string->symbol (string-append "v__" (number->string count)))))
       (define (expand-pattern pat tmpl)
         (let lp ((p (cdr pat))
                  (x (list _cdr _expr))
                  (dim 0)
                  (vars '())
                  (k (lambda (vars)
                       (or (expand-template tmpl vars)
                           (list _begin #f)))))
           (let ((v (next-v)))
             (list
              _let (list (list v x))
              (cond
               ((identifier? p)
                (if (find (lambda (l) (compare p l)) lits)
                    (list _and (list _compare v (list _quote p)) (k vars))
                    (list _let (list (list p v)) (k (cons (cons p dim) vars)))))
               ((ellipse? p)
                (cond
                 ((not (null? (cddr p)))
                  (cond
                   ((not (list? (cddr p)))
                    (error "dotted ellipse" p))
                   ((find (lambda (x) (and (identifier? x) (compare x ellipse)))
                         (cddr p))
                    (error "multiple ellipses" p))
                   (else
                    (let ((len (length (cdr (cdr p)))))
                      `(,_let ((,_len (,_length ,v)))
                         (,_and (,_>= ,_len ,len)
                                (,_let ,_lp ((,_ls ,v)
                                             (,_i (,_- ,_len ,len))
                                             (,_res (,_quote ())))
                                  (,_if (,_>= 0 ,_i)
                                      ,(lp `(,@(cdr (cdr p)) ,(car p) ,(car (cdr p)))
                                           `(,_append ,_ls (,_reverse ,_res))
                                           dim
                                           vars
                                           k)
                                      (,_lp (,_cdr ,_ls)
                                            (,_- ,_i 1)
                                            (,_cons (,_car ,_ls) ,_res))))))))))
                 ((identifier? (car p))
                  (list _and (list _list? v)
                        (list _let (list (list (car p) v))
                              (k (cons (cons (car p) (+ 1 dim)) vars)))))
                 (else
                  (let* ((w (next-v))
                         (new-vars (all-vars (car p) (+ dim 1)))
                         (ls-vars (map (lambda (x)
                                         (rename
                                          (string->symbol
                                           (string-append
                                            (symbol->string
                                             (identifier->symbol (car x)))
                                            "-ls"))))
                                       new-vars))
                         (once
                          (lp (car p) (list _car w) (+ dim 1) '()
                              (lambda (_)
                                (cons
                                 _lp
                                 (cons
                                  (list _cdr w)
                                  (map (lambda (x l)
                                         (list _cons (car x) l))
                                       new-vars
                                       ls-vars)))))))
                    (list
                     _let
                     _lp (cons (list w v)
                               (map (lambda (x) (list x '())) ls-vars))
                     (list _if (list _null? w)
                           (list _let (map (lambda (x l)
                                             (list (car x) (list _reverse l)))
                                           new-vars
                                           ls-vars)
                                 (k (append new-vars vars)))
                           (list _and (list _pair? w) once)))))))
               ((pair? p)
                (list _and (list _pair? v)
                      (lp (car p)
                          (list _car v)
                          dim
                          vars
                          (lambda (vars)
                            (lp (cdr p) (list _cdr v) dim vars k)))))
               ((vector? p)
                (list _and
                      (list _vector? v)
                      (lp (vector->list p) (list _vector->list v) dim vars k)))
               ((null? p) (list _and (list _null? v) (k vars)))
               (else (list _and (list _equal? v p) (k vars))))))))
       (define (ellipse-escape? x) (and (pair? x) (compare ellipse (car x))))
       (define (ellipse? x)
         (and (pair? x) (pair? (cdr x)) (compare ellipse (cadr x))))
       (define (ellipse-depth x)
         (if (ellipse? x)
             (+ 1 (ellipse-depth (cdr x)))
             0))
       (define (ellipse-tail x)
         (if (ellipse? x)
             (ellipse-tail (cdr x))
             (cdr x)))
       (define (all-vars x dim)
         (let lp ((x x) (dim dim) (vars '()))
           (cond ((identifier? x)
                  (if (find (lambda (lit) (compare x lit)) lits)
                      vars
                      (cons (cons x dim) vars)))
                 ((ellipse? x) (lp (car x) (+ dim 1) vars))
                 ((pair? x) (lp (car x) dim (lp (cdr x) dim vars)))
                 ((vector? x) (lp (vector->list x) dim vars))
                 (else vars))))
       (define (free-vars x vars dim)
         (let lp ((x x) (free '()))
           (cond
            ((identifier? x)
             (if (and (not (memq x free))
                      (cond ((assq x vars) => (lambda (cell) (>= (cdr cell) dim)))
                            (else #f)))
                 (cons x free)
                 free))
            ((pair? x) (lp (car x) (lp (cdr x) free)))
            ((vector? x) (lp (vector->list x) free))
            (else free))))
       (define (expand-template tmpl vars)
         (let lp ((t tmpl) (dim 0))
           (cond
            ((identifier? t)
             (cond
              ((find (lambda (v) (compare t (car v))) vars)
               => (lambda (cell)
                    (if (<= (cdr cell) dim)
                        t
                        (error "too few ...'s"))))
              (else
               (list _rename (list _quote t)))))
            ((pair? t)
             (cond
              ((ellipse-escape? t)
               (if (pair? (cdr t))
                   (if (pair? (cddr t)) (cddr t) (cadr t))
                   (cdr t)))
              ((ellipse? t)
               (let* ((depth (ellipse-depth t))
                      (ell-dim (+ dim depth))
                      (ell-vars (free-vars (car t) vars ell-dim)))
                 (if (null? ell-vars)
                     (error "too many ...'s")
                     (let* ((once (lp (car t) ell-dim))
                            (nest (if (and (null? (cdr ell-vars))
                                           (identifier? once)
                                           (eq? once (car vars)))
                                      once ;; shortcut
                                      (cons _map
                                            (cons (list _lambda ell-vars once)
                                                  ell-vars))))
                            (many (do ((d depth (- d 1))
                                       (many nest
                                             (list _apply _append many)))
                                      ((= d 1) many))))
                       (if (null? (ellipse-tail t))
                           many ;; shortcut
                           (list _append many (lp (ellipse-tail t) dim)))))))
              (else (list _cons (lp (car t) dim) (lp (cdr t) dim)))))
            ((vector? t) (list _list->vector (lp (vector->list t) dim)))
            ((null? t) (list _quote '()))
            (else t))))
       (list
        _er-macro-transformer
        (list _lambda (list _expr _rename _compare)
              (cons
               _or
               (append
                (map
                 (lambda (clause) (expand-pattern (car clause) (cadr clause)))
                 forms)
                (list (list _error "no expansion for"
                            (list (rename 'strip-syntactic-closures) _expr)))))))))))

(define-syntax %syntax-rules syntax-rules)
EOS
                      )

        @nendo.evalStr( <<EOS
(define-syntax raise
  (syntax-rules ()
    ((raise)
     (error "raise requires (raise exception message [backtrace-str])"))
    ((raise exc)
     (%raise exc 
             (sprintf "%s:%s raised %s" (*FILE*) (*LINE*) exc)
             (sprintf "%s:%s raised %s" (*FILE*) (*LINE*) exc)))
    ((raise exc mes)
     (%raise exc mes (sprintf "%s:%s raised %s" (*FILE*) (*LINE*) exc)))
    ((raise exc mes backtrace)
     (%raise exc mes backtrace))))
EOS
                      )


        @nendo.evalStr( <<EOS
(define-syntax %guard-var
  (syntax-rules (=> ...)
    ((%guard-var (var clauses ...))
     var)))
EOS
                      )

  end
end
