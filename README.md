# Kona
Kona is a computer language I'm creating that is meant to be beautiful, powerful, efficient, and compatible.

Please feel free to submit issues with any thoughts or suggestions you have! :D

## The core goals of Kona
1. Kona should be a joy to use. It should be visually beautiful, and easy to read, understand, and write.
3. Kona should be Turing-complete.
4. Given suitable translation, a block of Kona code should be executable by any Turing-complete hardware.
5. Kona should allow the same control over the hardware that the hardware's machine code allows, when the user wants this kind of control. In this case, the hardware-dependent elements of the code would be exempt from the previous point.
6. Kona should allow arbitrarily low-level manipulation of and operation on digital data.
7. At runtime, everything outside the user's control, but within the machine code's control, should be perfectly efficient. Where resource tradeoffs are necessary, the user should be given the same control over these tradeoffs that the hardware's machine code allows.
8. When writing Kona code, the user should never have to give up spatial, temporal, or energetic efficiency, for the sake of making the code more beautiful, readable, maintainable, flexible, or stable; or vice versa.

## Concepts
This area is kinda just a publically visible scratchpad for my ideas for Kona.

### The Most Basic Computer Operations
Kona grammar:
```
program -> intsruction list
instruction list -> instruction + (instruction separator + instruction list)?
instruction -> instruction id + id separator + (step | jump | write)

step -> step word + space + direction
jump -> jump word + space
write ->

direction ->
instruction separator ->
instruction identifier ->
symbol ->

forward ~ <iid>
backward ~ <iid>
jump to <iid> if <symbol> 
write <symbol>
```
