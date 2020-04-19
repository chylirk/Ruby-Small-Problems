# input: length of room in meters, width of room in meters (integers?)
# output: area of room in square meters and square feet
# assume input is integer, output is float based on examples
# "The area of the room is 70.0 suare meters (753.47 square feet)"
# strings -> integers -> floats
# convert strings to integers, multiply them to get square meters,
# multiply them again by the conversion rate to get square feet

SQMETERS_TO_SQFEET = 10.7639

puts 'Enter the length of the room in meters'
length = gets.chomp

puts 'Enter the width of the room in meters'
width = gets.chomp

area_in_meters = length.to_f * width.to_f
area_in_feet = area_in_meters * SQMETERS_TO_SQFEET

puts "The area of the room is #{area_in_meters.round(2)} square meters " \
     "(#{area_in_feet.round(2)} square feet)."
