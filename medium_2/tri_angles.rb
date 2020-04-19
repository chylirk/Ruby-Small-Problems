def triangle(ang1, ang2, ang3)
  angles = [ang1, ang2, ang3]

  case
  when angles.any? { |v| v <= 0 } || angles.reduce(:+) != 180
    :invalid
  when angles.any?(90)
    :right
  when angles.any? { |v| v > 90 }
    :obtuse
  else :acute
  end
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
