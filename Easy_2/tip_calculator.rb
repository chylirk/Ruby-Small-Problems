# input: bill amount, tip rate
# output: string containing tip, total amount of bill
# assume all inputs and outputs are floats
# bill = 200, tip rate = 15 --> "The tip is $30.0 The total is #230.0"
# string --> float --> string concatenation
# tip rate is reported as a percentage, so that should be divided to get a rate

def currency_conversion(float)
  format('%.2f', float)
end

puts 'What is the bill?'
bill = gets.chomp.to_f

puts 'What is the tip percentage?'
tip_rate = gets.chomp.to_f / 100

tip = bill * tip_rate
total = bill + tip

puts "The tip is $#{currency_conversion(tip)}"
puts "The total is $#{currency_conversion(total)}"
