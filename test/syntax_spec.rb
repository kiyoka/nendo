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
    @nendo.evalStr( "(define a let)" ).should       match( /Nendo::LispCoreSyntax/ )
    @nendo.evalStr( "(eq?    a let)" ).should       == '#t'
    @nendo.evalStr( "(define a letrec)" ).should    match( /Nendo::LispCoreSyntax/ )
    @nendo.evalStr( "(eq?    a letrec)" ).should    == '#t'
    @nendo.evalStr( "(define a set!)" ).should      match( /Nendo::LispCoreSyntax/ )
    @nendo.evalStr( "(eq?    a set!)" ).should      == '#t'
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
    @nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'aaaa   )" ).should                  match( /_gensym_/ )
    @nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'tmp    )" ).should                  match( /_gensym_/ )
    @nendo.evalStr( "(define name (make-syntactic-closure (global-variables) '() 'tmp ))" ).should       match( /_gensym_/ )
    @nendo.evalStr( "name" ).should                                                                      match( /_gensym_/ )
    @nendo.evalStr( "(make-syntactic-closure (global-variables) '() 'new_global_var)" ).should           match( /_gensym_/ )
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
    @nendo.evalStr( " " +
                    "(define-syntax my-or" +
                    "  (er-macro-transformer" +
                    "   (lambda (expr rename compare)" +
                    "     (cond ((null? (cdr expr)) #f)" +
                    "           ((null? (cddr expr)) (cadr expr))" +
                    "           (else" +
                    "            (list (rename 'let) (list (list (rename 'tmp) (cadr expr)))" +
                    "                  (list (rename 'if) (rename 'tmp)" +
                    "                        (rename 'tmp)" +
                    "                        (cons (rename 'my-or) (cddr expr)))))))))" +
                    "my-or" ).should    match( /Nendo::LispSyntax/ )
    @nendo.evalStr( "(my-or 1 2)" ).should                  ==  '1'
    @nendo.evalStr( "(my-or #f 100 200)" ).should           ==  '100'
    @nendo.evalStr( "(my-or #f #f #f #f 500)" ).should      ==  '500'
    @nendo.evalStr( "(my-or #f #f #f #f #f)" ).should       ==  '#f'

    @nendo.evalStr( " " +
                    "(define-syntax my-and" +
                    "  (er-macro-transformer" +
                    "   (lambda (expr rename compare)" +
                    "     (cond ((null? (cdr expr)))" +
                    "           ((null? (cddr expr)) (cadr expr))" +
                    "           (else (list (rename 'if) (cadr expr)" +
                    "                       (cons (rename 'my-and) (cddr expr))" +
                    "                       #f))))))" +
                    "my-and" ).should    match( /Nendo::LispSyntax/ )
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
    @nendo.evalStr( " " +
                    "(define-syntax nil!" +
                    "  (syntax-rules ()" +
                    "    ((_ x)" +
                    "     (set! x '()))))" +
                    "nil!" ).should    match( /Nendo::LispSyntax/ )
    @nendo.evalStr( "(define a 1)  a" ).should                 ==  '1'
    @nendo.evalStr( "(nil! a)      a" ).should                 ==  '()'
    @nendo.evalStr( "(set! a 2)    a" ).should                 ==  '2'
    @nendo.evalStr( "(nil! a)      a" ).should                 ==  '()'
    @nendo.evalStr( " " +
                    "(define-syntax test-syntax" +
                    "  (syntax-rules ()" +
                    "    ((_ a)" +
                    "     (list a))" +
                    "    ((_ a b)" +
                    "     (list a (list b)))" +
                    "    ((_ a b c ...)" +
                    "     (list a (list b (list c ...))))))" +
                    "test-syntax" ).should    match( /Nendo::LispSyntax/ )
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
  end
end

describe Nendo, "When use let-syntax and letrec-syntax (1)" do
  before do
    @nendo = Nendo::Core.new(true,true)
    @nendo.loadInitFile
  end
  it "should" do
#    @nendo.evalStr( " " +
#           "(macroexpand" +
#           "  '(%lexical-syntax ((nil!" +
#           "     (syntax-rules ()" +
#           "       ((_ x)" +
#           "        (set! x '())))))" +
#           "     (nil! aa))) " ).should == ""
#    @nendo.evalStr( " " +
#           "(define aa 100) " +
#           "(%lexical-syntax ((nil!" +
#           "   (syntax-rules ()" +
#           "     ((_ x)" +
#           "      (set! x '())))))" +
#           "   (nil! aa)) " +
#           "aa" ).should == "()"
#    @nendo.evalStr( " " +
#           "(let ()" +
#           "  (%lexical-syntax ()" +
#           "    (define internal-def 'ok)" +
#           "  internal-def))" +
#           " " ).should == "ok"
  end
end

describe Nendo, "When use let-syntax and letrec-syntax (2)" do
  before do
    @nendo = Nendo::Core.new(true,true)
    @nendo.loadInitFile
  end
  it "should" do

#    @nendo.evalStr( " " +
#           "(let ()" +
#           "  (%lexical-syntax ((a (syntax-rules () ((_ ?x) (+ ?x 8))))" +
#           "                    (b (syntax-rules () ((_ ?x) (- ?x 8)))))" +
#           "    (list (a 7) (b 8))))" ).should == "(15 0)"

#    @nendo.evalStr( " " +
#           "(let ()" +
#           "  (%lexical-syntax ((a (syntax-rules () ((_ ?x) (+ ?x 8))))" +
#           "                    (b (syntax-rules () ((_ ?x) (- ?x 8)))))" +
#           "    (%lexical-syntax ((aa (syntax-rules () ((_ ?x) (b 2))))" +
#           "                      (bb (syntax-rules () ((_ ?x) (a 3)))))" +
#           "      (list (aa 7) (bb 8)))))" ).should == "(-6 11)"

    @nendo.evalStr( " " +
           "(let ()" +
           "  (%lexical-syntax ((a (syntax-rules () ((_ ?x) (+ ?x 8))))" +
           "                    (b (syntax-rules () ((_ ?x) (- ?x 8)))))" +
           "    (%lexical-syntax ((a (syntax-rules () ((_ ?y) (b 2))))" +
           "                      (b (syntax-rules () ((_ ?y) (a 3)))))" +
           "      (list (a 7) (b 8)))))" ).should == "(-6 11)"


#    @nendo.evalStr( " " +
#           "(let ((x 'outer))" +
#           "  (%lexical-syntax ((m (syntax-rules () ((m) x))))" +
#           "    (let ((x 'inner))" +
#           "      (m))))" ).should == "outer"

  end
end

