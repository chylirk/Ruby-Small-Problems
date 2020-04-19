# i: odd integer (n)
# o: diamond of '*' in nxn grid

# puts ' '*1 + '*'
# puts '*'*3
# puts ' '*1 + '*' 
# puts ' '
# puts ' '*3 + '*'*1
# puts ' '*2 + '*'*3
# puts ' '*1 + '*'*5
# puts ' '*0 + '*'*7
# puts ' '*1 + '*'*5
# puts ' '*2 + '*'*3
# puts ' '*3 + '*'*1

def diamond(n)
  mid = n/2
  (mid + 1).times do |i|
    puts ' '*(mid - i) + '*'*((i * 2) + 1)
  end
  (mid).times do |i|
    puts ' '*(i + 1) + '*'*(n - 2*(i+1))
  end
end

diamond(9)
