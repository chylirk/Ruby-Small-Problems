# i: two integers, the second will always be a positive integer
#    the first argument is the to-be-rotated number
#    the second argument is the number of digits to be rotated
# o: one intger with the # of rotated digits equal to n
# e: if n == 1, return the original number
# d: integer => array => integer
# a:
#    call digits on the integer to get an array, then reverse it
#    assign the last n digits to an array called to_rotate
#    the remainder is assigned to an array called remainder
#    call rotate_array on the to_rotate array
#    join the rotated to_rotate array with the remainder array
#    join to get the result integer


def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(int, n)
  arr = int.digits.reverse
  to_rotate, remainder = arr[-n..-1], arr[0...-n]
  to_rotate = rotate_array(to_rotate)
  result = remainder + to_rotate
  result.join
end

puts rotate_rightmost_digits(735291, 1)
puts rotate_rightmost_digits(735291, 2)
puts rotate_rightmost_digits(735291, 3)
puts rotate_rightmost_digits(735291, 4)
puts rotate_rightmost_digits(735291, 6)