# i: time of day in 24-hour format 
#   implicit: always a string between 0 and 24 for horus
#             , between 0 and 60 for minutes
# o: number of minutes before and after midnight respectively
#   rule: value in range 0..1439
#   rule: may not use Date or Time methods
# e: '00:00' == 0
#    after_midnight('12:34') == 754
#    before_midnight('12:34') == 686
#    after_midnight('24:00') == 0 // before_midnight('24:00') == 0
# d: string => array => integer
# a: string, split on ':' to get hours and minutes, to_i for both
#    multiply the hours place by [Number of Minutes in an Hour]
#    add the minutes figure to get total number of minutes
#    ^solution to the 'after midnight' problem
#    subtract the total # of minutes from (24 * 60) = before_midnight
# c:

HOURS_IN_A_DAY = 24
MINUTES_IN_AN_HOUR = 60
MINUTES_IN_A_DAY = HOURS_IN_A_DAY * MINUTES_IN_AN_HOUR

def after_midnight(time_string)
  hour_min_array = time_string.split(':')
  hours = hour_min_array[0].to_i
  minutes = hour_min_array[1].to_i

  total_minutes = minutes + hours * MINUTES_IN_AN_HOUR

  minutes_after_midnight = total_minutes % MINUTES_IN_A_DAY
end

puts after_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts after_midnight('24:00') == 0

def before_midnight(time_string)
  minutes_after_midnight = after_midnight(time_string)
  minutes_before_midnight = (MINUTES_IN_A_DAY - minutes_after_midnight) % MINUTES_IN_A_DAY
end

puts before_midnight('00:00') == 0
puts before_midnight('12:34') == 686
puts before_midnight('24:00') == 0
