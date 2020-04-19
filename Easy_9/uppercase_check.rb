# i: string
# o: true if all alphabetic characters are uppercase
#    false if not
#    ignore non-alphabetic characters
# e:
# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true
# d: string, regex, boolean
# a:
#    scan the string for a lowercase character [a-z]
#    if true, return false
# c:

def uppercase?(string)
  !string.match?(/[a-z]/)
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true
