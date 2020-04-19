def merge(array1, array2)
  array2.each do |elem|
    array1 << elem unless array1.include?(elem)
  end
  array1
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
