# i: two arrays
#    non-empty
#    same number of elements
# o: new array containing all elements from both arrays, alternating
# e: [1, 2, 3], ('a', 'b', 'c') == [1, 'a', 2, 'b', 3, 'c']
# d: array => array
# a: for each element in the arrays, push them into a new array in the right order
#    each_with_object([])
# c:

def interleave(array1, array2)
  new_array = []
  if array1.size != array2.size
    puts "Arrays are different size"
  else
    array1.each_with_index do |v, i|
      new_array << v 
      new_array << array2[i]
    end
  end
  new_array
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
