# frozen_string_literal: true

# i: odd integer, minimum 7
# o: 8-pointed star of asterisks on nxn grid
# e:
# star(7)
# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *
#
# star(9)
# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *
#
# d: integer => arrays => string?
# a:
#    create a method for outputting the appropriate row
#        (given grid size and row num)
#    create a method for iterating through the row nums and outputting the row

def output_line(size, gap)
  str = ('*' + ' ' * gap + '*' + ' ' * gap + '*') unless gap.negative?

  if gap == -1
    puts '*' * size
  else
    puts str.center(size)
  end
end

def star(size)
  line = 1
  center = (size / 2 + 1)
  loop do
    break if line > size

    gap = (center - line).abs - 1

    output_line(size, gap)

    line += 1
  end
end

# star(7)
# puts ''
# star(9)
