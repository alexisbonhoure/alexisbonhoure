#implement a method calculator

def calculator(x, y, operator)
  case operator
  when "+"
    result = x + y
  when "-"
    result = x - y
  when "*"
      result = x * y
  when "/"
    result = first / y
  else
    puts "Wrong operator"
  end
  return result

end
