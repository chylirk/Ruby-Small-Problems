# i: string
# o: list of all substrings starting at the beginning
# o: ordered shortest to longest
# e:
#   substrings_at_start('abc') == ['a', 'ab', 'abc']
#   substrings_at_start('a') == ['a']
#   substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
# d: string => substrings => array
# a: 
#    empty array
#    push the value of the string
#    pop the last character
#    push the value of the string
#    return until string is empty
# c:
require 'pry'
def substrings_at_start(string)
  arr = []

  loop do
    break if string.size == 0
    value = string.dup
    arr << value
    string.chop!
  end

  arr.sort
end

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']