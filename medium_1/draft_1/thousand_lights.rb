# i: Integer - total # of switches, total # of repetitions
#    bank of switches (1..n)
#    each entry initially 'off'
#    [false, false, false... false]
#
# o: array identifying which lights are on after n repetitions
#
# e: lights(5) == 2, 3, 5 are off, 1, 4, are on
#    lights(5) == [1, 4]
#        [true, false, false, true, false]
#    lights(10) == [1, 4, 9]
#        [true, false, false, true, false, false, false, false, true, false]
# d: integer => array
#
# a:
#    first pass -- toggle all switches
#    second pass -- toggle switches 2, 4, 6...
#    third pass -- toggle switches 3, 6, 9...
#    n pass -- toggle switches n, 2*n, 3*n
#
#    pseudocode:
#        create an array of 'false' of size 'n'
#        loop over the array 'n' times { |i| }
#            each time, flip the value of ith values
#        after all the looping, loop over the final array
#            and wherever the array has true, add (index+1) to
#            a final answer array
#
#        bool_arr = [false]*5
#        counter = 1
#        loop do
#            bool_arr = bool_arr.map.with_index { |el, i| el = !el if (i+1)%counter == 0 }
#            counter += 1
#            break if counter = bool_arr.size
#        end
#        bool_arr
#
#        bool_arr.map.with_index { |el, i| el == (i+1) if el }
#        bool_arr.compact
# c:

require 'byebug'

def init_lights(n)
  lights_arr = [false]*n
end

def bool_to_num(arr)
  arr.map.with_index { |el, i| el = (i + 1) if el }.compact
end

def lights(n)
  bool_arr = init_lights(n)
  counter = 1

  loop do
    bool_arr.map!.with_index { |el, i| ((i + 1) % counter).zero? ? !el : el }
    counter += 1
    break if counter > n
    # byebug
  end

  bool_to_num(bool_arr)
end

puts lights(5) == [1, 4]
puts lights(10) == [1, 4, 9]
