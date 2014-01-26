#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# out_of_module.rb  -  "Monkey patches to Ruby's standard libraries for nendo"
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


class Symbol
  if RUBY_VERSION >= "2.1.0"
    def setLispToken( token )
    end
    def sourcefile
      ""
    end
    def lineno
      1
    end
  else
    def setLispToken( token )
      @token = token
    end
    def sourcefile
      @token ? @token.sourcefile : ""
    end
    def lineno
      @token ? @token.lineno : 1
    end
  end
end

class Array
  def to_list( lastAtom = false, value = Nendo::Nil.new )
    if 0 == self.length
      Nendo::Cell.new()
    else
      cells = self.map { |x|
        Nendo::Cell.new( x )
      }
      ptr = cells.pop
      ptr.cdr = value  if lastAtom
      cells.reverse.each { |x|
        x.cdr = ptr
        ptr = x
      }
      return ptr
    end
  end
end

class Hash
  def to_list
    arr = Array.new
    self.each_pair { |key,val|
      arr << Nendo::Cell.new( key, val )
    }
    arr.to_list
  end
end
