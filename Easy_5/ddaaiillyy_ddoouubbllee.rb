def crunch(string)
  result_string = ''
  char_array = string.chars
  char_array.each_with_index { |char, i| result_string << char if char != char_array[i+1] }
  result_string
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
