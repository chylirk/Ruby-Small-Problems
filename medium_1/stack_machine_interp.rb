# in ruby, a stack is easily implemented as an array that just uses the push + pup methods
# register: current value
#
# operaitons that require two values pop the topmost item from the stack, perform the operation
# using the popped value and the register value, and then store the result back in the register
#
# e:
#    stack = [3, 6, 4]
#    register = 7
#    MULT
#    stack = [3, 6]
#    register = 28
#    MULT
#    stack = [3]
#    register = 168
#
# commands:
#    n: place a value in the 'register'
#    PUSH: push the register value on to the stack, leave value in register
#    ADD: pops a value from the stack, adds it to the register value
#         storing result in register
#    SUB: pops value from stack, subtracts it from register, stores result
#         in register
#    MULT: pop val from stack, multiply by register, store result in register
#    DIV: pop val from stack, divid it into regist, store integer result
#         in the register
#    MOD: pop val from stack, divide into reg, store integer remainder in reg
#    POP: remove topmost item from stack and place in register
#    PRINT: print the register value
#
#    initialize register to 0
#
# i: Command (string)
# o: Stack Machine operations (contigent on command)
# e:
#    minilang('PRINT')
#    0
#
#    minilang('5 PUSH 3 MULT PRINT')
#    15
#
#    minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
#    5
#    3
#    8
#
#    minilang('6 PUSH')
#    (nothing printed)
#
# d: string => array => integer
# a:
#    initialize variable register as 0
#    initialize variable stack as an empty array
#    split the string by spaces
#    loop over the elements in the string
#     if it's an integer, append it to the register array
#     if it's a command, do the command action
#    end
#
