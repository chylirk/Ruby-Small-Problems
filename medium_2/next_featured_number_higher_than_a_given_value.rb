# i: integer
# o: the next featured number greater than the argument
#    error message if no next featured number
#
#    featured number:
#        odd?
#        % 7 == 0
#        number.digits.uniq == numbers.digits
# e:
# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987
# featured(9_999_999_999) == 'There is no possible number that fulfills those requirements'
#
# d: Integer => Loop => Array => Integer
# a:
#    create a loop
#        increment the input by one
#        if the incremented input is odd, divisible by seven, and has unique digits
#            then it's the answer
#        if the incremented input has more than nine digits
#            then the answer cannot be found
#        otherwise repeat the loop
# c:
require 'byebug'

def is_featured?(int)
  int.odd? && (int % 7 == 0) && (int.digits.uniq == int.digits)
end

def featured(int)
  answer = 'There is no possible number that fulfills those requirements'
  test_int = int + 1
  loop do
    # byebug
    if is_featured?(test_int)
      answer = test_int
      break
    elsif test_int.digits.size > 10
      break
    else
      test_int += 1
    end
  end
  answer
end   

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987
puts featured(9_999_999_999) == 'There is no possible number that fulfills those requirements'
