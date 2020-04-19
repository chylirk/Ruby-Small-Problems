#take a single string, retern a new string with words reversed
#P
  #input: string, single argument - edge cases 'nothing'
  #output: string, single
#E
  #reverse_sentence('') == ''
  #reverse('Hello World') == 'World Hello'
  #reverse('Reverse these words') == 'words these Reverse'
  #maintain capitalization, spelling
#Data structure  - output as string, intermediate array?
#A
  #char to split, array.reverse! array.join - maybe with " "
#C

def reverse_sentence(input_string)
  input_string.split(' ').reverse!.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'