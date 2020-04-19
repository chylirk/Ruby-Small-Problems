# i: Integer (n)
# o: nth digit of Fibonacci sequence
# e: fibonacci(20) == 6765
#    fibonacci(100) == 354224848179261915075
# d: Integer => Integer
#
# a: 
# Can it be done with a loop?
# like, set a result
# add the result to the result
# increment a counter until it reaches n
# the result is num2
# num1: 1
# num2: 1

# num2, num1 = num2 + num1, num2

# num2: 2
# num1: 1

# num2, num1 = num2 + num1, num2

# num2: 3
# num1: 2
#
def fibonacci(n)
  num1 = 1
  num2 = 1
  counter = 2
  loop do
    break if counter >= n
    num2, num1 = num2 + num1, num2
    counter += 1
  end

  num2
end

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
