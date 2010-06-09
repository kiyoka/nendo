#!/usr/local/bin/ruby
#
# using calcc for name let 
#
require 'continuation'

_lambda = lambda { |_loop|
  _loop = Proc.new { |arg1,arg2|
    # {{{
    update_loop = lambda { |_arg1,_arg2| arg1 = _arg1 ; arg2 = _arg2 }
    cont = nil
    callcc { |_cont| cont = _cont }
    # }}}    
    if arg1 < 1000
      _lambda2 = lambda {|x|
        update_loop.call( arg1+1, arg2+1 ); cont.call( )
      }
      _lambda2.call( "dummy" )
    else
      printf( "arg1,arg2 = (%d,%d)\n", arg1, arg2 )
    end
  }
  _loop.call( 1, 2 )
}
_lambda.call( nil )
