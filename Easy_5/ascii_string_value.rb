# Problem
# input: string
#      - nil, null, empty?
# output: ascii string value
#      - integer?
# Examples
# ('Four score') == 984
# ('Launch School') == 1251
# ('a') == 97
# ('') == 0
# D string => array => integer
# A 
# string split (chars), new array by each, reduce array (:+), to_i
# C

def ascii_value(ascii_string)
  string_array = ascii_string.chars
  ascii_value_array = [0]

  string_array.each do |char|
    ascii_value_array << char.ord
  end

  ascii_value = ascii_value_array.reduce(:+)
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
