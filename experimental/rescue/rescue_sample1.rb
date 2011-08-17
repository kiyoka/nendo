#!ruby

begin
  [1] + 1
rescue => var
  puts "class of `var' is #{var.class}"
end
