# i: first name, space, last name as a single string
# o: string with last name, comma, space, first name
# e: swap_name('Joe Roberts') == 'Roberts, Joe'
# d: string, array, string
# a:
#    split string, interpolate element zero, space, element one
# c:

def swap_name(string)
  "#{string.split[1]}, #{string.split[0]}"
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'
