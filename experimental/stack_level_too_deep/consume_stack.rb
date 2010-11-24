#!/usr/local/bin/ruby

require 'pp'

class StackTest
  def initialize
    @h = Hash.new
    h[ :func1 ] = 0
    h[ :func2 ] = 0
    h[ :func3 ] = 0
    @cnt = 0
  end
  def func1
    h[ :func1 ] += 1
    @cnt += 1
    if 0 == (@cnt % 2)
      func2
    else
      func3
    end
  end
  
  def func2
    h[ :func2 ] += 1
    func3
  end
  
  def func3
    h[ :func3 ] += 1
    func1
  end

  attr_reader :h
end

st = StackTest.new
begin
  st.func1()
rescue SystemStackError => e
  pp e
  pp st.h
  raise e
ensure
end
