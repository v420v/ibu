
.text

# func syscall(trap *i8, a1 *i8, a2 *i8, a3 *i8) i64;
# a3   16+24(rbp)
# a2   16+16(rbp)
# a1   16+8(rbp)
# trap 16(rbp)
.global syscall
syscall:
	push %rbp
	movq %rsp, %rbp
	movq 16(%rbp), %rax
	movq 16+8(%rbp), %rdi
	movq 16+16(%rbp), %rsi
	movq 16+24(%rbp), %rdx
	syscall
	leave
	ret
