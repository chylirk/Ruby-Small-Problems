# i: array of fruit and quantities
# o: array of correct # of fruit
# e: buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#  ["apples", "apples", "apples", "orange", "bananas","bananas"]
# d: array => array => array
# a:
#    transform each subarray into an array of 'fruit' * count
#    flatten the arrays
# c:

require 'pry'

 # def buy_fruit(grocery_list)
 # grocery_list.map do |item|
 #   [item[0]] * item[1]
    # binding.pry
#  end.flatten
  # binding.pry
# end

# def buy_fruit(grocery_list)
#  true_fruit = []
#  grocery_list.each do |item|
#    item[1].times { true_fruit << item[0] }
#  end
#  true_fruit
#end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]
