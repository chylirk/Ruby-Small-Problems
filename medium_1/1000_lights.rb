# i: integer, n
# o: array, which lights are on after n repetitions
# e:
#    1000_lights(5) == [1, 4]
#    1000_lights(10) == [1, 4, 9]
# d: integer => array => transform the array => array
# a:
#    take input n
#    create zero-array, size n
#    increment array
#    incremented n times?
#        if yes - break
#        if no - repeat loop starting with increment
#    if break, get indexes of elements equal to 1
#    return array of index values
#
#    logic within pseudo-code:
#
#    flip switch [checked]
#        a = (a == 1 ? 0 : 1)
#    end
#
#    def switch(int)
#        int = (int == 1 ? : 0 : 1)
#    end
#    
#    increment array
#        loop over elements in the array
#        if the index value % n == 0
#            flip the light switch
#        else
#            light switch stays the same
#        return the 'flipped' array
#
#    def increment(arr, n)
#      arr.map.with_index do |v, i|
#        i % n == 0 ? switch(v) : v
#      end
#    end
#
#    get indexes of elements based on value
#    result_arr = []
#        arr.each_with_index { |v, i| result_arr << (i + 1) if v == 1 }
#    end
# c:
require 'byebug'

ON = 1.freeze
OFF = 0.freeze

def switch(int)
  int = (int == ON ? OFF : ON)
end

def increment_arr(arr, interval)
  arr.map.with_index do |v, i|
    (i+1) % interval == 0 ? switch(v) : v
  end
end

def lit_indices(arr)
  result = []
  arr.each_with_index do |v, i|
    result << i + 1 if v == ON
  end
  result
end

def thousand_lights(n)
  # byebug
  lights = [0] * n
  counter = 1
  loop do
    break if counter > lights.size
    lights = increment_arr(lights, counter)
    counter += 1
  end
  lit_indices(lights)
end


puts thousand_lights(5) == [1, 4]
puts thousand_lights(10) == [1, 4, 9]
puts thousand_lights(1000)