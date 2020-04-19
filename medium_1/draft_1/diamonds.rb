# i: odd integer
# o: 4-pointed diamond on an [nxn] grid
# e: ...
# d: integer => n arrays of length n
# a:
#    create one array of n subarrays 
#        subarrays are size n and each value is blank
#    loop over every subarr and make the middle value = '*' 
#
# c:

require 'byebug'

def initialize_diamond(n)
  arr = []
  n.times { arr.append([' '] * n) }
  arr
end

def add_diamonds(arr)
  arr_length = arr.size
  mid_point = arr.size / 2 + 1
  arr.map do |subarr|
    

puts initialize_diamond(5)