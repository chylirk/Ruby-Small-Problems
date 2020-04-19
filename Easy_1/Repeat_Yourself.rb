#Problem, Understand the
#  Possible inputs: string, positive integer 
#  Possible outputs: string
#  edge cases: null, "", [], {}, string with spaces, negative integer, 0

#Examples
#  repeat('Hello', 3) => Hello    Hello    Hello 
#  repeat('Hello', 0) => ??
#  repeat('', 4) => ??
#  repeat('Hello Hello', 3) => Hello Hello    Hello Hello    Hello Hello 
#
#Data Structure
#  strings
#
#Algorithm
#  loop + counter
#  times

#Code

def repeat(word_to_be_repeated, number_of_times)
  number_of_times.to_i.times { puts word_to_be_repeated.to_s }
end

repeat('Hello', 3)