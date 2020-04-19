# i: string of words and non-alphabetic characters
# o: string with all non-alphabetic characters replaced by spaces
#   rule: if one or more non-alpha characters in a row, one space
#   rule: no consecutive spaces
# e: "---what's my +*& line?" == " what s my line "
# e: "---" == " "
# e: " +*& " == " "
# d: string ==> array ==> string
# a: 
#   split the string according to spaces
#   substitute spaces for blocks of non-alphanumeric characters
#   join with a space join(' ')
#   split by spaces, then rejoin to remove excess spaces?
# c:

def sub(string)
  string.gsub(/\W+/, ' ')
end

def squeez(string)
  string.gsub(/\s{2,}/, ' ')
end

def cleanup(nonsense_string)
  squeez(nonsense_string.split.map{ |elem| sub(elem) }.join(' '))
end

puts sub '+*%'
puts cleanup "---what's my +*& line?"
