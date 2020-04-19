# i: Integer (n)
# o: Integer - last digit of the nth Fibonacci #
# e: 
# fibonacci_last(15) == 0  
# fibonacci_last(20) == 5
# fibonacci_last(100) == 5 
# fibonacci_last(100_001) == 1 
# fibonacci_last(1_000_007) == 3 
# fibonacci_last(123456789) == 4
# d: Integer => Integer => Array
# a:
#    Use previous method to get nth Fibonacci number
#    Call digits method on that number
#    The first element in the result array is the last digit
# c:
def fibonacci(n)
  num1, num2 = 1, 1
  counter = 2
  loop do
    break if counter >= n
    num2, num1 = num2 + num1, num2
    counter += 1
  end
  num2
end

def fibonacci_last_digit(n)
  num = fibonacci(n)
  num.digits[0].to_i
end

# Part 2
# apply the logic of the fibonacci method to the fibonacci last
# i.e. return fibonacci_last(n-1)
#      and add it to the result of fibonacci_last(n-2)
#
#      F(1) = 1, flast(1) = 1
#      F(5) = 5, flast(5) = 5
#      F(10) = 55, flast(55) = 5#
# I have to insert the 'last_digit' logic into the fibonacci logic
# num2 = last_digit(num2 + num1)

def last_digit(n)
  n.digits[0]
end

def fibonacci_last(n)
  n1, n2 = 1, 1
  counter = 2
  loop do
    break if counter >= n
    n2, n1 = last_digit(n2+n1), n2
    counter += 1
  end
  n2
end

puts fibonacci_last(15) == 0  
puts fibonacci_last(20) == 5
puts fibonacci_last(100) == 5 
puts fibonacci_last(100_001) == 1 
puts fibonacci_last(1_000_007) == 3 
puts fibonacci_last(123456789) == 4
