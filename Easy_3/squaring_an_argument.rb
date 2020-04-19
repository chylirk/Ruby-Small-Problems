def multiply(num1, num2)
  num1.to_i * num2.to_i
end

def square(num)
  multiply(num, num)
end

puts square(5) == 25
puts square(-8) == 64