require 'pry'

def my_method(array)
  # binding.pry
  if array.empty?
    []
  elsif array.size > 1
    # binding.pry
    array.map do |value|
      value * value
    end
  else
    # binding.pry
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])