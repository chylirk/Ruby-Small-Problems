# i: sentence string
# o: same string with any seqeuence of words converted to a a string of digits
# e:
# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
# d: string => gsub => string
# a:
#    initialize a hash where keys are 'one'...'nine' and the values are integers 1..9
#    loop over the hash keys and gsub the hash key with the corresponding value
#    return the string
# c:
HSH = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

def word_to_digit(str)
  HSH.each do |k,v|
    str.gsub!(k, v)
  end
  str
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'