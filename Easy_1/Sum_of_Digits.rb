#P
  #input - one argument, a positive integer
    #may include non-integer characters, symbols
  #output - sum of digits
    #as a string? integer? numeric?
#E
  #sum(23) == 5
  #sum(496) == 19
  #sum(123_456_789) == 45
#D
  #integer, array, reduce
#A
  #reduce

def sum(positive_integer)
  positive_integer.to_s.chars.map { |x| x.to_i }.reduce(:+)
end

puts sum(23)
puts sum(496)
puts sum(123_456_789)s