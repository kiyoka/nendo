#!/usr/local/bin/ruby

_lambda = lambda { |_loop|
  _loop = Proc.new { |arg1,arg2|
    if arg1 < 1000
      _lambda2 = lambda {|x|
        _loop.call( arg1+1, arg2+1 )
      }
      _lambda2.call( "dummy" )
    else
      printf( "arg1,arg2 = (%d,%d)\n", arg1, arg2 )
    end
  }
  _loop.call( 1, 2 )
}
_lambda.call( nil )


