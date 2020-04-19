# i: string
# o: boolean - if the passed in string can be spelled with the blocks
#    ignore case?
#    edge cases: nil, empty string, mixed case?
# e: 
# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true
# d: string => array of arrays => string => arrays, etc.
# a:
#
# the key question is how to represent the blocks
#    we need to 'find' them
#    we need to mark whether they've been used
#        I think we use an array of arrays
#        because there isn't a key/value relationship
#
#    split the input string
#    loop over every element
#        loop over every element in blocks
#        if a block contains the element, increment the final elem
#    at the end, if any block has a final elem > 1, possible = false
#        check the final elem with .any? { |subarr| subarr[2] > 1 }
require 'byebug'

def block_word?(word)
  blocks = [['B', 'O', 0],   ['X', 'K', 0],   ['D', 'Q', 0],   ['C', 'P', 0],   ['N', 'A', 0],
  ['G', 'T', 0],   ['R', 'E', 0],   ['F', 'S', 0],   ['J', 'W', 0],   ['H', 'U', 0],
  ['V', 'I', 0],   ['L', 'Y', 0],   ['Z', 'M', 0]]
  possible = true
  letters = word.upcase.chars
  letters.each do |elem|
    blocks.each do |block|
      block[2] += 1 if block.include?(elem)
    end
  end
  # byebug
  possible = !blocks.any? { |subarr| subarr[2] > 1 }
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
