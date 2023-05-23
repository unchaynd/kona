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

### Turing-style operations
Kona is meant to be a Turing-complete language that (given suitable translation) is executable by any Turing-complete hardware. So the most basic operations in Kona might be the operations that a Turing machine does. Generally speaking, a Turing machine fits the description outlined below.

> Note: For the sake of brevity here, wherever you see a number, it means *exactly* that number-- i.e., no more and no less --unless otherwise noted (e.g., preceded by "at least").

- The machine needs to be provided with 1 alphabet-- a finite set of symbols that contains 1 "blank" symbol and at least 1 other symbol.
- The machine has a 1-dimensional array that extends infinitely in both directions.
- Each cell in the array always contains 1 symbol from the alphabet. Only the blank symbol is allowed to occur infinitely in the array at any time during operation. The initial contents of the array need to be provided.
- The machine has 1 cursor that sits at 1 cell in the array at a time-- the "current" cell. The initial location of the cursor needs to be provided.
- The machine can move the cursor forward or backward along the array by 1 cell at a time.
- The machine can see, and can set, the current cell's symbol.
- The machine needs to be provided with a finite, non-empty set of "states". The machine is always in 1 of these states during operation-- the "current" state. What state to start operation in needs to be provided.
- Each state has 1 set of "instructions" associated with it. This set contains 1 instruction for each symbol in the alphabet.
- Each instruction tells the machine to do the following, in order:
> - set the symbol in the current cell
> - move the cursor forward or backward
> - either assume a given state, or end operation
- Once everything necessary is provided, the machine can start operation. It operates in discrete steps. Each step, it executes the instruction in the current state's set of instructions that corresponds to the symbol in the current cell.
- When (if) operation ends, the contents of the array are the result of the operation.

Because of the constraints in the real world, it's not naturally possible to have an infinite array, so Kona's definition of Turing-complete is based on a Turing machine that fits the description above but with these changes:
- The array is finite in length. (Note that it doesn't need to be *fixed* in lenght.)
- Each instruction also tells the machine what to do if the cursor can't move in the given direction (due to having reached an end of the array). This can either be to end operation, to or assume a given state.

So each Turing instruction in Kona would encode this information:
- its associated state
- its associated symbol
- which symbol to set the current cell to
- which direction to move the cursor
- what to do if the cursor can't move in that direction
- what to do if it can

For now, Kona assumes that all the logic in the hardware is discrete. Almost all discrete logic hardware in the world is binary... Kona doesn't need binary hardware logic, but for now, it's designed with binary logic in mind.
