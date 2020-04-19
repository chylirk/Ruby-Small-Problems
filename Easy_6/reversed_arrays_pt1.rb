# i: array 
# o: reverse elements in place
#    mutate the array 
#    return value is the same array
#    rule: may not use Array#reverse or Array#reverse!
# e:
# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id
#
# list = %w(a b e d c)
# reverse!(list) == ['c', 'd', 'e', 'b', 'a']
# list == ['c', 'd', 'e', 'b', 'a']
#
# list = ['abc']
# reverse!(list) == ['abc']
# list == ['abc']
#
# list = []
# reverse!(list) == []
# list == []
#
# d: array, reassign operation
# a:
#    loop over the array, reassigning values with their opposite
#    ex. a[0], a[-1] = a[-1], a[0]
#    loop a.size / 2 number of times
#    this way the central number will stay if it's odd
# c:

def reverse!(list)
  loop_count = list.size / 2

  (0...loop_count).to_a.each do |i|
    list[i], list[-i - 1] = list[-i - 1], list[i]
  end

  list
end

list = [1,2,3,4]
result = reverse!(list)
puts "result is #{result}"
puts "list is #{list}"
puts result == [4, 3, 2, 1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b e d c)
puts reverse!(list) == ['c', 'd', 'e', 'b', 'a']
puts list == ['c', 'd', 'e', 'b', 'a']

list = ['abc']
puts reverse!(list) == ['abc']
puts list == ['abc']

list = []
puts reverse!(list) == []
puts list == []
