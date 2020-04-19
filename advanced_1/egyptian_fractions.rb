# frozen_string_literal: true

require 'pry'

def egyptian(rat)
  result = []
  denom = 1
  check = 0
  loop do
    return result if check == rat

    if check + Rational(1, denom) <= rat
      check += Rational(1, denom)
      result << denom
    end
    denom += 1
  end
end

def unegyptian(arr)
  arr.reduce(Rational(0)) { |result, val| result + Rational(1, val) }
end

puts egyptian(Rational(2, 1)) == [1, 2, 3, 6]
puts egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1)) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57_960]

puts unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
puts unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
puts unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
puts unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
puts unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
puts unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
puts unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
puts unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
