def word_sizes(string)
  letter_count_hash = {}

  word_length_array = string.split.map { |w| w.gsub(/[\W\d]/,'').size }

  word_length_array.each do |elem|
    letter_count_hash[elem] = word_length_array.count(elem)
  end

  letter_count_hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
