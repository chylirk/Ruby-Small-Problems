#method takes one argument (positive integer)
#returns string of alternating 1s and 0s - starting with 1
#length of string matches the integer

#P
  #input: positive integer
  #output: string - alternating 1s and 0s starting with 1
        #length = input integer
#E
  #string(6) == '101010'
  #string(9) == '101010101'
  #string(4) == '1010'
#D
  #Integer, String
#A
  #loop
  #array
  #<<
  #join
#C

#def string(input_integer)
#  output_array = []
#  counter = 0
#  loop do 
#    counter % 2 == 0 ? output_array << '1' : output_array << '0'
#    counter += 1
#    break if counter == input_integer
#  end
#  output_array.join
#end

def string(input_integer)
  output_array = []

  input_integer.times do |index|
    index.even? ? output_array << '1' : output_array << '0'
  end

  output_array.join
end


puts string(6)
puts string(9)
