#P
  #input: two arguments, a positive integer and a boolean
  #output: bonus for a given salary
    #if boolean == true, bonus is 0.5 * bonus
    #if boolean == false, bonus = 0
    #should be... integer? string? float?
#E
  #edge cases - salary is zero?
              # boolean is nil or null?
  #calculate_bonus(2800, true) == 1400
  #calculate_bonus(1000, false) == 0
  #calculate bonus(50000, true) == 25000
#D
  #integer
#A
  #multiplication, to_f?
#C

def calculate_bonus(positive_integer_salary, bonus_boolean)
  bonus_boolean ? positive_integer_salary * 0.5 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000