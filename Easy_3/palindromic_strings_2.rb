def strict_palindrome?(input_string)
  input_string == input_string.reverse
end

def clean_text(input_string)
  input_string.downcase.gsub(/\W/, '')
end

def loose_palindrome?(input_string)
  cleaned_text = clean_text(input_string)
  strict_palindrome?(cleaned_text)
end

puts loose_palindrome?('madam') == true
puts loose_palindrome?('Madam') == true
puts loose_palindrome?("madam i'm adam") == true
puts loose_palindrome?('356653') == true
puts loose_palindrome?('356a653') == true
puts loose_palindrome?('123ab321') == false