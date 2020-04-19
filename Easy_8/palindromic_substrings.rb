def substrings_at_start(string)
  result = []
  0.upto(string.size-1) do |i|
    result << string[0..i]
  end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |idx|
    substring = string[idx..-1]
    results.concat(substrings_at_start(substring))
  end
  results
end

def palindromic_substrings(string)
  substrings(string).select { |substr| substr == substr.reverse && substr.size > 1}
end

puts palindromic_substrings('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]