# i: string - user's name
# o: string - greeting with user's name
# if name has a bang then return all caps
# e: "What is your name? Bob" => "Hello Bob."
# "What is your name? Bob!" => "HELLO BOB. WHY ARE WE SCREAMING?"
# d: strings
# a: string interpolation, contains, upcase, if statement

puts 'What is your name?'
name = gets.chomp

greeting = "Hello #{name}."
question = ' why are we screaming?'.upcase

puts name[-1] == '!' ? "Hello #{name.chop}.".upcase + question : greeting
