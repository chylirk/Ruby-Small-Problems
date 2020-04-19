# i: number
# o: 2 times the number provided
#    unless the number is a double number
#    in which case, return as-is
# e:
# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10
#
# d: integer => array => integer
# a:
#    if the integer has an even # of digits
#        if the first half of the # equals the 2nd half
#            return as-is
#    else
#        return the number * 2
# c:

require 'pry-byebug'

def twice(num)
  arr = num.digits.reverse

  return num * 2 if arr.size.odd?

  mid = arr.size / 2 - 1
  arr[0..mid] == arr[mid + 1..-1] ? num : num * 2
end

puts twice(334_433) == 668_866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103_103) == 103_103
puts twice(3333) == 3333
puts twice(7_676) == 7_676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
