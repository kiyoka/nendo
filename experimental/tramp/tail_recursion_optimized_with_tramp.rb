#!/usr/local/bin/ruby
#
# tail recursion optimization with trampline and DelayedCallPacket
#

class DelayedCallPacket
  def initialize( _proc, _arg1 )
    @proc = _proc
    @arg1 = _arg1
  end

  def call
    @proc.call( @arg1 )
  end
end

def trCall( result )
  while result.is_a? DelayedCallPacket
    result = result.call()
  end
  result
end

def printCounter( count )
  m = count % 10000
  if 0 == m 
    printf( "count = %6d\n", count )
  end
  count
end  


def main
  count = 0
  @_simple_loop = lambda {|dummy1|
    trCall( printCounter( count ))
    count += 1
    if count < 100000
      DelayedCallPacket.new( @_simple_loop, nil )
    end
  }
  trCall( @_simple_loop.call(nil) ) 
end

main

