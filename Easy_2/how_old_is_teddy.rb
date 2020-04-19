# P input: N/A output: string interpolation + random number between 20 and 200
# E "Teddy is 69 years old!"
# D String
# A String interpolation, random number generation
# C

puts "Please enter a name: "

name = gets.chomp()

name = 'Teddy' if name.empty?

age = rand(20..200)

puts "#{name} is #{age} years old"
