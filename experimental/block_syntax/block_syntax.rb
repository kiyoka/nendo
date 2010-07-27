#!/usr/local/bin/ruby

arr = [6,2,8,9,4,3,100,50]


print "arr.sort => \n  "
p arr.sort

print "arr.sort {...} => \n  "
p arr.sort { |a,b|
  if a <= b
    1
  else
    -1
  end
}

print "arr.sort( &Proc.new {...} ) => \n  "
p arr.sort( &
            Proc.new { |a,b|
              if a <= b
                1
              else
                -1
              end
            } )




