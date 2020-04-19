#P
  #input - array containing integers
    #never empty
    #always positive
  #output - average of all numbers in the array
    #integer? string? numeric? float? probably float
#E
  #average([1, 5, 87, 45, 8, 8]) == 25 # => True
  #average([9, 47, 23, 95, 16, 52]) == 40 # => True
#D
  #array
  #integer
  #float
#A
  #no array method, so sum and divide by length
  #probably convert to float
    #scratch this - after looking at the examples, 
    #it should not be a float

def average(positive_array)
  positive_array.sum / positive_array.length
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])