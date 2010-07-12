#!/usr/local/bin/ruby
#
#
# Example of special method of an instance
#

module BuiltInFunctions
  def funcB( dummy )
    p "funcB"
  end
end

class Evaluator
  include BuiltInFunctions
  def funcE( dummy )
    p "funcE"
  end

  def test1
    funcB( 100 )
    funcE( 200 )
  end

  def test2
    funcEdash( 300 )
  end
end

e = Evaluator.new
e.test1

def e.funcEdash( dummy )
  p "funcEdash"
end

e.test2


