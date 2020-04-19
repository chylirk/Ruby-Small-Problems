# i: String of digits
# o: equivalent integer to string
# e: '4321' == 4321
# e: '570' == 570
# do not worry about + or - signs
# do not worry about invalid characters, assume numeric
# d: string, maybe array?, maybe hash as lookup?
# a: loop through characters in string
# a: look up integer value in a Hash
# a: multiply by power of ten, power determined by index, then reduce

# pseudocode:
# split characters into an array of single digits
# lookup the characters in a hash that returns the integer value
# multiply by a power of ten determined by the index
# e.g. 0 == 10 ** 0, 1 == 10 ** 1
# push these into an array
# sum the values of the array

def string_to_integer(string)
  integer_hash = {
    '0' => 0,
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9
  }

  output_array = []

  string.chars.reverse.each_with_index { |val, i| output_array << integer_hash[val] * 10 ** i }

  output_array.reduce(:+)
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
