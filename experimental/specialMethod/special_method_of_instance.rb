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

  def addSpecialMethods()
    @binding = binding
    eval( "def self.funcEE( dummy ) while true \n p 'funcEE' \n end  end", binding )
    eval( "@_funcEE = self.method( :funcEE ).to_proc", binding )
  end

  def callSpecialMethods()
    @_funcEE.call( 200 )
  end
end

e = Evaluator.new
e.addSpecialMethods()
e.callSpecialMethods()




