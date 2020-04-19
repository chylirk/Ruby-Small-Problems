# def shout_out_to(name)
#   name.chars.each { |c| c.upcase! }

#   puts 'HEY ' + name
# end

# shout_out_to('you') # expected: 'HEY YOU'

# define a method on line one - takes one parameter 'name'
# line two, call the chars method on name, returns an array of strings
# line two, call the each method on name.chars - iterates through the strings
#    returns the original array
# block defined by {}
#    call the upcase! method on c, the string element
#        this is destructive, but the return value is not used by the each method

def shout_out_to(name)
  name = name.chars.map! { |c| c.upcase! }.join

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'