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
    @nendo.evalStr( "(make-syntactic-closure %macro-env-snapshot '() 'print  )" ).should    == '/nendo/macroenv/print'
    @nendo.evalStr( "(make-syntactic-closure %macro-env-snapshot '() 'if     )" ).should    == '/nendo/macroenv/if'
    @nendo.evalStr( "(make-syntactic-closure %macro-env-snapshot '() 'lambda )" ).should    == '/nendo/macroenv/lambda'
  end
end

describe Nendo, "when use core syntax " do
  before do
    @nendo = Nendo::Core.new()
    @nendo.loadInitFile
    @nendo.loadInitFile  # to self optimizing.  The init.nnd file will be loaded twice, so `map' can be optimized on second loading phase.
  end
  it "should" do
    @nendo.evalStr( "(if                        #t 1 2)" ).should    == '1'
    @nendo.evalStr( "(if                        #f 1 2)" ).should    == '2'
    @nendo.evalStr( "(/nendo/macroenv/if        #t 1 2)" ).should    == '1'
    @nendo.evalStr( "(/nendo/macroenv/if        #f 1 2)" ).should    == '2'
    @nendo.evalStr( "(begin                      1 2 3)" ).should    == '3'
    @nendo.evalStr( "(/nendo/macroenv/begin      1 2 3)" ).should    == '3'
  end
end
