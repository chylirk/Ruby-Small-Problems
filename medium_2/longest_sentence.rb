# i: content of a text file
# o: the longest sentence in the file based on # of words
#    the number of words in the longest sentence
#    sentences end with . ! or ?
#    any sequence of characters not a space or sentence ender is a word
# e: long example from launchschool website == last_sentence, 86 words
#    gutenberg link == 157 words
# d: file location => string => array of substrings
#    => array of substrings, substring lengths =>
#    substring, substring length
# a:
#    read a file location into ruby as a string
#        create file with IO.read
#        read file with IO.read method
#    split the string based on end characters
#    loop over all the substrings
#        and replace them with subarrays
#        that contain the sentence and
#        the sentence length
#            find sentence length by splitting
#            by spaces, and then getting the size
#    sort the substrings by the sentence length
#        sort { |e| e[1] }
#    return the first entry in the array
# c:

def longest_sentence(filename)
  text = IO.read(filename)
  sentences = text.split(/[\.\?\!]/)
  sentences_and_lengths = sentences.map { |sent| [sent.split.size, sent] }.sort
  "Longest Sentence Length: #{sentences_and_lengths.pop[0]}"
end

puts longest_sentence("longest_sentence_ex_1.txt")
puts longest_sentence("longest_sentence_ex_2.txt")
