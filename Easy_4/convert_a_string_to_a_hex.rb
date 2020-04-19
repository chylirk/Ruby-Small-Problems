def string_to_integer(string)
  integer_hash = {
    '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
    '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
    'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13,
    'E' => 14, 'F' => 15, 'G' => 16
  }

  string.upcase.chars.reverse.map.with_index { |val, i| integer_hash[val] * 16 ** i }.reduce(:+)
end

puts string_to_integer('4D9f') == 4321
