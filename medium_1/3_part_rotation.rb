# i: integer
#        do not have to handle multiple zeros
# o: maximum rotation of that argument
# e:
# max_rotation(735291) == 321579
# d: integer => array (transform) => integer
# a:
#    take a number, rotate the entire number to the left
#        call rotate_rightmost_digits (arr, arr.size)
#    rotate the number again, but not the leftmost digit
#        call rotate_rightmost_digits (arr, arr.size-1)
#
#    seems like this is a loop where you call the rotate_rightmost_digit method
#    until n == 1
# c:

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digit(int, n)
  arr = int.digits.reverse
  arr[-n..-1] = rotate_array(arr[-n..-1])
  arr.join.to_i
end

def max_rotation(int)
  n = int.digits.size
  loop do
    break if n < 1
    int = rotate_rightmost_digit(int, n)
    n -= 1
  end
  int
end

puts max_rotation(735291)
puts max_rotation(8_703_529_146) == 7_321_609_845

