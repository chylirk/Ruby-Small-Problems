def double_consonants(string)
  string.chars.map do |char|
    char.downcase.match?(/[b-df-hj-np-tv-z]/) ? char * 2 : char 
  end.join
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
