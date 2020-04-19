def oddities(array)
  every_other = []
  (0...array.size).step(2).each { |i| every_other.append(array[i]) }
  every_other
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(%w(abc def)) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
