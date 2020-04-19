# Original
# def decrease(counter)
#   counter -= 1
# end
#
# counter = 10
#
# 10.times do
#   puts counter
#   decrease(counter)
# end

# puts 'LAUNCH!'

# o: output integers from 10 to 1
# e:
# d:
# a:

def decrease(counter)
  counter -=1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

puts ''
puts 'Countdown 2'

counter = 10
while counter > 0
  puts counter
  counter -= 1
end

puts "LAUNCH!
"