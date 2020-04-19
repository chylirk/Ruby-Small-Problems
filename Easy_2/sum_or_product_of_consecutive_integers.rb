# i: integer greater than 0
# i: string - sum or product
# o: sum or product of all numbers between 1 and the entered integer
# o: string interpolation of above
# e: 5, 's' => 15
# e: 6, 'p' => 720
# d: string input, converted to integer, used to create an array
# d: which becomes an integer, interpolated into a string
# a: input.to_i --> array from 1 to input.to_i --> sum or array or product
# a: interpolated into string

def prompt(message)
  puts ">> #{message}"
end

prompt('Please enter an integer greater than 0:')
end_integer = ''

loop do
  end_integer = gets.chomp.to_i
  break if end_integer > 0
  prompt("Hmm.. that wasn't greater than 0.")
end

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
operation = ''

loop do
  operation = gets.chomp
  break if %w(s p).include? operation
  prompt("Hmm.. that wasn't s or p.")
end

result = case operation
         when 's'
           (1..end_integer).reduce(:+)
         when 'p'
           (1..end_integer).reduce(:*)
         end

operation_name = case operation
                 when 's'
                   'sum'
                 when 'p'
                   'product'
                 end

puts "The #{operation_name} of the integers between 1 and #{end_integer} is #{result}."
