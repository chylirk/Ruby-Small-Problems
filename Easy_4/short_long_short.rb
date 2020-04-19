# i: two strings, different lengths
# o: concatenate shorter string, longer string, shorter string
# e: ('abc', 'defgh') == 'abcdefghabc'
# e: ('', 'xyz') == 'xyz'
# exceptions : empty strings?
# d: string, string concatenation
# a: string, length, concat
# c:

def short_long_short(string1, string2)
  if string1.length > string2.length
    long_string = string1
    short_string = string2
  else
    long_string = string2
    short_string = string1
  end
  "#{short_string + long_string + short_string}"
end

puts short_long_short('abc', 'defgh')
puts short_long_short('', 'xyz')
