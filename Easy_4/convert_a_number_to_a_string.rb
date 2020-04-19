def integer_to_string(number)

  return '0' if number == 0

  number_to_string_hash = {
    1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6',
    7 => '7', 8 => '8', 9 => '9', 0 => '0'
  }

  integer_array = []

  while number > 0
    integer_array.unshift(number % 10)
    number /= 10
  end

  integer_array.each.map { |num| number_to_string_hash[num] }.join
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
