# Kona
Kona is a computer language I am creating that is meant to be beautiful, powerful, efficient, and compatible.

Please feel free to submit issues with any thoughts or suggestions you have! :D

## The basic goals of Kona
1. It should be fun and easy to use.
2. It should be visually beautiful, and easy to read and understand.
3. It should be Turing-complete.
4. A given block of Kona code should be executable by any Turing-complete hardware (given appropriate translation).
5. It should allow the same control over the hardware that the hardware's machine code allows, when the user wants this kind of control. In this case, the hardware-dependent elements of the code would be exempt from the previous point.
6. It should allow arbitrarily low-level manipulation of and operation on digital data.
7. At runtime, everything outside the user's control should be perfectly efficient. Where tradeoffs are necessary, the user should be given full control over these tradeoffs.
8. The user should never have to sacrifice code efficiency for code beauty, readability, maintainability, flexibility, or integrity.

## Concepts

### Turing instructions
Kona is meant to be a Turing-complete language that (given suitable translation) is executable by any Turing-complete hardware. So the "atoms" of Kona might be the types of operations that a Turing machine does. Loosely speaking, a Turing machine follows these rules:

1. The machine has an alphabet-- a finite set of symbols that contains exactly 1 "blank" symbol and at least 1 other symbol.
1. The machine has an array of cells that extends, as far as it needs to during execution, forward and backward.
1. Each cell always contains exactly 1 symbol from the alphabet. All cells that have not been set contain the blank symbol.
1. The machine has a cursor that sits at exactly 1 cell in the array at a time.
1. The machine can move the cursor forward or backward over the array by exactly 1 cell at a time.
1. The machine can read, and set, the symbol that is on the cell that the cursor is at.
1. The machine has a finite, non-empty set of states, exactly 1 of which it is always in. This set may contain the "halt" state. Exactly 1 state from this set is chosen to be the "start" state, which the machine starts execution in.
1. The machine has a register that stores the state that the machine is in.
1. Except for the halt state, each state has a set of instructions-- exactly 1 for each symbol in the alphabet.
1. Each instruction is a directive for the machine to do the following 3 things in sequence: set the symbol in the cell that the cursor is at to a different symbol, or leave it unchanged; move the cursor forward, backward, or not at all; set the register to a given state (provided in the instruction), thereby assuming that state.
1. The machine operates in discrete steps. The machine starts in the start state. Each step, if the machine is not in the halt state, it executes the instruction in the current state's set of instructions that corresponds to the symbol in the cell that the cursor is at.
1. When (if) the machine reaches the halt state, the contents of the array are the result of the computation.
