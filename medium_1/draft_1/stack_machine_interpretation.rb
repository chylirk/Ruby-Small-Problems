# i: value n is the register
#        initialize register to 0
#    rule - don't modify the stack
# i: string commands (PUSH, ADD, SUB, MULT...)
#    and values to be manipulated with string commands
# o: manipulation of language with commands
#    PUSH: push the register value on to the stack, leave value in register
#    ADD: pops a value from stack and adds to register, store result in register
#    SUB: pop value from stack, subtract from register, store in register
#    MULT: pop val from stack, multiply by register, store in register
#    DIV: pop val from stack, divide by reg, store result in reg
#    MOD: pop val stack, divide by regi, store remainder in register
#    POP remove topmost item from stack, place in register
#    PRINT print the register value
#
#    assume all programs passed into method are correct programs
#
#
#
# e: minilang('PRINT') == 0
#    minilang('5 PUSH 3 MULT PRINT') == 15
#    minilang('5 PRINT PUSH 3 PRINT ADD PRINT') ==
#        5
#        3
#        8
# d: string ==> array, loop array => case statements
# a:
#    initialize register as 0
#    initialize an empty stack array
#
#    split the string by spaces
#    if there's an integer in the first idx, that's the register
#    else the register is 0
#
#    if the element is a string command, do the command
#        PUSH - push the register value into the stack array
#        ADD - register += stack.pop
#        SUB - register -= stack.pop
#        MULT - register *= stack.pop
#        DIV - register = register / stack.pop
#        MOD - register = register % stack.pop
#        POP - register = stack.pop
#        PRINT - puts register
#

require 'byebug'

def command(reg = 0, stack = [], command)
  case command.downcase
  when 'push' then stack << reg
  when 'add' then reg += stack.pop
  when 'sub' then reg -= stack.pop
  when 'mult' then reg = 8 # reg.to_i * stack.pop.to_i
  when 'div' then reg = reg.to_i / stack.pop.to_i
  when 'mod' then reg = reg.to_i % stack.pop.to_i
  when 'pop' then reg = stack.pop
  when 'print' then puts reg
  end
end

test_command = '5 PRINT PUSH 3 PRINT ADD PRINT'

def minilang(cmnd)
  register = 0
  stack_arr = []
  cmnd.split.each do |elem|
    if elem.to_i.to_s == elem
      register = elem
    else
      case elem.downcase
      when 'push' then stack_arr << register
      when 'add' then register = register.to_i + stack_arr.pop.to_i
      when 'sub' then register = register.to_i - stack_arr.pop.to_i
      when 'mult' then register = register.to_i * stack_arr.pop.to_i
      when 'div' then register = register.to_i / stack_arr.pop.to_i
      when 'mod' then register = register.to_i % stack_arr.pop.to_i
      when 'pop' then register = stack_arr.pop
      when 'print' then puts register
      end
    end
  end
end

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')