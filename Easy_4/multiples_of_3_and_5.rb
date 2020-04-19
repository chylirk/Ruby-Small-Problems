# i: integer greater than 1
# o: sum of multiples of 3 or 5 between 1 and the input integer
# e: 98 => (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20)
# d: integer, range, array, integer
# a: integer => range from 1 to input
# a: range filtered for multiples of 3 or 5
# a: reduce array with sum
# c:

def multisum(num)
  (1..num).filter { |i| i % 3 == 0 || i % 5 == 0 }.reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168