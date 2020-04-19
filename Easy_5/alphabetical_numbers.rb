INTEGER_TO_STRING = %w(zero one two three four
                       five six seven eight nine
                       ten eleven twelve thirteen
                       fourteen fifteen sixteen
                       seventeen eighteen nineteen).freeze

def alphabetic_number_sort(integer_array)
  integer_array.sort_by { |num| INTEGER_TO_STRING[num] }
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
