# i: lengths of 3 sides of a triangle -- Integers
#    assume integers, could be float
# o: symbol - :equilateral, :isosceles, :scalene, :invalid
#    :equilateral -- all three lengths are equal
#    :isosceles -- when two lengths are equal
#    : scalene -- when all lengths are different
#    :invalid -- sum of two shortest lengths <= longest length
#                & all lengths > 0
# e:
# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid
#
# d: integers => hash? => symbol
# a:
#    integers into an array
#    sort integers smallest to largest
#    input into Hash { largest:, middle:, smallest: }
#    invalid if any value in Hash is < 0
#    invalid if middle + smallest <= largest
#    scalene = largest != smallest && smallest != middle
#    equilateral if smallest == middle && middle == largest
#    else isosceles
#
#    create two functions, one to create the Hash
#    one to return the results
# c:

def triangle_hash(i_1, i_2, i_3)
  lengths = [i_1, i_2, i_3].sort
  {
    smallest: lengths[0],
    middle: lengths[1],
    longest: lengths[2]
  }
end

def triangle(i_1, i_2, i_3)
  trihash = triangle_hash(i_1, i_2, i_3)
  case
  when trihash.values.any? { |v| v <= 0 }
    :invalid
  when trihash[:middle] + trihash[:smallest] <= trihash[:longest]
    :invalid
  when trihash[:smallest] != trihash[:middle] && trihash[:middle] != trihash[:longest] && trihash[:smallest] != trihash[:longest]
    :scalene
  when trihash[:smallest] == trihash[:middle] && trihash[:middle] == trihash[:longest]
    :equilateral
  else
    :isosceles
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
