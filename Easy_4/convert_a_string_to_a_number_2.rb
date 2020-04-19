def string_to_integer(string)
  integer_hash = {
    '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
    '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
  }

  string.chars.reverse.map.with_index { |val, i| integer_hash[val] * 10 ** i }.reduce(:+)
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
