# i: number
# o: negative of that number if it's positive
#    original number if 0 or negative
# e:
# negative(5) == -5
# negative(-3) == -3
# negative(0) == 0
# d: integer, integer
# a: check if number is <= 0
#    if true, return number
#    if false, return number * -1
# c:

def negative(num)
  num <= 0 ? num : num * -1
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0
