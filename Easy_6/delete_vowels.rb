# i: array of strings
# o: array of same string values, except vowels (a,e,i,o,u) removed
# e:
#    remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
#    remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
#    remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
# d: array => array
# a: 
#    split string by spaces
#    each sub-string gets gsub (aeiou) becomes nothing
#    array
# c:

def remove_vowels(string_array)
  string_array.map do |substring|
    substring.gsub(/[AEIOUaeiou]/, '')
  end
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']