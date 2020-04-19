# i: two integers (count, first number of a sequence)
#    count always has a value of 0 or greater
#    starting number can be integer
# o: array - same # of elements as count
#               starting from 1 to the count # (based on examples)
#            value of each element multiplied by starting number
# e:
# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []
# d: integer => array 
# a:
#    array starting at num2
#    extending to (num2 * count)
#    step size is num2
# c:

# def sequence(count, start)
#   (start..start * count).step(start).to_a
# end

def sequence(count, start)
  arr = [start]*count
  arr.map.with_index { |v, i| v * (i + 1) }
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []
