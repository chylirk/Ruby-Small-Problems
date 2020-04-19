# i: string
# o: hash with three entries
#    # of characters lowercase
#    # of characters uppercase
#    # number of neither characters
# e: ('AbCd + Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# d: string
# a:
#    create an empty hash with the three keys, each 0
#    scan the string
#    every time it matches the pattern for uppercase letter
#        increment the appropriate hash by 1
#    return the hash
# c:

def letter_case_count(string)
  letter_count_hash = { lowercase: 0, uppercase: 0, neither: 0 }

  string.scan(/[A-Z]/) { letter_count_hash[:uppercase] += 1 }
  string.scan(/[a-z]/) { letter_count_hash[:lowercase] += 1 }
  string.scan(/\W/) { letter_count_hash[:neither] += 1 }

  letter_count_hash
end

puts letter_case_count('AbCd +Ef')
