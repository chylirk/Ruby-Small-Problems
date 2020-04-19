# frozen_string_literal: true

# p: write a method that takes two sorted Arrays as arguments
#    returns a new Array containing all elements from both arguments
#    in sorted order
#
#    must build the result array one element at a time in the proper order
#
#    i: arrays of Integers
#        could be an empty array
#    o: array of Integers
#
# e:

# d: array => array => array
# a:
#    guard clause in case one array is empty
#    need to compare elements within arrays
#    compare the first elements in the array
#    whichever element is smaller, shift it into the result array
#        if elements are the same, shift the first element
#    compare the first elements in the arrays again
#    repeat the shift
#    when one array is exhausted, simply shift in the rest of the other array
#
#    result = array2 if array1.empty?
#    result = array1 if array2.empty?
#
#    if array1[0] < array2[0] then result << array1.shift
#    if array2[0] < array1[0] then result << array2.shift
#    if array1[0] == array2[0] then result << array1.shift
#    if array1.empty? then result << array2
#    if array2.empty? then result << array1
#    result.flatten
#
#    we can make the above into a loop
#        where the loop breaks only once one of the arrays is empty
# c:

def merge(arr1, arr2)
  result = []

  arr_a = arr1.clone
  arr_b = arr2.clone

  loop do
    return (result << arr_b + arr_a).flatten if arr_a.empty? || arr_b.empty?

    result << (arr_a.first <= arr_b.first ? arr_a.shift : arr_b.shift)
  end
end
