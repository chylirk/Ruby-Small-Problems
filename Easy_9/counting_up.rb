# i: integer
#    assume argument is always valid integer > 0
# o: array of all integers in sequence between 1 and the argument
#    if argument is 1, then  [1]
# e:
# sequence(5) == [1, 2, 3, 4, 5]
# sequence(3) == [1, 2, 3]
# sequence(1) == [1]
# d: integer => array
# a: 
# c: [1..num]

def sequence(num)
  (1..num).to_a
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
