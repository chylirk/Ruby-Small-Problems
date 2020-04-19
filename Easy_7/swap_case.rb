# i: a string
# o: new string, every uppercase letter replaced by lowercase version
# o: every lowercase letter, replaced by uppercase version
# o: all other characters unchanged
#   rules:
#         may not use String#swapcase
#   edge cases:
#         nil? null?
# e: swapcase('CamelCase') == 'cAMELcASE'
# e: swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
# d: string => array of words => array of characters => join => join
# a:
#    split the string into an array of 'words' based on spaces
#    for each word, split into characters
#    loop over the characters
#        if the character is uppercase letter, downcase it
#        elsif the characeter is a lowercase letter, uppercase it
#    join the characters into words again
#    join the words into a string again
#    return the string
# c:

require 'pry'

def swapcase(string)
  string.split.map do |word|
    word.chars.map do |char|
      if char.match?(/[A-Z]/)
        char.downcase
      elsif char.match?(/[a-z]/)
        char.upcase
      else
        char
      end
    end.join
  end.join(' ')
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
