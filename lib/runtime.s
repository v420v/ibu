.set HEAP_CAPACITY, 436870912 # 0.5GB

# Allocator
.bss
heap:
	.zero	HEAP_CAPACITY
heap_size:
	.zero	8

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

# func alloc(size i32) *u8;
# size   16(rbp)
.global	alloc
alloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	16(%rbp), %rax
	movq    %rax, -24(%rbp)
	movq	heap_size(%rip), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	cmpq	$HEAP_CAPACITY-1, %rax
	jbe	.L.alloc.2
	movl	$0, %eax
	jmp	.L.alloc_ret_null
.L.alloc.2:
	movq	heap_size(%rip), %rax
	leaq	heap(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	heap_size(%rip), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, heap_size(%rip)
	movq	-8(%rbp), %rax
.L.alloc_ret_null:
	popq	%rbp
	ret


