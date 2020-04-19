# i : odd integer
# o : nxn grid with a 4-pointed diamond
# e: see other screen
# d: integer => array of integers => string => put a series of strings
# a:
#    method that takes an odd integer, returns an array with all odd integers
#    between 1 and n, and then back to 1
#
#    method that takes two integers (a, n) and returns a string with a asterisks
#    in a string of width n
#
#    call each on the array with parameter |x|, puts the result of asterisks(x, n)
#    call the puts method on those strings in the appropriate order
#
#    method 1:
#    i: integer, n
#    o: array of integers from 1 to n back to 1
#    e:
#        method(5) = [1, 3, 5, 3, 1]
#    d: integer => array
#    a: (1..n).step(2).to_a + (1..n).step(2).to_a.reverse[1..-1]
#
#    method 2:
#    i: two integers, (a, n)
#    o: string with a-count of asterisks, of width n
#    e: method_two(3, 9) == '   ***   '
#    d: integer => string
#    a:
#        str = '*' * a
#        str.center(n)
#
# def one_to_n(n)
#   # arr = (1..n).step(2).to_a
#   # arr + arr.reverse[1..-1]
#   (1..n).step(2).to_a + (1..n).step(2).to_a.reverse[1..-1]
# end

# # puts one_to_n(5) == [1, 3, 5, 3, 1]

# # def asterisks(a, n)
# #   # str = '*' * a
# #   # str.center(n)
# #   ('*' * a).center(n)
# # end

# # puts asterisks(3, 9) == '   ***   '

# def diamond(n)
#   # asterisk_counts = one_to_n(n)
#   # asterisk_counts.each do |x|
#   #   puts asterisks(x, n)
#   # end
#   one_to_n(n).each do |x|
#     # puts asterisks(x, n)
#     puts ('*' * x).center(n)
#   end

# end

def diamond(n)
  ((1..n).step(2).to_a + (1..n).step(2).to_a.reverse[1..-1]).each do |x|
    puts ('*' + ' ' * (x-1) + '*').center(n)
  end
end


diamond(11)
