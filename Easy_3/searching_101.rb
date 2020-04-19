# P
# input: 6 numbers from user
# output: string saying whether or not the
# 6th number appears in the first five
# E
# 25, 15, 20, 17, 23, 17 => "The number 17 appears in [25, 15, 20, 17, 23]."
# Edge cases - nil, null, non-integer (array, hash)
# D - string, array => string interpolation
# A - push, <<, include?
# C

def prompt(message)
  puts "==> #{message}"
end

INPUT_NUMBERS = %w(1st 2nd 3rd 4th 5th last).freeze

counter = 0

test_array = []

test_number = 0

loop do
  prompt("Enter the #{INPUT_NUMBERS[counter]} number:")
  input_number = gets.chomp.to_i

  test_number = input_number if counter == 5

  break if counter == 5

  test_array << input_number

  counter += 1
end

if test_array.include?(test_number)
  puts "The number #{test_number} appears in #{test_array}"
else
  puts "The number #{test_number} does not appear in #{test_array}"
end
