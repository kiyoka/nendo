#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# optimized_func.rb  -  "optimized functions for nendo"
#
#   Copyright (c) 2009-2014  Kiyoka Nishiyama  <kiyoka@sumibi.org>
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
module Nendo

  # Translate S expression to Ruby expression and Evaluation
  class Evaluator
    def optimizedFunc( origname, rubysym, args )
      case origname
      when '+'
        case args.length
        when 0
          [ "#{rubysym}_ARGS0()" ]
        when 1
          ["( ", args[0][0]," ) "]
        when 2
          ["( ", args[0][0], "+", args[1][0], " ) "]
        when 3
          ["( ", args[0][0], "+", args[1][0], "+", args[2][0], " ) "]
        else
          false
        end
      when '-'
        case args.length
        when 0
          [ "#{rubysym}_ARGS0()" ]
        when 1
          ["( - ", args[0][0]," ) "]
        when 2
          ["( ", args[0][0], "-", args[1][0], " ) "]
        when 3
          ["( ", args[0][0], "-", args[1][0], "-", args[2][0], " ) "]
        else
          false
        end
      when '*'
        case args.length
        when 0
          [ "#{rubysym}_ARGS0()" ]
        when 1
          ["( ", args[0][0]," ) "]
        when 2
          ["( ", args[0][0], "*", args[1][0], " ) "]
        when 3
          ["( ", args[0][0], "*", args[1][0], "*", args[2][0], " ) "]
        else
          false
        end
      when 'car', 'cdr', 'not', 'length', 'null?', 'reverse', 'uniq',
        'write', 'write-to-string', 'display', 'print',
        'procedure?', 'macro?', 'symbol?', 'keyword?', 'syntax?', 'core-syntax?',
        'pair?', '%list?', 'integer?', 'number?', 'string?', 'macroexpand-1',
        'to-s', 'to-i', 'nil?', 'to-list', 'to-arr',
        'intern', 'string->symbol', 'symbol->string', 'read-from-string'
        raise ArgumentError, "Error: #{origname} requires 1 argument. "  unless 1 == args.length
        [ "#{rubysym}(",              args[0],         ")" ]
      when ">", ">=", "<", "<="
        ["( ", args[0][0], origname, args[1][0], " ) "]
      when 'cons', '=', "eq?", "equal?", 'set-car!', 'set-cdr!'
        raise ArgumentError, "Error: #{origname} requires 2 arguments. " unless 2 == args.length
        [ "#{rubysym}(",            args[0], args[1], ")" ]
      else
        false
      end
    end
  end
end
