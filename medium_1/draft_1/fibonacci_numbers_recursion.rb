# write a recursive method that computes the nth Fibonacci #
# where nth is an argument to the method

# recursive:
#    calls itself at least once
#    has a condition that stops the recursion
#    uses the result return by themselves
#    ex. def sum(n)
#          return 1 if n == 1
#          n + sum(n-1)
#        end
#
# i: an integer (n)
# o: an integer -- the nth # in the Fibonacci sequence
#    Fibonacci sequence:
#      1 + 1 = 2
#      1 + 2 = 3
#      2 + 3 = 5
#      ...
#    F(n) = F(n-1) + F(n-2) where n > 2
# e: 
# fibonacci(1) == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(12) == 144
# fibonacci(20) == 6765
#
# d:
#    integer => passed as an argument to a recursive method => integer
# a: addition
#
# before I write any pseudo-code, I'm going to check the Fib seq. for patterns
#
# n: number
# 1: 1
# 2: 1
# 3: 2
# 4: 3
# 5: 5
#
# so, if n is less than or requal to n, then return 1
# if n == 3, return F(2) + F(1) == 2
# if n == 2, return F(1) == 1
# if n == 1, return 1
# if n == 4, return F(3) + F(2) == F(2) + F(1) + F(1) = 3 * F(1) == 3
# if n == 5, return F(4) + F(3)
#     == F(3) + F(2) + F(2) + F(1)
#     == F(2) + F(1) + F(1) + F(1) + F(1)
#     == 5 * F(1)
# c:

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
