# i: integer greater than 0
# o: boolean
# o: true if leap year, false if not a leap year
# e: 2016 == true
# 2015 == false
# 2100 == false
# 2400 == true
# 2400000 == true
# 1 == false
# 100 == false
# 400 == false
# d: integers
# a: division, modulo
# logic:
# divisible by 4 == leap year unless divisible by 100
# unless unless divisible by 400 then leap year again


def leap_year?(year)
  if year % 4 != 0
    false
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    true
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true