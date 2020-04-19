# i: sentence string
#    will there be any digits?
#    will it ever be empty?
#    what about negative?
#    what about greater than 'nine'?
#    what about uppercase/downcase/mixed?
#    what if symbol comes at beginning of number word?
# o: same string with any words 'zero' - 'nine' converted to string of digits
#    leave spaces between the numbers
# e:
#    word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
# d: string => array => string
# a:
#    create a dictionary from 'one' through 'nine' to the numeric
#        ex. { 'one': 1, 'two': 2, ... }
#    split the string into an array
#    initialize an empty array [output]
#    loop over every member of the array
#        if the element.downcase is also a key in the dictionary
#            find the dictionary entry for that element.to_s
#            push the dict entry into the output array
#        else
#            push the element into the output array as is
#    join the elements of the output array with a space
#
require 'pry'
WORD_NUM = {
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}.freeze

def clean(word)
  word.downcase.gsub(/\W/, '')
end

def digit?(word)
  WORD_NUM.keys.include?(word.downcase)
end

def word_to_digit(words)
  words.split.map do |word|
    if digit?(word)
      WORD_NUM[word.downcase]
    elsif digit?(clean(word))
      WORD_NUM[clean(word)] + word.downcase.gsub(/\w/, '')
    else
      word
    end
  end.join(' ')
end

def remove_num_space(string)
  space_regex = /(?<=\d)\s+(?=\d)/
  string.gsub!(space_regex, '')
end

def phone_number(string)
  phone_format = '(\1) \2-\3'
  phone_regex = /(\d{3})(\d{3})(\d{4})/
  string.gsub(phone_regex, phone_format)
end

test_string = 'Please call me at five five five one two three four. Thanks.'
test_phone = 'Please call me at five five five one two three four seven eight nine nine.'
puts word_to_digit(test_string) == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
puts remove_num_space(word_to_digit(test_string))
puts phone_number(word_to_digit(test_phone))