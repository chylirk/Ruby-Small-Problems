# i: string of words separate by spaces
#   rule: every word contains at least one letter
#   rule: the string will always contain at least one word
#   rule: the string will contain nothing but words and space
# o: string in which first and last letters of every word are swapped
#   implicit rule: maintain capitalization
#   implicit rule: nothing changes with single character words
#   implicit rule: two character words are functionally reversed
# e: 'Abcde' == 'ebcdA'
#    'a' == 'a'
#    'Oh what a wonderful day it is' == 'hO thaw a londerfuw yad ti si'
# d:
#   string ==> array ==> string
# a: split string on spaces
#    for every element in the array, swap array[0] and array[-1]
#    store a[0] in a placeholder while it's swapped
#    join the elements in the array with a space
# c:

def swap(string_of_words)
  word_array = string_of_words.split()
  swapped_array = word_array.map do |word|
                    first_char = word[0]
                    word[0] = word[-1]
                    word[-1] = first_char
                    word
                  end
  swapped_array.join(' ')
end

puts swap('Oh what a wonderful day it is')
puts swap 'Abcde'
puts swap 'a'