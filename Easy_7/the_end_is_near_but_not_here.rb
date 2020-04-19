# i: string
#    always at least two words
# o: next to last word in a string
#    word = any sequence of non-blank characters
# e: penultimate('last word') == 'last'
# e: penultimate('Launch School is great!') == 'is'
# d: string => array => string
# a: 
#    split string into an array, return array[-2]
# c:

def penultimate(string)
  string.split[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'
