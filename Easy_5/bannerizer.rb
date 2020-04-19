# i: line of text
#    rule: input always fits within terminal window
# o: print line of text within a box
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
#

def topline(string)
  '+' + '-'*(string.size+2) + '+'
end

def emptyline(string)
  '|' + ' '*(string.size+2) + '|'
end

def midline(string)
  "|" + string.center(string.size+2) + "|"
end

def box(string)
  topline(string) + "\n" + emptyline(string) + "\n" + midline(string) + "\n" + emptyline(string) + "\n" + topline(string)
end

puts box("Live Laugh Love")
puts box('To boldly go where no one has gone before.')