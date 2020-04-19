#takes one argument (string with 1 or more words)
#return string with words that contain 5+ characters reversed
#string = only letters and spaces
#spaces included when more than one word is present

#P
  #input: one argument, string
  #output: one string - 5+ character length words reversed
            #multiple continuous 5+ character words get reversed as well
#E
  #reverse_words('Professional') == lanoisseforP
  #reverse_words('Walk around the block') = Walk dnuora the kcolb
  #reverse_words('Launch School') => hcnual loohcS
#D
  #String to array to string
#A
  #chars
  #length
  #reverse
  #join
#C
  #For each word in the string
    #If the word is 5+ characters, reverse it
    #If more than one word is present, include the space
    #So, if a string is 5+ characters and the next string is 5+ then reverse

def reverse_words(input_string)
  output_array = []

  input_string.split.each do |word|
    if word.length < 5
      output_array.push(word)
    else
      output_array.push(word.reverse!)
    end
  end
  output_array.join(' ')
end

puts reverse_words('Walk around the block')
puts reverse_words('Launch School')