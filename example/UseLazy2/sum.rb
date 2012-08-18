#!/usr/bin/env ruby

def main()
  open( "nums.txt" ){|f|
    lines = f.lines.lazy
    total = lines.inject( 0 ) {|result,num|
      result + num.to_i
    }
    puts "sum = #{total}"
  }
end

main()
