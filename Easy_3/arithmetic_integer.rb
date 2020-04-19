# i: two positive integers
# o: result of the operations on those two numbers
# operations = [addition, subtraction, product, quotient, remainder, power]
# don't need to validate the input
# E:
# 1st number = 23
# 2nd number = 17
# 23 + 17 = 40
# 23 - 17 = 6
# 23 * 17 = 391
# 23 / 17 = 1
# 23 % 17 = 6
# 23 ** 17 = ...
# D: integers, string interpolation
# A: operations
# C:

OPERATIONS = %w(+ - * / % **).freeze

def perform_operations(first_number, second_number)
  a = first_number.to_i
  b = second_number.to_i
  output_array = []
  output_array << a + b
  output_array << a - b
  output_array << a * b
  output_array << a / b
  output_array << a % b
  output_array << a**b

  output_array
end

def prompt(message)
  puts "==> #{message}"
end

prompt 'Enter the first number:'
num1 = gets.chomp

prompt 'Enter the second number:'
num2 = gets.chomp

result_array = perform_operations(num1, num2)

OPERATIONS.each_with_index do |val, index|
  prompt "#{num1} #{val} #{num2} = #{result_array[index]}"
end
