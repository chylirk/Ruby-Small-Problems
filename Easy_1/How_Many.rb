#count the number of occurrences of each element in a given array
#P
  #input: string, integer, array, hash? - case-sensitive
  #output: 'input' => 'count' -- count is an integer?
    #return a count? return a string with input and count?
#Examples
  #car => 4
  #Car => 1
  #truck => 3
#Data Structure:
  #Array, String, Integer?
#Algorithm
  #array.each do |x|
    #array.count { |word| == x }
  #array.count { |x| x == input }
#C

given_array = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
  ]

def count_occurrences(given_array)
  occurences = {}

  given_array.each do |x1|
    occurences[x1] = given_array.count{ |x2| x2 == x1 }
  end

  occurences.each do |entry, count|
    puts "#{entry} => #{count}"
  ends

end

count_occurrences(given_array)