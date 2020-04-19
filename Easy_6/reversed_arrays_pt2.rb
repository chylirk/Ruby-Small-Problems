# i: array
# o: new array, elements reversed
# e:
# d: array, array
# a: loop over the original array, unshift each element into new array
# c:

def reverse(array)
  array.each_with_object([]) { |i, a| a.unshift(i) }
end

reverse([1,2,3,4]) == [4,3,2,1]          
puts reverse(%w(a b e d c)) == %w(c d e b a)  
puts reverse(['abc']) == ['abc']              
puts reverse([]) == []                        

list = [1, 3, 2]                      
new_list = reverse(list)              
puts list.object_id != new_list.object_id  
puts list == [1, 3, 2]                     
puts new_list == [2, 3, 1] 
