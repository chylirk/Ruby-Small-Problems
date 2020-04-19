# i: integer - number of digits in the number
# o: index of the first Fibonacci number with that number of digits
#    
# e: 
#     (2) == 7
#     (3) == 12
#     (10) == 45
#     (100) == 476
#     (1000) == 4782
#     (10000) == 47847
# d: integer, array
# a: 
#    loop
#        generate a fibonacci number starting from 0?
#        convert to string, convert to array, count length (# of digits)
#        check if length is greater than input number
#        if so, the loop # is the answer, if not, repeat
# c:

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number-1) + fibonacci(number-2)
  end
end

def find_fibonacci_index_by_length(digit_count)
  counter = 1
  loop do
    puts "current size: #{fibonacci(counter).to_s.chars.size}"
    break if fibonacci(counter).to_s.chars.size >= digit_count
    counter += 1
  end
  counter
end

puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(3) == 12
puts find_fibonacci_index_by_length(10)
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847