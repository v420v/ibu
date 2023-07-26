# builtin start
.text
.global write
write:
	movq $1, %rax
	syscall
	ret
.global open
open:
	movq $2, %rax
	syscall
	ret
.global read
read:
	movq $0, %rax
	syscall
	ret
.global close
close:
	movq $3, %rax
	syscall
	ret
.global exit
exit:
	movq $60, %rax
	syscall

.bss
heap:
	.zero	5040000
heap_size:
	.zero	8

.text
.global	alloc
alloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	heap_size(%rip), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	cmpq	$5039999, %rax
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




.text
putchar:
	subq	$24, %rsp
	movl	$1, %edx
	movb	%dil, 12(%rsp)
	leaq	12(%rsp), %rsi
	movl	$1, %edi
	movq $1, %rax
	syscall
	movl	$1, %eax
	addq	$24, %rsp
	ret
putstr:
	pushq	%rbp
	xorl	%ebp, %ebp
	pushq	%rbx
	movq	%rdi, %rbx
	pushq	%rcx
.L.putstr.4:
	movsbl	(%rbx), %edi
	testb	%dil, %dil
	je	.L.putstr.8
	call	putchar
	addq $1, %rbx # HERE
	addq	%rax, %rbp
	jmp	.L.putstr.4
.L.putstr.8:
	movq	%rbp, %rax
	popq	%rdx
	popq	%rbx
	popq	%rbp
	ret
.data
.LC.putunum.0:
	.byte 48
	.byte 49
	.byte 50
	.byte 51
	.byte 52
	.byte 53
	.byte 54
	.byte 55
	.byte 56
	.byte 57
	.byte 65
	.byte 66
	.byte 67
	.byte 68
	.byte 69
	.byte 70
	.byte 0
.LC.putunum.1:
	.byte 48
	.byte 49
	.byte 50
	.byte 51
	.byte 52
	.byte 53
	.byte 54
	.byte 55
	.byte 56
	.byte 57
	.byte 97
	.byte 98
	.byte 99
	.byte 100
	.byte 101
	.byte 102
	.byte 0
	.text
putunum:
	pushq	%r13
	movl	%edx, %r13d
	pushq	%r12
	movl	%esi, %r12d
	pushq	%rbp
	xorl	%ebp, %ebp
	pushq	%rbx
	movq	%rdi, %rbx
	pushq	%rcx
	cmpq	%r12, %rdi
	jb	.L.putnum.10
	movzbl	%dl, %ecx
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%r12
	movl	%ecx, %edx
	movq	%rax, %rdi
	call	putunum
	movq	%rax, %rbp
.L.putnum.10:
	testb	%r13b, %r13b
	leaq	.LC.putunum.0(%rip), %rax
	leaq	.LC.putunum.1(%rip), %rcx
	cmovneq	%rax, %rcx
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%r12
	movsbl	(%rcx,%rdx), %edi
	call	putchar
	popq	%rdx
	popq	%rbx
	addq	%rbp, %rax
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.data
.L.printf.C2:
	.byte 40
	.byte 110
	.byte 105
	.byte 108
	.byte 41
	.byte 0
.L.printf.C3:
	.byte 48
	.byte 120
	.byte 0
.text
.global	printf
printf:
	pushq	%r13
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %rbp
	pushq	%rbx
	xorl	%ebx, %ebx
	subq	$88, %rsp
	leaq	128(%rsp), %rax
	movq	%rsi, 40(%rsp)
	movq	%rax, 16(%rsp)
	leaq	32(%rsp), %rax
	movq	%rdx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	movl	$8, 8(%rsp)
	movq	%rax, 24(%rsp)
.L.printf.17:
	movsbl	0(%rbp), %edi
	testb	%dil, %dil
	je	.L.printf.50
	leaq	1(%rbp), %r12
	cmpb	$37, %dil
	jne	.L.printf.18
	movb	1(%rbp), %al
	cmpb	$105, %al
	je	.L.printf.19
	jg	.L.printf.20
	cmpb	$99, %al
	je	.L.printf.21
	cmpb	$100, %al
	je	.L.printf.19
	movl	$37, %edi
	cmpb	$37, %al
	je	.L.printf.49
	jmp	.L.printf.23
.L.printf.20:
	cmpb	$112, %al
	je	.L.printf.24
	cmpb	$115, %al
	je	.L.printf.25
	jmp	.L.printf.23
.L.printf.21:
	movl	8(%rsp), %edx
	cmpl	$47, %edx
	ja	.L.printf.26
	movl	%edx, %eax
	addl	$8, %edx
	addq	24(%rsp), %rax
	movl	%edx, 8(%rsp)
	jmp	.L.printf.27
.L.printf.26:
	movq	16(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 16(%rsp)
.L.printf.27:
    movsbl	(%rax), %edi
	jmp	.L.printf.49
.L.printf.25:
	movl	8(%rsp), %edx
	cmpl	$47, %edx
	ja	.L.printf.29
	movl	%edx, %eax
	addl	$8, %edx
	addq	24(%rsp), %rax
	movl	%edx, 8(%rsp)
	jmp	.L.printf.30
.L.printf.29:
	movq	16(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 16(%rsp)
.L.printf.30:
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	jne	.L.printf.47
	jmp	.L.printf.48
.L.printf.24:
	movl	8(%rsp), %edx
	cmpl	$47, %edx
	ja	.L.printf.32
	movl	%edx, %eax
	addl	$8, %edx
	addq	24(%rsp), %rax
	movl	%edx, 8(%rsp)
	jmp	.L.printf.33
.L.printf.32:
	movq	16(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 16(%rsp)
.L.printf.33:
	movq	(%rax), %r13
	testq	%r13, %r13
	jne	.L.printf.34
.L.printf.48:
	leaq	.L.printf.C2(%rip), %rdi
.L.printf.47:
	call	putstr
.L.printf.46:
	addq	%rax, %rbx
	jmp	.L.printf.28
.L.printf.34:
	leaq	.L.printf.C3(%rip), %rdi
	call	putstr
	xorl	%edx, %edx
	movl	$16, %esi
	movq	%r13, %rdi
	movq	%rax, %rbp
	call	putunum
	addq	%rax, %rbp
	addq	%rbp, %rbx
	jmp	.L.printf.28
.L.printf.19:
	movl	8(%rsp), %edx
	cmpl	$47, %edx
	ja	.L.printf.35
	movl	%edx, %eax
	addl	$8, %edx
	addq	24(%rsp), %rax
	movl	%edx, 8(%rsp)
	jmp	.L.printf.36
.L.printf.35:
	movq	16(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 16(%rsp)
.L.printf.36:
	movl	(%rax), %ebp
	testl	%ebp, %ebp
	jns	.L.printf.37
	movl	$45, %edi
	negl	%ebp
	call	putchar
	addq	%rax, %rbx
.L.printf.37:
	movl	%ebp, %edi
	xorl	%edx, %edx
	movl	$10, %esi
	call	putunum
	jmp	.L.printf.46
.L.printf.49:
	call	putchar
	jmp	.L.printf.46
.L.printf.23:
	movl	$37, %edi
.L.printf.18:
	call	putchar
	movq	%rbp, %r12
	addq	%rax, %rbx
.L.printf.28:
	leaq	1(%r12), %rbp
	jmp	.L.printf.17
.L.printf.50:
	addq	$88, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret

# eprintf
.text
eputchar:
	subq	$24, %rsp
	movl	$1, %edx
	movb	%dil, 12(%rsp)
	leaq	12(%rsp), %rsi
	movl	$2, %edi
	movq $1, %rax
	syscall
	movl	$1, %eax
	addq	$24, %rsp
	ret
eputstr:
	pushq	%rbp
	xorl	%ebp, %ebp
	pushq	%rbx
	movq	%rdi, %rbx
	pushq	%rcx
.L.eputstr.4:
	movsbl	(%rbx), %edi
	testb	%dil, %dil
	je	.L.eputstr.8
	call	eputchar
	addq $1, %rbx # HERE
	addq	%rax, %rbp
	jmp	.L.eputstr.4
.L.eputstr.8:
	movq	%rbp, %rax
	popq	%rdx
	popq	%rbx
	popq	%rbp
	ret
.data
.LC.eputunum.0:
	.byte 48
	.byte 49
	.byte 50
	.byte 51
	.byte 52
	.byte 53
	.byte 54
	.byte 55
	.byte 56
	.byte 57
	.byte 65
	.byte 66
	.byte 67
	.byte 68
	.byte 69
	.byte 70
	.byte 0
.LC.eputunum.1:
	.byte 48
	.byte 49
	.byte 50
	.byte 51
	.byte 52
	.byte 53
	.byte 54
	.byte 55
	.byte 56
	.byte 57
	.byte 97
	.byte 98
	.byte 99
	.byte 100
	.byte 101
	.byte 102
	.byte 0
	.text
eputunum:
	pushq	%r13
	movl	%edx, %r13d
	pushq	%r12
	movl	%esi, %r12d
	pushq	%rbp
	xorl	%ebp, %ebp
	pushq	%rbx
	movq	%rdi, %rbx
	pushq	%rcx
	cmpq	%r12, %rdi
	jb	.L.eputnum.10
	movzbl	%dl, %ecx
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%r12
	movl	%ecx, %edx
	movq	%rax, %rdi
	call	eputunum
	movq	%rax, %rbp
.L.eputnum.10:
	testb	%r13b, %r13b
	leaq	.LC.eputunum.0(%rip), %rax
	leaq	.LC.eputunum.1(%rip), %rcx
	cmovneq	%rax, %rcx
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%r12
	movsbl	(%rcx,%rdx), %edi
	call	eputchar
	popq	%rdx
	popq	%rbx
	addq	%rbp, %rax
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.data
.L.eprintf.C2:
	.byte 40
	.byte 110
	.byte 105
	.byte 108
	.byte 41
	.byte 0
.L.eprintf.C3:
	.byte 48
	.byte 120
	.byte 0
.text
.global	eprintf
eprintf:
	pushq	%r13
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %rbp
	pushq	%rbx
	xorl	%ebx, %ebx
	subq	$88, %rsp
	leaq	128(%rsp), %rax
	movq	%rsi, 40(%rsp)
	movq	%rax, 16(%rsp)
	leaq	32(%rsp), %rax
	movq	%rdx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	movl	$8, 8(%rsp)
	movq	%rax, 24(%rsp)
.L.eprintf.17:
	movsbl	0(%rbp), %edi
	testb	%dil, %dil
	je	.L.eprintf.50
	leaq	1(%rbp), %r12
	cmpb	$37, %dil
	jne	.L.eprintf.18
	movb	1(%rbp), %al
	cmpb	$105, %al
	je	.L.eprintf.19
	jg	.L.eprintf.20
	cmpb	$99, %al
	je	.L.eprintf.21
	cmpb	$100, %al
	je	.L.eprintf.19
	movl	$37, %edi
	cmpb	$37, %al
	je	.L.eprintf.49
	jmp	.L.eprintf.23
.L.eprintf.20:
	cmpb	$112, %al
	je	.L.eprintf.24
	cmpb	$115, %al
	je	.L.eprintf.25
	jmp	.L.eprintf.23
.L.eprintf.21:
	movl	8(%rsp), %edx
	cmpl	$47, %edx
	ja	.L.eprintf.26
	movl	%edx, %eax
	addl	$8, %edx
	addq	24(%rsp), %rax
	movl	%edx, 8(%rsp)
	jmp	.L.eprintf.27
.L.eprintf.26:
	movq	16(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 16(%rsp)
.L.eprintf.27:
    movsbl	(%rax), %edi
	jmp	.L.eprintf.49
.L.eprintf.25:
	movl	8(%rsp), %edx
	cmpl	$47, %edx
	ja	.L.eprintf.29
	movl	%edx, %eax
	addl	$8, %edx
	addq	24(%rsp), %rax
	movl	%edx, 8(%rsp)
	jmp	.L.eprintf.30
.L.eprintf.29:
	movq	16(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 16(%rsp)
.L.eprintf.30:
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	jne	.L.eprintf.47
	jmp	.L.eprintf.48
.L.eprintf.24:
	movl	8(%rsp), %edx
	cmpl	$47, %edx
	ja	.L.eprintf.32
	movl	%edx, %eax
	addl	$8, %edx
	addq	24(%rsp), %rax
	movl	%edx, 8(%rsp)
	jmp	.L.eprintf.33
.L.eprintf.32:
	movq	16(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 16(%rsp)
.L.eprintf.33:
	movq	(%rax), %r13
	testq	%r13, %r13
	jne	.L.eprintf.34
.L.eprintf.48:
	leaq	.L.eprintf.C2(%rip), %rdi
.L.eprintf.47:
	call	eputstr
.L.eprintf.46:
	addq	%rax, %rbx
	jmp	.L.eprintf.28
.L.eprintf.34:
	leaq	.L.eprintf.C3(%rip), %rdi
	call	eputstr
	xorl	%edx, %edx
	movl	$16, %esi
	movq	%r13, %rdi
	movq	%rax, %rbp
	call	eputunum
	addq	%rax, %rbp
	addq	%rbp, %rbx
	jmp	.L.eprintf.28
.L.eprintf.19:
	movl	8(%rsp), %edx
	cmpl	$47, %edx
	ja	.L.eprintf.35
	movl	%edx, %eax
	addl	$8, %edx
	addq	24(%rsp), %rax
	movl	%edx, 8(%rsp)
	jmp	.L.eprintf.36
.L.eprintf.35:
	movq	16(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 16(%rsp)
.L.eprintf.36:
	movl	(%rax), %ebp
	testl	%ebp, %ebp
	jns	.L.eprintf.37
	movl	$45, %edi
	negl	%ebp
	call	eputchar
	addq	%rax, %rbx
.L.eprintf.37:
	movl	%ebp, %edi
	xorl	%edx, %edx
	movl	$10, %esi
	call	eputunum
	jmp	.L.eprintf.46
.L.eprintf.49:
	call	eputchar
	jmp	.L.eprintf.46
.L.eprintf.23:
	movl	$37, %edi
.L.eprintf.18:
	call	eputchar
	movq	%rbp, %r12
	addq	%rax, %rbx
.L.eprintf.28:
	leaq	1(%r12), %rbp
	jmp	.L.eprintf.17
.L.eprintf.50:
	addq	$88, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret


