#!/usr/local/bin/ruby

# takeuchi function ( tarai mawashi bench )
class RubyBenchmarkCode
  def tak( x, y, z )
    if y >= x
      y
    else
      tak( tak( x-1, y, z ),
           tak( y-1, z, x ),
           tak( z-1, x, y ))
    end
  end
end
