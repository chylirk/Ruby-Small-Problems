# i: user input for noun/verb/adverb/adjective
# o: string interpolation into sentence 
# e: 
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly
#
# Do you walk your blue dog quickly? That's hilarious!

def prompt(string)
  puts "Enter a #{string}: "
end

syntax = %w(noun verb adjective adverb)

result = syntax.map do |pos|
  prompt pos
  pos = gets.chomp
end

subjects = %w(I He She It They We You)
articles = %w(a the our your his her their)
punctuation = %w(! , . ?)

puts "#{subjects.sample} #{result[1]} #{articles.sample} #{result[2]} #{result[0]} #{result[3]}#{punctuation.sample}"
