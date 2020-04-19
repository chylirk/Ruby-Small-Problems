# i: year, integer
# o: century as string, ends with 'st', 'nd', 'rd', 'th'
# new centuries begin in years that end with 01
# e: 2000 == '20th'
# 2001 = '21st'
# 1965 == '20th'
# 10103 == '102nd'
# 1052 == '11th'
# d: integer, string, hash
# a: modulo - to find the hundreds place
# a: lookup string ending with a Hash
# a: concatenate the century # with the Hash value
# miscellanious logic:
# subtract one from the year before modulo
# then add one to the century number
# ex. 2000 becomes 1999 => 19 => 20
# string endings normally based on the last digit
# ex. 1st, 2nd, 3rd
# except with teens, ex. #11th, 12th, 13th, 14th, 15th, 16th, 17th, 18th, 19th

def century_number(year)
  (((year.to_i - 1) / 100) + 1).to_s
end

def teen?(number)
  %w(11 12 13).include?(number[-2..-1])
end

def ending(number)
  return 'th' if teen?(number)

  case number[-1].to_i
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end

`end

def century(year)
  century_number(year) + ending(century_number(year))
end

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(10_103)
puts century(1052)
puts century(1127)
puts century(11_201)
