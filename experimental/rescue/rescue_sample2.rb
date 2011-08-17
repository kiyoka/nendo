#!ruby

def func1( no )
  puts "no : " + no.to_s
  begin
    case no
    when 1
      unknown_var
    when 2
      [1] + 1
    when 3
      raise RuntimeError
    end
  rescue => var
    if var.is_a? NameError
      puts "[[NameError]]"
    else
      puts "exception is #{var.class}"
    end
  end
end


func1( 1 )
func1( 2 )
func1( 3 )

