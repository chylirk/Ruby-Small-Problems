# def running_total(array)
#  array.map { |i| array[0..array.index(i)].reduce(:+) }
# end

def running_total(array)
  array.map.with_index { |_, i| array[0..i].reduce(:+) }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
