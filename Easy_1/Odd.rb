# Write a method that takes one integer argument (pos, neg, zero)
# Returns true if absolute value is odd
# Assume the argument is a valid integer value

#Problem
#    Inputs: integer value, pos/neg/zero
#    Outputs: true, false, nil?
#Examples
#    puts is_odd?(2) => false
#    puts is_odd?(5) => true
#    puts is_odd?(-17) => true
#    puts is_odd?(0) => false
#Data Structures
#    Integers, Boolean
#Algorithm
#    Modulo - Odd if %2 != 0
#C

def is_odd?(number)
  number % 2 != 0
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)