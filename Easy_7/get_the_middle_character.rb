# i: non-empty string
# o: middle character or characters
#    if length.odd? return one
#    elsif length.even? return two char
# e:
=begin
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
=end
#
# d: string => string
# a:
#    check if string.size is odd or even
#    if string.size.odd? then we want string[size/2]
#    if string.size.event? then we want 
#        string[size/2] and string[size/2 - 1]
# c:

def center_of(string)
  center = ''

  if string.size.even?
    center = string[string.size/2 - 1 .. string.size/2]
  else
    center = string[string.size/2]
  end
  center
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
