# i: string, one or more space separated words
#    words are any string of characters without a space
# o: hash, number of words of different sizes
#    keys are the word length, values are the counts
#    both are integers (afaict)
# e:
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}
# d: string ==> array? ==> hash
# a: string (split, size), array (each, map?), hash
#    logic:
#        split the string into an array words
#        map the words to their length (word_length_array)
#        create an empty hash
#        loop over the word_length_array
#        hash[word_length_array element] = count of element in array
#
#        the key part is the last one
#        I need a method that loops over an array and returns
#        the # of times a given value appears
#        ahh... that would be the 'count' method
# c:

def word_sizes(string)
  letter_count_hash = {}

  word_length_array = string.split.map(&:size)

  word_length_array.each do |elem|
    letter_count_hash[elem] = word_length_array.count(elem)
  end

  letter_count_hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
