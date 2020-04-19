# o: all odd numbers from 1 to 99 inclusive, separate lines
# d: string? array?
# a: each, puts
# c:

(1..99).each { |num| puts num if num.odd? }

1.upto(99).each { |num| puts num unless num.even? }
