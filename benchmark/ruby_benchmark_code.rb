#!/usr/local/bin/ruby

class VersionCheck
  def isJRuby()
    defined? JRUBY_VERSION
  end
end


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

  def tak2( x, y, z )
    @inner_tak = Proc.new { |_x,_y,_z|
      if ( _y >= _x )
        _y
      else
        @inner_tak.call(
                        @inner_tak.call( _x-1, _y, _z ),
                        @inner_tak.call( _y-1, _z, _x ),
                        @inner_tak.call( _z-1, _x, _y ))
      end
    }
    @inner_tak.call( x, y, z )
  end

  def tak3( x, y, z )
    @inner_minus = Proc.new { |_a,_b|
      _a - _b
    }
    @inner_le  = Proc.new { |_a,_b|
      _a >= _b
    }
    @inner_tak = Proc.new { |_x,_y,_z|
      if ( @inner_le.call( _y, _x ))
        _y
      else
        @inner_tak.call(
                        @inner_tak.call( @inner_minus.call(_x,1), _y, _z ),
                        @inner_tak.call( @inner_minus.call(_y,1), _z, _x ),
                        @inner_tak.call( @inner_minus.call(_z,1), _x, _y ))
      end
    }
    @inner_tak.call( x, y, z )
  end

  def fact( n )
    if 0 == n
      1
    else
      n * fact( n - 1 )
    end
  end

end
