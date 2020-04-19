# i: age, integer; desired age of retirement: integer
# o: string containing current year, year they will retire, difference thereof
# e: "It's 2016. You will retire in 2056. You only have 40 years of work to go!"
# d: string -> integer; date subtraction -> integer; integers -> string
# a: to_i, Date.today.year

require 'date'

current_year = Date.today.year.to_i

puts 'What is your age?'
age = gets.chomp.to_i

puts 'What age would you like to retire?'
retirement_age = gets.chomp.to_i

years_til_retirement = retirement_age - age

retirement_year = current_year + years_til_retirement

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_til_retirement} years of work to go!"
