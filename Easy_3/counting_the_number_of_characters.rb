puts "Please write word or multiple words:"
submission = gets.chomp

character_count = submission.gsub(" ", "").length

puts "There are #{character_count} characters in #{submission}"