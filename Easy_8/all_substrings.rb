# i: string
# o: list of all substrings of a string
#    ordered by where in the string the substring begins
#    utilize substrings_at_start method from before
#    for a given position, return shortest to longest
# e: 
=begin
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
=end
#
# a:
#    substrings_at_start for the entire string
#    slice string (1..end)
#    substrings_at_start for the entire string
#    slice string(1..end)
#    with a loop from i to the size of the string
#    take the substrings_at_start i.upto(string.size-1)

def substrings_at_start(string, initial_index)
  result = []
  0.upto(string.size-1) do |i|
    result << string[initial_index..i]
  end
  result
end

def substrings(string)
  all_results = []
  0.upto(string.size-1) do |i|
    all_results << substrings_at_start(string, i)
  end
  all_results.flatten.uniq.reject { |char| char == '' }
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]