#!/usr/local/bin/ruby
#
# non tail recursion optimization code.
#   => tail_recursion_normal.rb:X: stack level too deep (SystemStackError)
#

def printCounter( count )
  m = count % 1000
  if 0 == m 
    printf( "count = %6d\n", count )
  end
  count
end  

def main
  count = 0
  @_simple_loop = lambda {|dummy1|
    printCounter( count )
    count += 1
    if count < 10000
      @_simple_loop.call(nil)
    end
  }
  @_simple_loop.call(nil)
end

main

