# i: string
# o: new string, original value with every other character capitalized
# o: non-letters should not be changed, but count when switching between
# o: up and downcase
# e:
# e: staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# e: staggered_case('ALL_CAPS') == 'AlL_CaPs'
# e: staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
# d: string => array => string
# a: loop over each character (with an index)
#    if it's a character and index is even then upcase
#    if it's a character and index is odd downcase
#    else return the character
# a: join and return
# c:

require 'pry'

def updowncase(char, idx)
  idx.even? ? char.upcase! : char.downcase!
  char
end

def staggered_case(string)
  string.chars.map.with_index do |chr, i|
    # binding.pry
    chr =~ /[A-Za-z]/ ? updowncase(chr, i) : chr
    # binding.pry
  end.join
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
