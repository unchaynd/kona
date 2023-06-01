.text
.global _start

_start:
	mov	r7, #4		@ "write" supervisor call code
	add	sp, sp, #8	@ Move the stack pointer past the first argument
	ldr	r1, [sp]	@ Load the address at the stack pointer into r1
	cmp	r1, #0		@ Test whether the address is null
	beq	exit		@ Exit if so
@ Determine the length of the first argument
	mov	r2, r1		@ Copy r1 into r2
loop:	ldrb	r0, [r2], #1	@ Load the byte at the address in r2 into r1, and then increment r2
	cmp	r0, #0		@ Test whether the byte is null
	bne	loop		@ Continue traversing memory if the byte is non-null
	sub	r2, r2, #1	@ Decrement r2 so that it points to the null terminator
	sub	r2, r2, r1	@ Subtract the address of the beginning of the argument from r2. Now r2 contains total length of the first argument
@ Write the first argument to the standard output
	mov	r0, #1		@ Standard output file descriptor
	svc	0		@ Supervisor call
@ Exit
exit:	mov	r7, #1		@ "exit" supervisor call code
	mov	r0, #0		@ Error code 0 (no error)
	svc	0		@ Supervisor call
