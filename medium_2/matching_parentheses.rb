# i: string
# o: boolean
#        true if parentheses are balanced
#            balanced: parenthesis occur in matching '(' and ')' pairs
#                balanced pairs must start with a '(' not ')'
#        false otherwise
# edge cases: one paranthesis?
#             no parentheses == true
#             parentheses inside parentheses == true if balanced
# examples: 
# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false
#
# d: string => array => boolean
#        care about order
#        no key-value relationship
# a:
#    remove all characters that are not parenthesis
#    compare the parenthesis to see if they are balanced
#        keep track of the number of open parentheses
#        keep track of closed parentheses
#        if I encounter a closed parenthesis, there must be an open
#    maintain a counter for 'open parentheses' and increment when
#        I encounter an open parenthesis
#        and decrement when I encounter a closed parentheses
#    if the counter ever becomes negative, then the parentheses are not balanced
#    if the counter does not finish at zero, then not balanced
# c:

def balanced?(str)
  balance = 0
  balanced = true
  str.scan(/[\(\)]/).each do |para|
    para == '(' ? balance += 1 : balance -= 1
    balanced = false if balance < 0
  end
  balanced = false if balance != 0
  balanced 
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
