# i: array of numbers
#    assume array contains at least one number
# o: sum of the sums of each leading sequence
# e: 
#   sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
#   sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
#   sum_of_sums([4]) == 4
#   sum_of_sums([1, 2, 3, 4, 5]) == 35
# d: array => subarrays => integer
# a:
#    make an array with index 0
#        subarr = arr[0]
#    make an array with index 0 and index 1
#        subarr = arr[0..1]
#    make an array for index 0 through index (end)
#        subarr = arr[0..arr.size]
#    flatten and sum the arrays
#
# alternative logic:
#    sum of the array
#    pop last element
#    sum array
#    pop item

def sum_of_sums(array)
  total = 0
  loop do
    break if array.size == 0
    total += array.flatten.sum
    array.pop
  end
  total
end


puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35
