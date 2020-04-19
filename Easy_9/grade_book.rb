# i: three scores
#    between 0 and 100
# o: mean of three scores
#    letter value of mean
# e:
# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"
# d: integers => array => integer => case statement
# a:
#    array.reduce(:+) / array.size = mean
#    case statement on mean
# c:

def mean(arr)
  arr.reduce(:+) / arr.size
end

def get_grade(num1, num2, num3)
  grade_array = [num1, num2, num3]
  grade_mean = mean(grade_array)

  case
  when grade_mean >= 90 then 'A'
  when grade_mean >= 80 then 'B'
  when grade_mean >= 70 then 'C'
  when grade_mean >= 60 then 'D'
  else 'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
