# i: array of numbers
# o: array with same # of elements, each element is running total
# e: running_total([2, 5, 13]) == [2, 7, 20]
# e: running_total([]) == []
# d: array
# a: loop through numbers in array, add to a running total, add to each
# c:

def running_total(array_of_nums)
  increment = 0
  running_total_array = []

  array_of_nums.each do |num|
    running_total_array << num + increment
    increment += num
  end

  running_total_array
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
    