def string_to_integer(string)
  ihash = {
    '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
    '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
  }

  string.chars.reverse.map.with_index { |v, i| ihash[v] * 10**i }.reduce(:+)
end

def string_to_signed_integer(string)
  case string[0]
  when '+' then string_to_integer(string[1..-1])
  when '-' then -1 * string_to_integer(string[1..-1])
  else string_to_integer(string)
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
