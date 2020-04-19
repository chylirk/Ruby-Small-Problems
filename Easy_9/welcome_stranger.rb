# i: array, hash
#    array contains 2+ elements that => name
#    hash contains two keys (:title, :occupation) and values
# o: greeting that uses the person's full name and title
# e: greetings(['John', 'Q', 'Doe'],
#              { title: 'Master', occupation: 'Plumber' })
#    == 'Hello, John Q Doe! Nice to have a Master Plumber around.'
# d: array + hash = string
# a:
#    join elements in the array to get full name
#    interpolate hash elements :title and :occupation
# c:

require 'pry-byebug'

def greetings(arr, hsh)
  full_name = arr.join(' ')
  title = hsh[:title]
  occupation = hsh[:occupation]
  "Hello, #{full_name}! Nice to have a #{title} #{occupation} around."
end

puts greetings(%w(John Q Doe), title: 'Master', occupation: 'Plumber') == 'Hello, John Q Doe! Nice to have a Master Plumber around.'
