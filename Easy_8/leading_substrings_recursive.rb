def leading_substrings(string)
  result = (string.empty?) ? '' : [string] << leading_substrings(string[0...-1])
end

puts leading_substrings('abcde')