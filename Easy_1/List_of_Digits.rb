#write method, takes one argument (pos integer), returns list of digits in that number
#Problem
# => inputs - positive integer
# => outputs - list of digits (array?)
#Examples
#  puts digit_list(12345) == [1, 2, 3, 4, 5] # => true
#  puts digit_list(7) == [7] # => true
#  puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
#  puts digit_list(444) == [4, 4, 4] # => true
#Data Structure
# => Output Array (based on examples)
#Algorithm
# => convert to string and then split? 
# => or modulo each place?
#C

def digit_list(number)
  list = number.to_s.split('').map { |i| i.to_i }
end

puts digit_list(1234) == [1, 2, 3, 4]