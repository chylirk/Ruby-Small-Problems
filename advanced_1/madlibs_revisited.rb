# i: text from a text file
#    must come from file or other external source
#        input representation is your responsibility
# o: print text with random appropriate words included
#    input nouns, verbs, adjectives, adverbs
# e:
#   The sleepy brown cat noisily
#   licks the sleepy yellow
#   dog, who lazily licks his
#   tail and looks around.
#
# d:
#
# a:
#    read this text
#        for each line
#            place random words of appropriate type into the text
#    print the text
#
# idea 1:
#        input a text string - input spaces are labelled as such
#            ex. "The noun walked to the noun adverb"
#        split the string into an array
#            map over the array
#                replace the parts of speech with random selections from pos arrays
#            join the return value from the map method
#        return that
#
#
ADJECTIVES = %w(sleepy brown sleepy yellow)
POSSESSIVE_ADJECTIVES = %w(his her)
NOUNS = %w(cat dog tail)
ADVERBS = %w(sleepy noisily lazily)
VERBS = %w(licks looks)


text = IO.read()

madlib = text.split.map do |word|
  case word.gsub(/\W/,'')
  when 'adjective' then ADJECTIVES.sample
  when 'noun' then NOUNS.sample
  when 'possessive_pronoun' then POSSESSIVE_ADJECTIVES.sample
  when 'adverb' then ADVERBS.sample
  when 'verb' then VERBS.sample
  else word
  end
end.join(' ')

puts madlib