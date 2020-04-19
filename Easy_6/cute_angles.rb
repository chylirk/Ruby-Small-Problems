# i: floating points number between 0 and 360
# o: string - angle in degrees, minutes, and seconds
#    use the degree symbol for degrees, single quote for minutes
#    double quote for seconds
#    
#    degree = 60 minutes, minute = 60 seconds
#    
# e: dms(30) == %(30°00'00")
#    dms(0) == %(0°00'00")
# d: float => integer => string
# a: 
#    ones and tens place => degrees
#    multiply decimal places by 60 to get minutes
#    ones and tens place of minutes => minutes
#    multiply decimal places by 60 to get seconds
#    concatenate with appropriate symbols into strong
#
#    separating the ones/tens place from decimals via divmod(x, 1)
# c:

DEGREE = "\xC2\xB0"
MIN_PER_DEGREE = 60
SEC_PER_MIN = 60

def dms(degree_float)
  degrees, minutes = degree_float.divmod(1)
  minutes, seconds = (minutes * MIN_PER_DEGREE).divmod(1)
  seconds *= SEC_PER_MIN

  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")