# Kona
Kona is a computer language I'm creating that is meant to be beautiful, powerful, efficient, and compatible.

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
Kona is meant to be a Turing-complete language that (given suitable translation) is executable by any Turing-complete hardware. So the most basic operations in Kona might be the operations that a Turing machine does. Loosely speaking, a Turing machine follows these rules:

1. The machine has an alphabet-- a finite set of symbols that contains exactly 1 "blank" symbol and at least 1 other symbol.
1. The machine has a 1-dimensional array, the length of which is at least 1, and which extends forward and backward as far as it needs to during operation.
1. Each cell in the array always contains exactly 1 symbol from the alphabet. All cells that have not been set contain the blank symbol.
1. The machine has a cursor that sits at exactly 1 cell in the array at a time.
1. The machine can move the cursor forward or backward over the array by exactly 1 cell at a time.
1. The machine can read, and set, the symbol that is on the cell that the cursor is at.
1. The machine has a finite, non-empty set of states, exactly 1 of which it is always in.
1. The machine has a register that stores the state that the machine is in.
1. Each state has a set of instructions associated with it. This set contains exactly 1 instruction for each symbol in the alphabet.
1. Each instruction is a directive for the machine to do the following 3 things in sequence:
> 1. set the symbol in the cell that the cursor is at
> 1. move the cursor forward or backward
> 1. either assume a given state or end operation
1. Before operation begins, the machine is initialized to a state it to start in. The machine operates in discrete steps. Each step, it executes the instruction in the current state's set of instructions that corresponds to the symbol in the cell that the cursor is at.
1. When (if) operation ends, the contents of the array are the result of the operation.

Because of the constraints of the real world, it's not naturally possible to have an infinite array, so Kona's definition of Turing-complete is based on a Turing machine where each instruction that tries to move the cursor also specifies the state to assume if the cursor can't move in the specified direction (due to reaching an edge of the array).

So each Turing instruction in Kona would encode this information:
- its associated state
- its associated symbol
- which symbol to set the current cell to
- which direction to move the cursor
- what state to assume if the cursor can't move in that direction
- what state to assume otherwise

For now, Kona assumes that all the logic in the hardware is discrete. Almost all discrete logic hardware in the world is binary... Kona doesn't need binary hardware logic, but for now, it's designed with binary logic in mind.
