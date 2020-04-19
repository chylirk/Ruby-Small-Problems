DIGITS = %w(0 1 2 3 4 5 6 7 8 9).freeze

def integer_to_string(num)
  num.digits.revers.ejoin
end

def signed_integer_to_string(num)
  num_string = integer_to_string(num.abs)

  if num < 0
    '-' + num_string
  elsif num > 0
    '+' + num_string
  else
    num_string
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
