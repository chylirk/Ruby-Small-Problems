# i: string
#    string always contains 1+ characters
# o: hash - three entries - % of characters in string lowercase
#                           % of characters in string uppercase
#                           % of characters in string neither
#    values should be float, one digit?
#    keys are symbols
#    { lowercase: __, uppercase: __, neither: __ }
# e: 
# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
# d: string => array => hash
# a:
#    

def letter_percentages(string)
  { 
    lowercase: 100 * string.count("/[a-z]/").to_f / string.length,
    uppercase: 100 * string.count("/[A-Z]/").to_f / string.length,
    neither: 100 * (string.length - string.count("/[A-Za-z]/")) / string.length }
end

puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
