# i: integer, positive or negative
# o: string of form 'hh:mm'
# e: (0) == "00:00"
#    (-3) == "23:57"
#    (35) == "00:35"
#    (-4231) == "01:29"
# 
#    implicit rule: When the input is greater than (24 * 60), does it loop around to 00:00?
# d: integer => array => String
# a: 
#   logic:
#         First, to handle 'looping', modulo by 24 * 60
#                 this removes 'excess' or irrelevant 24 hour cycles
#                note, if the # is negative, multiply by -1
#         Second, create two flows, for negative and positive
#         Third, in the positive flow, divide by 60 to get hours
#                modulo 60 to get the minutes
#         Fourth, in the negative flow, add the (negative) minutes to (24 * 60)
#                then repeat the 'positive flow' logic to get hours/min
#         Fifth, format hours so it gives two digits even when zero
#         Sixth, concatentae hours and minutes 
#         Seventh, convert to string
# c:

# require 'pry'

MINUTES_IN_24_HOURS = (24 * 60)

def time_of_day(minutes)
  meaningful_minutes = minutes % MINUTES_IN_24_HOURS

  meaningful_minutes *= -1 if minutes < 0

  hours = 0
  minutes = 0

  if meaningful_minutes >= 0
    hours = meaningful_minutes / 60
    minutes = meaningful_minutes % 60
  elsif meaningful_minutes < 0
    # binding.pry
    meaningful_minutes = MINUTES_IN_24_HOURS + meaningful_minutes
    hours = meaningful_minutes / 60
    minutes = meaningful_minutes % 60
    # binding.pry
  end
  # binding.pry

  hours = hours.to_s.rjust(2, '0')
  minutes = minutes.to_s.rjust(2, '0')
  time_of_day = "#{hours}:#{minutes}"
end

puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(35)
puts time_of_day(-1437)


# I realize now that I seriously misunderstood how the modulo operator
# functions when it comes to negative numbers
# When I tested a negative number, it returned a positive integer
# which plausibly appeared to be the remainder of dividing
# the numbers normally, as if there were no negative sign
# what. a. waste. of. time.
# and then the divmod method, but that I feel better about