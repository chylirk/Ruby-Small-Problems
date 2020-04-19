# i: integer - year
#        assume integer > 1752
# o: integer - Number of Friday the 13ths in that year
# e:
# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2
#
# d: Integer => Array => String Interpolation? => Integer
# a:
#    For given year, check the 13th of month, and increment counter if Fri
#        Have an array of months [1..12]
#        Loop over the array
#            Date = Date.new([year], [month], [day])
#            Query day_of_week(#{year}/#{month}/#{13})
#            counter += 1 if day_of_week == 'Friday' (or the enum for Friday)
#        Counter
# Okay... there's a #friday? method
#        Same as above
#            counter += 1 if Date.friday?
# c:
require 'date'

MONTHS = (1..12).to_a.freeze
DAY = 13

def friday_13th(year)
  counter = 0
  MONTHS.each do |mon|
    counter += 1 if Date.new(year, mon, DAY).friday?
  end
  counter
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2
