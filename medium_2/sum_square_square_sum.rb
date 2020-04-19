# i: integer - first n positive integers
# o: integer - difference between square of sum of first n positive integers
#                                 and sum of squares of 1st n pos integers
# e:
# sum_square_difference(3) == 22
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150
# d: integer => array => integer, integer => integer
# a:
#    use passed intger to get an array from 1 to the integer
#    a = calculate the sum of the array, then square it
#    b = square every element of the array, then sum it
#    c = a - b
# c:

def sum_square_array(arr)
  arr.reduce(:+) ** 2
end

def square_sum_array(arr)
  arr.map { |x| x ** 2 }.reduce(:+)
end

def sum_square_difference(int)
  array = (1..int).to_a
  sum_square_array(array) - square_sum_array(array)
end

puts sum_square_difference(3) == 22
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
