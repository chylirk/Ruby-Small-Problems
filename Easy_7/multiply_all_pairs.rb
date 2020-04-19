require 'pry'

def multiply_all_pairs(arr1, arr2)
  result_array = []

  arr1.each do |num|
    arr2.each do |num2|
      result_array << num * num2
      # binding.pry
    end
  end
  result_array.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
