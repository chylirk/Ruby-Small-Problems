# i: array
#        integers, strings, single elements
#        exceptions: nil? empty? the same?
# o: array - 1st element => end of the array
#        do not modify the original array
# e:
# d: array => array => array
# a:
#    create a copy of the input array
#    shift the array and then append the return value of shift to ehe dn of the copy
# c:

# def rotate_array(arr)
#   result_array = arr.clone
#   append_val = result_array.shift
#   result_array << append_val
#   result_array
# end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]
puts x == [1, 2, 3, 4]

def rotate_string(str)
  rotate_array(str.chars).join
end

puts rotate_string('candlestick')

def rotate_integer(int)
  rotate_array(int.digits.reverse).join
end

puts rotate_integer(1008)
