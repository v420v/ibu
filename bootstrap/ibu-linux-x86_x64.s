.text
.global _start
_start:
	push %rbp
	movq %rsp, %rbp
	leaq 16(%rbp), %rax
	push %rax
	pushq 8(%rbp)
	callq main
	movq %rax, %rdi
	movq $60, %rax
	syscall
.global main
main:
	push %rbp
	movq %rsp, %rbp
	subq $64, %rsp
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.0
.data
.L.str.0:
	.byte 117
	.byte 115
	.byte 97
	.byte 103
	.byte 101
	.byte 10
	.byte 9
	.byte 105
	.byte 98
	.byte 117
	.byte 99
	.byte 32
	.byte 60
	.byte 102
	.byte 105
	.byte 108
	.byte 101
	.byte 110
	.byte 97
	.byte 109
	.byte 101
	.byte 62
	.byte 46
	.byte 105
	.byte 98
	.byte 117
	.byte 10
	.byte 0
.text
	leaq .L.str.0(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $0, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.0
.L.else.0:
.L.end.0:
	leaq -8(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	movq $420, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq open@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movl %eax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.1
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.1:
	.byte 101
	.byte 114
	.byte 114
	.byte 111
	.byte 114
	.byte 58
	.byte 32
	.byte 111
	.byte 112
	.byte 101
	.byte 110
	.byte 105
	.byte 110
	.byte 103
	.byte 32
	.byte 102
	.byte 105
	.byte 108
	.byte 101
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.1(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.1
.L.else.1:
.L.end.1:
	leaq -20(%rbp), %rax
	push %rax
	movq $57000, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $57000, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq read@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq close@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -28(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_tokenizer@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -36(%rbp), %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenize@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq preprocess@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -52(%rbp), %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_parser@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -60(%rbp), %rax
	push %rax
	leaq new_gen@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global print_all_macros
print_all_macros:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.2:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.2
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.2:
	.byte 110
	.byte 97
	.byte 109
	.byte 101
	.byte 58
	.byte 32
	.byte 37
	.byte 115
	.byte 44
	.byte 32
	.byte 116
	.byte 111
	.byte 107
	.byte 101
	.byte 110
	.byte 32
	.byte 108
	.byte 105
	.byte 116
	.byte 58
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.2(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.2
.L.while.end.2:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global preprocess
preprocess:
	push %rbp
	movq %rsp, %rbp
	subq $48, %rsp
.L.while.start.3:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.3
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.6
.data
.L.str.3:
	.byte 35
	.byte 0
.text
	leaq .L.str.3(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.6
	movq $1, %rax
	jmp .L.end.6
.L.false.6:
	movq $0, %rax
.L.end.6:
	cmpq $0, %rax
	je .L.false.5
.data
.L.str.4:
	.byte 100
	.byte 101
	.byte 102
	.byte 105
	.byte 110
	.byte 101
	.byte 0
.text
	leaq .L.str.4(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.5
	movq $1, %rax
	jmp .L.end.5
.L.false.5:
	movq $0, %rax
.L.end.5:
	cmpq $1, %rax
	jne .L.else.4
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq new_macro@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	pop %rdi
	movb 0(%rax), %r8b
	movb %r8b, 0(%rdi)
	movb 1(%rax), %r8b
	movb %r8b, 1(%rdi)
	movb 2(%rax), %r8b
	movb %r8b, 2(%rdi)
	movb 3(%rax), %r8b
	movb %r8b, 3(%rdi)
	movb 4(%rax), %r8b
	movb %r8b, 4(%rdi)
	movb 5(%rax), %r8b
	movb %r8b, 5(%rdi)
	movb 6(%rax), %r8b
	movb %r8b, 6(%rdi)
	movb 7(%rax), %r8b
	movb %r8b, 7(%rdi)
	movb 8(%rax), %r8b
	movb %r8b, 8(%rdi)
	movb 9(%rax), %r8b
	movb %r8b, 9(%rdi)
	movb 10(%rax), %r8b
	movb %r8b, 10(%rdi)
	movb 11(%rax), %r8b
	movb %r8b, 11(%rdi)
	movb 12(%rax), %r8b
	movb %r8b, 12(%rdi)
	movb 13(%rax), %r8b
	movb %r8b, 13(%rdi)
	movb 14(%rax), %r8b
	movb %r8b, 14(%rdi)
	movb 15(%rax), %r8b
	movb %r8b, 15(%rdi)
	movb 16(%rax), %r8b
	movb %r8b, 16(%rdi)
	movb 17(%rax), %r8b
	movb %r8b, 17(%rdi)
	movb 18(%rax), %r8b
	movb %r8b, 18(%rdi)
	movb 19(%rax), %r8b
	movb %r8b, 19(%rdi)
	movb 20(%rax), %r8b
	movb %r8b, 20(%rdi)
	movb 21(%rax), %r8b
	movb %r8b, 21(%rdi)
	movb 22(%rax), %r8b
	movb %r8b, 22(%rdi)
	movb 23(%rax), %r8b
	movb %r8b, 23(%rdi)
	movb 24(%rax), %r8b
	movb %r8b, 24(%rdi)
	movb 25(%rax), %r8b
	movb %r8b, 25(%rdi)
	movb 26(%rax), %r8b
	movb %r8b, 26(%rdi)
	movb 27(%rax), %r8b
	movb %r8b, 27(%rdi)
	movb 28(%rax), %r8b
	movb %r8b, 28(%rdi)
	movb 29(%rax), %r8b
	movb %r8b, 29(%rdi)
	movb 30(%rax), %r8b
	movb %r8b, 30(%rdi)
	movb 31(%rax), %r8b
	movb %r8b, 31(%rdi)
	movb 32(%rax), %r8b
	movb %r8b, 32(%rdi)
	movb 33(%rax), %r8b
	movb %r8b, 33(%rdi)
	movb 34(%rax), %r8b
	movb %r8b, 34(%rdi)
	movb 35(%rax), %r8b
	movb %r8b, 35(%rdi)
	movb 36(%rax), %r8b
	movb %r8b, 36(%rdi)
	movb 37(%rax), %r8b
	movb %r8b, 37(%rdi)
	movb 38(%rax), %r8b
	movb %r8b, 38(%rdi)
	movb 39(%rax), %r8b
	movb %r8b, 39(%rdi)
	movb 40(%rax), %r8b
	movb %r8b, 40(%rdi)
	movb 41(%rax), %r8b
	movb %r8b, 41(%rdi)
	movb 42(%rax), %r8b
	movb %r8b, 42(%rdi)
	movb 43(%rax), %r8b
	movb %r8b, 43(%rdi)
	jmp .L.end.4
.L.else.4:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.9
.data
.L.str.5:
	.byte 35
	.byte 0
.text
	leaq .L.str.5(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.9
	movq $1, %rax
	jmp .L.end.9
.L.false.9:
	movq $0, %rax
.L.end.9:
	cmpq $0, %rax
	je .L.false.8
.data
.L.str.6:
	.byte 105
	.byte 110
	.byte 99
	.byte 108
	.byte 117
	.byte 100
	.byte 101
	.byte 0
.text
	leaq .L.str.6(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.8
	movq $1, %rax
	jmp .L.end.8
.L.false.8:
	movq $0, %rax
.L.end.8:
	cmpq $1, %rax
	jne .L.else.7
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -20(%rbp), %rax
	push %rax
	movq $420, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq open@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movl %eax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.10
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.7:
	.byte 101
	.byte 114
	.byte 114
	.byte 111
	.byte 114
	.byte 58
	.byte 32
	.byte 111
	.byte 112
	.byte 101
	.byte 110
	.byte 105
	.byte 110
	.byte 103
	.byte 32
	.byte 102
	.byte 105
	.byte 108
	.byte 101
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.7(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.10
.L.else.10:
.L.end.10:
	leaq -28(%rbp), %rax
	push %rax
	movq $57000, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $57000, %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq read@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq close@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -36(%rbp), %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_tokenizer@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	leaq tokenize@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq get_eof_from_tokens@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	pop %rdi
	movb 0(%rax), %r8b
	movb %r8b, 0(%rdi)
	movb 1(%rax), %r8b
	movb %r8b, 1(%rdi)
	movb 2(%rax), %r8b
	movb %r8b, 2(%rdi)
	movb 3(%rax), %r8b
	movb %r8b, 3(%rdi)
	movb 4(%rax), %r8b
	movb %r8b, 4(%rdi)
	movb 5(%rax), %r8b
	movb %r8b, 5(%rdi)
	movb 6(%rax), %r8b
	movb %r8b, 6(%rdi)
	movb 7(%rax), %r8b
	movb %r8b, 7(%rdi)
	movb 8(%rax), %r8b
	movb %r8b, 8(%rdi)
	movb 9(%rax), %r8b
	movb %r8b, 9(%rdi)
	movb 10(%rax), %r8b
	movb %r8b, 10(%rdi)
	movb 11(%rax), %r8b
	movb %r8b, 11(%rdi)
	movb 12(%rax), %r8b
	movb %r8b, 12(%rdi)
	movb 13(%rax), %r8b
	movb %r8b, 13(%rdi)
	movb 14(%rax), %r8b
	movb %r8b, 14(%rdi)
	movb 15(%rax), %r8b
	movb %r8b, 15(%rdi)
	movb 16(%rax), %r8b
	movb %r8b, 16(%rdi)
	movb 17(%rax), %r8b
	movb %r8b, 17(%rdi)
	movb 18(%rax), %r8b
	movb %r8b, 18(%rdi)
	movb 19(%rax), %r8b
	movb %r8b, 19(%rdi)
	movb 20(%rax), %r8b
	movb %r8b, 20(%rdi)
	movb 21(%rax), %r8b
	movb %r8b, 21(%rdi)
	movb 22(%rax), %r8b
	movb %r8b, 22(%rdi)
	movb 23(%rax), %r8b
	movb %r8b, 23(%rdi)
	movb 24(%rax), %r8b
	movb %r8b, 24(%rdi)
	movb 25(%rax), %r8b
	movb %r8b, 25(%rdi)
	movb 26(%rax), %r8b
	movb %r8b, 26(%rdi)
	movb 27(%rax), %r8b
	movb %r8b, 27(%rdi)
	movb 28(%rax), %r8b
	movb %r8b, 28(%rdi)
	movb 29(%rax), %r8b
	movb %r8b, 29(%rdi)
	movb 30(%rax), %r8b
	movb %r8b, 30(%rdi)
	movb 31(%rax), %r8b
	movb %r8b, 31(%rdi)
	movb 32(%rax), %r8b
	movb %r8b, 32(%rdi)
	movb 33(%rax), %r8b
	movb %r8b, 33(%rdi)
	movb 34(%rax), %r8b
	movb %r8b, 34(%rdi)
	movb 35(%rax), %r8b
	movb %r8b, 35(%rdi)
	movb 36(%rax), %r8b
	movb %r8b, 36(%rdi)
	movb 37(%rax), %r8b
	movb %r8b, 37(%rdi)
	movb 38(%rax), %r8b
	movb %r8b, 38(%rdi)
	movb 39(%rax), %r8b
	movb %r8b, 39(%rdi)
	movb 40(%rax), %r8b
	movb %r8b, 40(%rdi)
	movb 41(%rax), %r8b
	movb %r8b, 41(%rdi)
	movb 42(%rax), %r8b
	movb %r8b, 42(%rdi)
	movb 43(%rax), %r8b
	movb %r8b, 43(%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movb 0(%rax), %r8b
	movb %r8b, 0(%rdi)
	movb 1(%rax), %r8b
	movb %r8b, 1(%rdi)
	movb 2(%rax), %r8b
	movb %r8b, 2(%rdi)
	movb 3(%rax), %r8b
	movb %r8b, 3(%rdi)
	movb 4(%rax), %r8b
	movb %r8b, 4(%rdi)
	movb 5(%rax), %r8b
	movb %r8b, 5(%rdi)
	movb 6(%rax), %r8b
	movb %r8b, 6(%rdi)
	movb 7(%rax), %r8b
	movb %r8b, 7(%rdi)
	movb 8(%rax), %r8b
	movb %r8b, 8(%rdi)
	movb 9(%rax), %r8b
	movb %r8b, 9(%rdi)
	movb 10(%rax), %r8b
	movb %r8b, 10(%rdi)
	movb 11(%rax), %r8b
	movb %r8b, 11(%rdi)
	movb 12(%rax), %r8b
	movb %r8b, 12(%rdi)
	movb 13(%rax), %r8b
	movb %r8b, 13(%rdi)
	movb 14(%rax), %r8b
	movb %r8b, 14(%rdi)
	movb 15(%rax), %r8b
	movb %r8b, 15(%rdi)
	movb 16(%rax), %r8b
	movb %r8b, 16(%rdi)
	movb 17(%rax), %r8b
	movb %r8b, 17(%rdi)
	movb 18(%rax), %r8b
	movb %r8b, 18(%rdi)
	movb 19(%rax), %r8b
	movb %r8b, 19(%rdi)
	movb 20(%rax), %r8b
	movb %r8b, 20(%rdi)
	movb 21(%rax), %r8b
	movb %r8b, 21(%rdi)
	movb 22(%rax), %r8b
	movb %r8b, 22(%rdi)
	movb 23(%rax), %r8b
	movb %r8b, 23(%rdi)
	movb 24(%rax), %r8b
	movb %r8b, 24(%rdi)
	movb 25(%rax), %r8b
	movb %r8b, 25(%rdi)
	movb 26(%rax), %r8b
	movb %r8b, 26(%rdi)
	movb 27(%rax), %r8b
	movb %r8b, 27(%rdi)
	movb 28(%rax), %r8b
	movb %r8b, 28(%rdi)
	movb 29(%rax), %r8b
	movb %r8b, 29(%rdi)
	movb 30(%rax), %r8b
	movb %r8b, 30(%rdi)
	movb 31(%rax), %r8b
	movb %r8b, 31(%rdi)
	movb 32(%rax), %r8b
	movb %r8b, 32(%rdi)
	movb 33(%rax), %r8b
	movb %r8b, 33(%rdi)
	movb 34(%rax), %r8b
	movb %r8b, 34(%rdi)
	movb 35(%rax), %r8b
	movb %r8b, 35(%rdi)
	movb 36(%rax), %r8b
	movb %r8b, 36(%rdi)
	movb 37(%rax), %r8b
	movb %r8b, 37(%rdi)
	movb 38(%rax), %r8b
	movb %r8b, 38(%rdi)
	movb 39(%rax), %r8b
	movb %r8b, 39(%rdi)
	movb 40(%rax), %r8b
	movb %r8b, 40(%rdi)
	movb 41(%rax), %r8b
	movb %r8b, 41(%rdi)
	movb 42(%rax), %r8b
	movb %r8b, 42(%rdi)
	movb 43(%rax), %r8b
	movb %r8b, 43(%rdi)
	jmp .L.end.7
.L.else.7:
	jmp .L.preprocess.break
.L.end.7:
.L.end.4:
	jmp .L.while.start.3
.L.while.end.3:
.L.preprocess.break:
	leaq -44(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq find_macro@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.11
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq copy_token@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.11
.L.else.11:
.L.end.11:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.12
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	push %rax
	leaq preprocess@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.12
.L.else.12:
.L.end.12:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global get_eof_from_tokens
get_eof_from_tokens:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.L.while.start.13:
	movq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.13
	leaq 16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.13
.L.while.end.13:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global copy_token
copy_token:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global find_macro
find_macro:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.14:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.14
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.15
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.15
.L.else.15:
.L.end.15:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.14
.L.while.end.14:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_macro
new_macro:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $24, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global gen
gen:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
.data
.L.str.8:
	.byte 46
	.byte 116
	.byte 101
	.byte 120
	.byte 116
	.byte 10
	.byte 0
.text
	leaq .L.str.8(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.9:
	.byte 46
	.byte 103
	.byte 108
	.byte 111
	.byte 98
	.byte 97
	.byte 108
	.byte 32
	.byte 95
	.byte 115
	.byte 116
	.byte 97
	.byte 114
	.byte 116
	.byte 10
	.byte 0
.text
	leaq .L.str.9(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.10:
	.byte 95
	.byte 115
	.byte 116
	.byte 97
	.byte 114
	.byte 116
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.10(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.11:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.11(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.12:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 114
	.byte 115
	.byte 112
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.12(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.13:
	.byte 9
	.byte 108
	.byte 101
	.byte 97
	.byte 113
	.byte 32
	.byte 49
	.byte 54
	.byte 40
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.13(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.14:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.14(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.15:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 113
	.byte 32
	.byte 56
	.byte 40
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.15(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.16:
	.byte 9
	.byte 99
	.byte 97
	.byte 108
	.byte 108
	.byte 113
	.byte 32
	.byte 109
	.byte 97
	.byte 105
	.byte 110
	.byte 10
	.byte 0
.text
	leaq .L.str.16(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.17:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.17(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.18:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 36
	.byte 54
	.byte 48
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.18(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.19:
	.byte 9
	.byte 115
	.byte 121
	.byte 115
	.byte 99
	.byte 97
	.byte 108
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.19(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.16:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.16
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.18
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L.false.18
	movq $1, %rax
	jmp .L.end.18
.L.false.18:
	movq $0, %rax
.L.end.18:
	cmpq $1, %rax
	jne .L.else.17
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	movq $16, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq assign_offset@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.20:
	.byte 46
	.byte 103
	.byte 108
	.byte 111
	.byte 98
	.byte 97
	.byte 108
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.20(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.21:
	.byte 37
	.byte 115
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.21(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.22:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.22(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.23:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 114
	.byte 115
	.byte 112
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.23(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.24:
	.byte 9
	.byte 115
	.byte 117
	.byte 98
	.byte 113
	.byte 32
	.byte 36
	.byte 37
	.byte 100
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 115
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.24(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_stmt@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.25:
	.byte 9
	.byte 108
	.byte 101
	.byte 97
	.byte 118
	.byte 101
	.byte 10
	.byte 0
.text
	leaq .L.str.25(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.26:
	.byte 9
	.byte 114
	.byte 101
	.byte 116
	.byte 10
	.byte 0
.text
	leaq .L.str.26(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.17
.L.else.17:
.L.end.17:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.16
.L.while.end.16:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global assign_offset
assign_offset:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.19
	movq $16, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	leaq align_to@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.19
.L.else.19:
.L.end.19:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.20
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq assign_offset@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.20
.L.else.20:
.L.end.20:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $53, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	je .L.false.22
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setg %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.22
	movq $1, %rax
	jmp .L.end.22
.L.false.22:
	movq $0, %rax
.L.end.22:
	cmpq $1, %rax
	jne .L.else.21
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.21
.L.else.21:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $53, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.23
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.23
.L.else.23:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
.L.end.23:
.L.end.21:
	movq $16, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	leaq align_to@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global gen_node_block
gen_node_block:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.24:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.24
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_stmt@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.24
.L.while.end.24:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global gen_stmt
gen_stmt:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	movq $21, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.25
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_node_block@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.25
.L.else.25:
	movq $22, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.26
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.26
.L.else.26:
	movq $18, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.27
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.27:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 115
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.27(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.28:
	.byte 9
	.byte 112
	.byte 111
	.byte 112
	.byte 32
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.28(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.29:
	.byte 9
	.byte 114
	.byte 101
	.byte 116
	.byte 113
	.byte 10
	.byte 0
.text
	leaq .L.str.29(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.27
.L.else.27:
	movq $15, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.28
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.30:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 113
	.byte 32
	.byte 36
	.byte 49
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.30(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.31:
	.byte 9
	.byte 106
	.byte 110
	.byte 101
	.byte 32
	.byte 46
	.byte 76
	.byte 46
	.byte 101
	.byte 108
	.byte 115
	.byte 101
	.byte 46
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.31(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_stmt@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.32:
	.byte 9
	.byte 106
	.byte 109
	.byte 112
	.byte 32
	.byte 46
	.byte 76
	.byte 46
	.byte 101
	.byte 110
	.byte 100
	.byte 46
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.32(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.33:
	.byte 46
	.byte 76
	.byte 46
	.byte 101
	.byte 108
	.byte 115
	.byte 101
	.byte 46
	.byte 37
	.byte 100
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.33(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.29
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_stmt@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.29
.L.else.29:
.L.end.29:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.34:
	.byte 46
	.byte 76
	.byte 46
	.byte 101
	.byte 110
	.byte 100
	.byte 46
	.byte 37
	.byte 100
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.34(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.28
.L.else.28:
	movq $23, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.30
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.35:
	.byte 9
	.byte 106
	.byte 109
	.byte 112
	.byte 32
	.byte 46
	.byte 76
	.byte 46
	.byte 37
	.byte 115
	.byte 46
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.35(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.30
.L.else.30:
	movq $24, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.31
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.36:
	.byte 46
	.byte 76
	.byte 46
	.byte 37
	.byte 115
	.byte 46
	.byte 37
	.byte 115
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.36(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.31
.L.else.31:
	movq $16, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.32
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.37:
	.byte 46
	.byte 76
	.byte 46
	.byte 119
	.byte 104
	.byte 105
	.byte 108
	.byte 101
	.byte 46
	.byte 115
	.byte 116
	.byte 97
	.byte 114
	.byte 116
	.byte 46
	.byte 37
	.byte 100
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.37(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.38:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 113
	.byte 32
	.byte 36
	.byte 49
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.38(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.39:
	.byte 9
	.byte 106
	.byte 110
	.byte 101
	.byte 32
	.byte 46
	.byte 76
	.byte 46
	.byte 119
	.byte 104
	.byte 105
	.byte 108
	.byte 101
	.byte 46
	.byte 101
	.byte 110
	.byte 100
	.byte 46
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.39(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_stmt@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.40:
	.byte 9
	.byte 106
	.byte 109
	.byte 112
	.byte 32
	.byte 46
	.byte 76
	.byte 46
	.byte 119
	.byte 104
	.byte 105
	.byte 108
	.byte 101
	.byte 46
	.byte 115
	.byte 116
	.byte 97
	.byte 114
	.byte 116
	.byte 46
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.40(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.41:
	.byte 46
	.byte 76
	.byte 46
	.byte 119
	.byte 104
	.byte 105
	.byte 108
	.byte 101
	.byte 46
	.byte 101
	.byte 110
	.byte 100
	.byte 46
	.byte 37
	.byte 100
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.41(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.32
.L.else.32:
	movq $17, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.33
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_addr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.42:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.42(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.43:
	.byte 9
	.byte 112
	.byte 111
	.byte 112
	.byte 32
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.43(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_store@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.33
.L.else.33:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.44:
	.byte 107
	.byte 105
	.byte 110
	.byte 100
	.byte 58
	.byte 32
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.44(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.45:
	.byte 103
	.byte 101
	.byte 110
	.byte 95
	.byte 115
	.byte 116
	.byte 109
	.byte 116
	.byte 32
	.byte 117
	.byte 110
	.byte 114
	.byte 101
	.byte 97
	.byte 99
	.byte 104
	.byte 97
	.byte 98
	.byte 108
	.byte 101
	.byte 10
	.byte 0
.text
	leaq .L.str.45(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.33:
.L.end.32:
.L.end.31:
.L.end.30:
.L.end.28:
.L.end.27:
.L.end.26:
.L.end.25:
	leave
	ret
.global is_c_func
is_c_func:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.data
.L.str.46:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 0
.text
	leaq .L.str.46(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.34
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.34
.L.else.34:
.L.end.34:
.data
.L.str.47:
	.byte 112
	.byte 114
	.byte 105
	.byte 110
	.byte 116
	.byte 102
	.byte 0
.text
	leaq .L.str.47(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.35
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.35
.L.else.35:
.L.end.35:
.data
.L.str.48:
	.byte 101
	.byte 112
	.byte 114
	.byte 105
	.byte 110
	.byte 116
	.byte 102
	.byte 0
.text
	leaq .L.str.48(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.36
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.36
.L.else.36:
.L.end.36:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global all_func_call_args_to_stack
all_func_call_args_to_stack:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.37
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.37
.L.else.37:
.L.end.37:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.38:
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.38
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.49:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.49(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	addl %edi, %eax
	jmp .L.while.start.38
.L.while.end.38:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global func_call_args_to_regi
func_call_args_to_regi:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.39
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.39
.L.else.39:
.L.end.39:
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.40:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.40
	movq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	addl %edi, %eax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.50:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.50(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.while.start.40
.L.while.end.40:
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.41:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.41
	movq $8, %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setg %al
	movzbl %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.42
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs64@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
.data
.L.str.51:
	.byte 9
	.byte 112
	.byte 111
	.byte 112
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.51(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.42
.L.else.42:
.L.end.42:
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.41
.L.while.end.41:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global func_call_args_to_stack
func_call_args_to_stack:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.43
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.43
.L.else.43:
.L.end.43:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.44:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.44
	movq $8, %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setg %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.45
	leaq -4(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq func_call_copy_val_rsp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.45
.L.else.45:
.L.end.45:
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.44
.L.while.end.44:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global func_call_copy_val_rsp
func_call_copy_val_rsp:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.52:
	.byte 9
	.byte 115
	.byte 117
	.byte 98
	.byte 113
	.byte 32
	.byte 36
	.byte 37
	.byte 100
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 115
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.52(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.46:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.46
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.53:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 98
	.byte 32
	.byte 37
	.byte 100
	.byte 40
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 49
	.byte 48
	.byte 98
	.byte 10
	.byte 0
.text
	leaq .L.str.53(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.54:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 98
	.byte 32
	.byte 37
	.byte 114
	.byte 49
	.byte 48
	.byte 98
	.byte 44
	.byte 32
	.byte 37
	.byte 100
	.byte 40
	.byte 37
	.byte 114
	.byte 115
	.byte 112
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.54(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.46
.L.while.end.46:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global gen_condition_store
gen_condition_store:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $7, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.47
.data
.L.str.55:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 98
	.byte 113
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.55(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.47
.L.else.47:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.48
.data
.L.str.56:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 98
	.byte 113
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.56(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.48
.L.else.48:
.data
.L.str.57:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 98
	.byte 108
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.57(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.48:
.L.end.47:
	leave
	ret
.global gen_binop
gen_binop:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.49
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.58:
	.byte 9
	.byte 37
	.byte 115
	.byte 113
	.byte 32
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.58(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.49
.L.else.49:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.59:
	.byte 9
	.byte 37
	.byte 115
	.byte 108
	.byte 32
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.59(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.49:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global gen_load
gen_load:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $5, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.50
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.50
.L.else.50:
.L.end.50:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.51
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.60:
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 0
.text
	leaq .L.str.60(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.51
.L.else.51:
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.61:
	.byte 109
	.byte 111
	.byte 118
	.byte 115
	.byte 0
.text
	leaq .L.str.61(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.end.51:
	movq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.52
.data
.L.str.62:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 40
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.62(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.52
.L.else.52:
	movq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.53
.data
.L.str.63:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 115
	.byte 108
	.byte 113
	.byte 32
	.byte 40
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.63(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.53
.L.else.53:
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.54
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.64:
	.byte 9
	.byte 37
	.byte 115
	.byte 119
	.byte 108
	.byte 32
	.byte 40
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.64(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.54
.L.else.54:
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.55
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.65:
	.byte 9
	.byte 37
	.byte 115
	.byte 98
	.byte 108
	.byte 32
	.byte 40
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.65(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.55
.L.else.55:
.data
.L.str.66:
	.byte 117
	.byte 110
	.byte 114
	.byte 101
	.byte 97
	.byte 99
	.byte 104
	.byte 97
	.byte 98
	.byte 108
	.byte 101
	.byte 10
	.byte 0
.text
	leaq .L.str.66(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.55:
.L.end.54:
.L.end.53:
.L.end.52:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global gen_store
gen_store:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $5, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.56
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.57:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.57
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.67:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 98
	.byte 32
	.byte 37
	.byte 100
	.byte 40
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 56
	.byte 98
	.byte 10
	.byte 0
.text
	leaq .L.str.67(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.68:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 98
	.byte 32
	.byte 37
	.byte 114
	.byte 56
	.byte 98
	.byte 44
	.byte 32
	.byte 37
	.byte 100
	.byte 40
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.68(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.57
.L.while.end.57:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.56
.L.else.56:
.L.end.56:
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.58
.data
.L.str.69:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 98
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 44
	.byte 32
	.byte 40
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.69(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.58
.L.else.58:
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.59
.data
.L.str.70:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 119
	.byte 32
	.byte 37
	.byte 97
	.byte 120
	.byte 44
	.byte 32
	.byte 40
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.70(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.59
.L.else.59:
	movq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.60
.data
.L.str.71:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 108
	.byte 32
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 44
	.byte 32
	.byte 40
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.71(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.60
.L.else.60:
	movq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.61
.data
.L.str.72:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 44
	.byte 32
	.byte 40
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.72(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.61
.L.else.61:
.data
.L.str.73:
	.byte 117
	.byte 110
	.byte 114
	.byte 101
	.byte 97
	.byte 99
	.byte 104
	.byte 97
	.byte 98
	.byte 108
	.byte 101
	.byte 10
	.byte 0
.text
	leaq .L.str.73(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.61:
.L.end.60:
.L.end.59:
.L.end.58:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global gen_addr
gen_addr:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $28, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.62
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_addr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $96, %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.74:
	.byte 9
	.byte 97
	.byte 100
	.byte 100
	.byte 113
	.byte 32
	.byte 36
	.byte 37
	.byte 100
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.74(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.62
.L.else.62:
	movq $14, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.63
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $54, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.64
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.75:
	.byte 9
	.byte 108
	.byte 101
	.byte 97
	.byte 113
	.byte 32
	.byte 37
	.byte 115
	.byte 64
	.byte 71
	.byte 79
	.byte 84
	.byte 80
	.byte 67
	.byte 82
	.byte 69
	.byte 76
	.byte 40
	.byte 37
	.byte 114
	.byte 105
	.byte 112
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.75(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.64
.L.else.64:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $20, %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.76:
	.byte 9
	.byte 108
	.byte 101
	.byte 97
	.byte 113
	.byte 32
	.byte 37
	.byte 100
	.byte 40
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.76(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.64:
	jmp .L.end.63
.L.else.63:
	movq $20, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.65
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.65
.L.else.65:
.data
.L.str.77:
	.byte 101
	.byte 114
	.byte 114
	.byte 111
	.byte 114
	.byte 58
	.byte 32
	.byte 110
	.byte 111
	.byte 116
	.byte 32
	.byte 97
	.byte 32
	.byte 118
	.byte 97
	.byte 114
	.byte 45
	.byte 110
	.byte 111
	.byte 100
	.byte 101
	.byte 10
	.byte 0
.text
	leaq .L.str.77(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.65:
.L.end.63:
.L.end.62:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global gen_lhs_rhs
gen_lhs_rhs:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.78:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.78(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.79:
	.byte 9
	.byte 112
	.byte 111
	.byte 112
	.byte 32
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.79(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leave
	ret
.global gen_expr
gen_expr:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.66
.data
.L.str.80:
	.byte 105
	.byte 110
	.byte 116
	.byte 101
	.byte 114
	.byte 110
	.byte 97
	.byte 108
	.byte 32
	.byte 101
	.byte 114
	.byte 114
	.byte 111
	.byte 114
	.byte 58
	.byte 32
	.byte 103
	.byte 101
	.byte 110
	.byte 95
	.byte 101
	.byte 120
	.byte 112
	.byte 114
	.byte 40
	.byte 41
	.byte 32
	.byte 110
	.byte 111
	.byte 100
	.byte 101
	.byte 32
	.byte 61
	.byte 61
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 46
	.byte 32
	.byte 116
	.byte 104
	.byte 105
	.byte 115
	.byte 32
	.byte 115
	.byte 104
	.byte 111
	.byte 117
	.byte 108
	.byte 100
	.byte 32
	.byte 110
	.byte 111
	.byte 116
	.byte 32
	.byte 104
	.byte 97
	.byte 112
	.byte 112
	.byte 101
	.byte 110
	.byte 46
	.byte 10
	.byte 0
.text
	leaq .L.str.80(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.66
.L.else.66:
.L.end.66:
	movq $28, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.67
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_addr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_load@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.67
.L.else.67:
.L.end.67:
	movq $12, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.68
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
.data
.L.str.81:
	.byte 46
	.byte 100
	.byte 97
	.byte 116
	.byte 97
	.byte 10
	.byte 0
.text
	leaq .L.str.81(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.82:
	.byte 46
	.byte 76
	.byte 46
	.byte 115
	.byte 116
	.byte 114
	.byte 46
	.byte 37
	.byte 100
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.82(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -12(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.69:
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.69
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
.data
.L.str.83:
	.byte 9
	.byte 46
	.byte 98
	.byte 121
	.byte 116
	.byte 101
	.byte 32
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.83(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.69
.L.while.end.69:
.data
.L.str.84:
	.byte 9
	.byte 46
	.byte 98
	.byte 121
	.byte 116
	.byte 101
	.byte 32
	.byte 48
	.byte 10
	.byte 0
.text
	leaq .L.str.84(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.85:
	.byte 46
	.byte 116
	.byte 101
	.byte 120
	.byte 116
	.byte 10
	.byte 0
.text
	leaq .L.str.85(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.86:
	.byte 9
	.byte 108
	.byte 101
	.byte 97
	.byte 113
	.byte 32
	.byte 46
	.byte 76
	.byte 46
	.byte 115
	.byte 116
	.byte 114
	.byte 46
	.byte 37
	.byte 100
	.byte 40
	.byte 37
	.byte 114
	.byte 105
	.byte 112
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.86(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.68
.L.else.68:
.L.end.68:
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.70
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.87:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 36
	.byte 37
	.byte 100
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.87(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.70
.L.else.70:
.L.end.70:
	movq $17, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.71
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_addr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.88:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.88(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.89:
	.byte 9
	.byte 112
	.byte 111
	.byte 112
	.byte 32
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.89(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_store@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.71
.L.else.71:
.L.end.71:
	movq $14, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.72
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_addr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_load@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.72
.L.else.72:
.L.end.72:
	movq $25, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.73
	leaq -16(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq is_c_func@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.74
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $100, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq func_call_args_to_regi@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -16(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $100, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq func_call_args_to_stack@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_addr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.90:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 40
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 49
	.byte 48
	.byte 10
	.byte 0
.text
	leaq .L.str.90(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.91:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 36
	.byte 48
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.91(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.92:
	.byte 9
	.byte 99
	.byte 97
	.byte 108
	.byte 108
	.byte 113
	.byte 32
	.byte 42
	.byte 37
	.byte 114
	.byte 49
	.byte 48
	.byte 10
	.byte 0
.text
	leaq .L.str.92(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.93:
	.byte 9
	.byte 97
	.byte 100
	.byte 100
	.byte 113
	.byte 32
	.byte 36
	.byte 37
	.byte 100
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 115
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.93(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.74
.L.else.74:
	leaq -16(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $100, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq all_func_call_args_to_stack@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_addr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.94:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 40
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 49
	.byte 48
	.byte 10
	.byte 0
.text
	leaq .L.str.94(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.95:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 36
	.byte 48
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.95(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.96:
	.byte 9
	.byte 99
	.byte 97
	.byte 108
	.byte 108
	.byte 113
	.byte 32
	.byte 42
	.byte 37
	.byte 114
	.byte 49
	.byte 48
	.byte 10
	.byte 0
.text
	leaq .L.str.96(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.97:
	.byte 9
	.byte 97
	.byte 100
	.byte 100
	.byte 113
	.byte 32
	.byte 36
	.byte 37
	.byte 100
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 115
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.97(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.74:
	movq $4, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.75
.data
.L.str.98:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 120
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.98(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.75
.L.else.75:
	movq $3, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.76
.data
.L.str.99:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 115
	.byte 98
	.byte 108
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.99(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.76
.L.else.76:
	movq $11, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.77
.data
.L.str.100:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 98
	.byte 108
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.100(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.77
.L.else.77:
	movq $2, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.78
.data
.L.str.101:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 115
	.byte 119
	.byte 108
	.byte 32
	.byte 37
	.byte 97
	.byte 120
	.byte 44
	.byte 32
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.101(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.78
.L.else.78:
	movq $10, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.79
.data
.L.str.102:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 119
	.byte 108
	.byte 32
	.byte 37
	.byte 97
	.byte 120
	.byte 44
	.byte 32
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.102(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.79
.L.else.79:
.L.end.79:
.L.end.78:
.L.end.77:
.L.end.76:
.L.end.75:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.73
.L.else.73:
.L.end.73:
	movq $22, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.80
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.80
.L.else.80:
.L.end.80:
	movq $19, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.81
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_addr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.81
.L.else.81:
.L.end.81:
	movq $20, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.82
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_load@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.82
.L.else.82:
.L.end.82:
	movq $5, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.83
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.103:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 113
	.byte 32
	.byte 36
	.byte 48
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.103(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.104:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 101
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.104(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.105:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 98
	.byte 113
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.105(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.83
.L.else.83:
.L.end.83:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.84
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.106:
	.byte 97
	.byte 100
	.byte 100
	.byte 0
.text
	leaq .L.str.106(%rip), %rax
	push %rax
	leaq gen_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.84
.L.else.84:
.L.end.84:
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.85
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.107:
	.byte 115
	.byte 117
	.byte 98
	.byte 0
.text
	leaq .L.str.107(%rip), %rax
	push %rax
	leaq gen_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.85
.L.else.85:
.L.end.85:
	movq $2, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.86
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.108:
	.byte 105
	.byte 109
	.byte 117
	.byte 108
	.byte 0
.text
	leaq .L.str.108(%rip), %rax
	push %rax
	leaq gen_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.86
.L.else.86:
.L.end.86:
	movq $3, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.88
	movq $4, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.88
	mov $0, %rax
	jmp .L.end.88
.L.true.88:
	mov $1, %rax
.L.end.88:
	cmpq $1, %rax
	jne .L.else.87
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $48, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.89
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.90
.data
.L.str.109:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 32
	.byte 36
	.byte 48
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 100
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.109(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.110:
	.byte 9
	.byte 100
	.byte 105
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.110(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.90
.L.else.90:
.data
.L.str.111:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 32
	.byte 36
	.byte 48
	.byte 44
	.byte 32
	.byte 37
	.byte 101
	.byte 100
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.111(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.112:
	.byte 9
	.byte 100
	.byte 105
	.byte 118
	.byte 108
	.byte 32
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.112(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.90:
	jmp .L.end.89
.L.else.89:
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.91
.data
.L.str.113:
	.byte 9
	.byte 99
	.byte 113
	.byte 116
	.byte 111
	.byte 10
	.byte 0
.text
	leaq .L.str.113(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.91
.L.else.91:
.data
.L.str.114:
	.byte 9
	.byte 99
	.byte 108
	.byte 116
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.114(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.91:
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.92
.data
.L.str.115:
	.byte 9
	.byte 105
	.byte 100
	.byte 105
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.115(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.92
.L.else.92:
.data
.L.str.116:
	.byte 9
	.byte 105
	.byte 100
	.byte 105
	.byte 118
	.byte 108
	.byte 32
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.116(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.92:
.L.end.89:
	movq $4, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.93
.data
.L.str.117:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 114
	.byte 100
	.byte 120
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.117(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.93
.L.else.93:
.L.end.93:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.87
.L.else.87:
.L.end.87:
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.94
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.118:
	.byte 99
	.byte 109
	.byte 112
	.byte 0
.text
	leaq .L.str.118(%rip), %rax
	push %rax
	leaq gen_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.119:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 101
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.119(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.94
.L.else.94:
.L.end.94:
	movq $6, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.95
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.120:
	.byte 99
	.byte 109
	.byte 112
	.byte 0
.text
	leaq .L.str.120(%rip), %rax
	push %rax
	leaq gen_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.121:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 110
	.byte 101
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.121(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.95
.L.else.95:
.L.end.95:
	movq $26, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.96
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.122:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 113
	.byte 32
	.byte 36
	.byte 48
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.122(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.123:
	.byte 9
	.byte 106
	.byte 101
	.byte 32
	.byte 46
	.byte 76
	.byte 46
	.byte 102
	.byte 97
	.byte 108
	.byte 115
	.byte 101
	.byte 46
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.123(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.124:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 113
	.byte 32
	.byte 36
	.byte 48
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.124(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.125:
	.byte 9
	.byte 106
	.byte 101
	.byte 32
	.byte 46
	.byte 76
	.byte 46
	.byte 102
	.byte 97
	.byte 108
	.byte 115
	.byte 101
	.byte 46
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.125(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.126:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 36
	.byte 49
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.126(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.127:
	.byte 9
	.byte 106
	.byte 109
	.byte 112
	.byte 32
	.byte 46
	.byte 76
	.byte 46
	.byte 101
	.byte 110
	.byte 100
	.byte 46
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.127(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.128:
	.byte 46
	.byte 76
	.byte 46
	.byte 102
	.byte 97
	.byte 108
	.byte 115
	.byte 101
	.byte 46
	.byte 37
	.byte 100
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.128(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.129:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 36
	.byte 48
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.129(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.130:
	.byte 46
	.byte 76
	.byte 46
	.byte 101
	.byte 110
	.byte 100
	.byte 46
	.byte 37
	.byte 100
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.130(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.96
.L.else.96:
.L.end.96:
	movq $27, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.97
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.131:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 113
	.byte 32
	.byte 36
	.byte 48
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.131(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.132:
	.byte 9
	.byte 106
	.byte 110
	.byte 101
	.byte 32
	.byte 46
	.byte 76
	.byte 46
	.byte 116
	.byte 114
	.byte 117
	.byte 101
	.byte 46
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.132(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.133:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 32
	.byte 36
	.byte 48
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.133(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.134:
	.byte 9
	.byte 106
	.byte 110
	.byte 101
	.byte 32
	.byte 46
	.byte 76
	.byte 46
	.byte 116
	.byte 114
	.byte 117
	.byte 101
	.byte 46
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.134(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.135:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 32
	.byte 36
	.byte 48
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.135(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.136:
	.byte 9
	.byte 106
	.byte 109
	.byte 112
	.byte 32
	.byte 46
	.byte 76
	.byte 46
	.byte 101
	.byte 110
	.byte 100
	.byte 46
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.136(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.137:
	.byte 46
	.byte 76
	.byte 46
	.byte 116
	.byte 114
	.byte 117
	.byte 101
	.byte 46
	.byte 37
	.byte 100
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.137(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.138:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 32
	.byte 36
	.byte 49
	.byte 44
	.byte 32
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.138(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.139:
	.byte 46
	.byte 76
	.byte 46
	.byte 101
	.byte 110
	.byte 100
	.byte 46
	.byte 37
	.byte 100
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.139(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.97
.L.else.97:
.L.end.97:
	movq $10, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.98
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.140:
	.byte 99
	.byte 109
	.byte 112
	.byte 0
.text
	leaq .L.str.140(%rip), %rax
	push %rax
	leaq gen_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $48, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.99
.data
.L.str.141:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 97
	.byte 101
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.141(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.99
.L.else.99:
.data
.L.str.142:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 103
	.byte 101
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.142(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.99:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.98
.L.else.98:
.L.end.98:
	movq $11, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.100
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.143:
	.byte 99
	.byte 109
	.byte 112
	.byte 0
.text
	leaq .L.str.143(%rip), %rax
	push %rax
	leaq gen_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $48, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.101
.data
.L.str.144:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 97
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.144(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.101
.L.else.101:
.data
.L.str.145:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 103
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.145(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.101:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.100
.L.else.100:
.L.end.100:
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.102
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.146:
	.byte 99
	.byte 109
	.byte 112
	.byte 0
.text
	leaq .L.str.146(%rip), %rax
	push %rax
	leaq gen_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $48, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.103
.data
.L.str.147:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 98
	.byte 101
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.147(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.103
.L.else.103:
.data
.L.str.148:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 108
	.byte 101
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.148(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.103:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.102
.L.else.102:
.L.end.102:
	movq $9, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.104
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.149:
	.byte 99
	.byte 109
	.byte 112
	.byte 0
.text
	leaq .L.str.149(%rip), %rax
	push %rax
	leaq gen_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $48, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.105
.data
.L.str.150:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 98
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.150(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.105
.L.else.105:
.data
.L.str.151:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 108
	.byte 32
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.151(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.105:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.104
.L.else.104:
.L.end.104:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.152:
	.byte 107
	.byte 105
	.byte 110
	.byte 100
	.byte 58
	.byte 32
	.byte 37
	.byte 100
	.byte 32
	.byte 117
	.byte 110
	.byte 114
	.byte 101
	.byte 97
	.byte 99
	.byte 104
	.byte 97
	.byte 98
	.byte 108
	.byte 101
	.byte 10
	.byte 0
.text
	leaq .L.str.152(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
.global new_gen
new_gen:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $24, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global amd64_system_v_call_regs64
amd64_system_v_call_regs64:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.106
.data
.L.str.153:
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 0
.text
	leaq .L.str.153(%rip), %rax
	jmp .L.end.106
.L.else.106:
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.107
.data
.L.str.154:
	.byte 37
	.byte 114
	.byte 115
	.byte 105
	.byte 0
.text
	leaq .L.str.154(%rip), %rax
	jmp .L.end.107
.L.else.107:
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.108
.data
.L.str.155:
	.byte 37
	.byte 114
	.byte 100
	.byte 120
	.byte 0
.text
	leaq .L.str.155(%rip), %rax
	jmp .L.end.108
.L.else.108:
	movq $3, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.109
.data
.L.str.156:
	.byte 37
	.byte 114
	.byte 99
	.byte 120
	.byte 0
.text
	leaq .L.str.156(%rip), %rax
	jmp .L.end.109
.L.else.109:
	movq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.110
.data
.L.str.157:
	.byte 37
	.byte 114
	.byte 56
	.byte 0
.text
	leaq .L.str.157(%rip), %rax
	jmp .L.end.110
.L.else.110:
	movq $5, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.111
.data
.L.str.158:
	.byte 37
	.byte 114
	.byte 57
	.byte 0
.text
	leaq .L.str.158(%rip), %rax
	jmp .L.end.111
.L.else.111:
.data
.L.str.159:
	.byte 117
	.byte 110
	.byte 114
	.byte 101
	.byte 97
	.byte 99
	.byte 104
	.byte 97
	.byte 98
	.byte 108
	.byte 101
	.byte 10
	.byte 0
.text
	leaq .L.str.159(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.111:
.L.end.110:
.L.end.109:
.L.end.108:
.L.end.107:
.L.end.106:
	leave
	ret
.global parse
parse:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.L.while.start.112:
	movq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.112
.data
.L.str.160:
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 0
.text
	leaq .L.str.160(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.113
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_func@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.113
.L.else.113:
.data
.L.str.161:
	.byte 115
	.byte 116
	.byte 114
	.byte 117
	.byte 99
	.byte 116
	.byte 0
.text
	leaq .L.str.161(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.114
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_struct@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.114
.L.else.114:
.data
.L.str.162:
	.byte 110
	.byte 111
	.byte 110
	.byte 45
	.byte 100
	.byte 101
	.byte 99
	.byte 108
	.byte 97
	.byte 114
	.byte 97
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 115
	.byte 116
	.byte 97
	.byte 116
	.byte 101
	.byte 109
	.byte 101
	.byte 110
	.byte 116
	.byte 32
	.byte 111
	.byte 117
	.byte 116
	.byte 115
	.byte 105
	.byte 100
	.byte 101
	.byte 32
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 98
	.byte 111
	.byte 100
	.byte 121
	.byte 0
.text
	leaq .L.str.162(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.end.114:
.L.end.113:
	jmp .L.while.start.112
.L.while.end.112:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_func
parse_func:
	push %rbp
	movq %rsp, %rbp
	subq $80, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.163:
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 0
.text
	leaq .L.str.163(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $64, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $54, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
.data
.L.str.164:
	.byte 40
	.byte 0
.text
	leaq .L.str.164(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -32(%rbp), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_type_vec@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_object_vec@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.115:
.data
.L.str.165:
	.byte 41
	.byte 0
.text
	leaq .L.str.165(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.115
	leaq -48(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.166:
	.byte 46
	.byte 46
	.byte 46
	.byte 0
.text
	leaq .L.str.166(%rip), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.116
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
.data
.L.str.167:
	.byte 41
	.byte 0
.text
	leaq .L.str.167(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.117
.data
.L.str.168:
	.byte 96
	.byte 46
	.byte 46
	.byte 46
	.byte 96
	.byte 32
	.byte 109
	.byte 117
	.byte 115
	.byte 116
	.byte 32
	.byte 98
	.byte 101
	.byte 32
	.byte 97
	.byte 116
	.byte 32
	.byte 116
	.byte 104
	.byte 101
	.byte 32
	.byte 101
	.byte 110
	.byte 100
	.byte 32
	.byte 111
	.byte 102
	.byte 32
	.byte 116
	.byte 104
	.byte 101
	.byte 32
	.byte 112
	.byte 97
	.byte 114
	.byte 97
	.byte 109
	.byte 97
	.byte 116
	.byte 101
	.byte 114
	.byte 115
	.byte 0
.text
	leaq .L.str.168(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.117
.L.else.117:
.L.end.117:
	jmp .L.end.116
.L.else.116:
	leaq -64(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_local_object@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $40, %rsp
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append_object@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	addq $53, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
.data
.L.str.169:
	.byte 44
	.byte 0
.text
	leaq .L.str.169(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.118
.data
.L.str.170:
	.byte 44
	.byte 0
.text
	leaq .L.str.170(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.118
.L.else.118:
.L.end.118:
.L.end.116:
	jmp .L.while.start.115
.L.while.end.115:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.171:
	.byte 41
	.byte 0
.text
	leaq .L.str.171(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -72(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -80(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq find_globals@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.172:
	.byte 59
	.byte 0
.text
	leaq .L.str.172(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.119
.data
.L.str.173:
	.byte 59
	.byte 0
.text
	leaq .L.str.173(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	push %rax
	leaq -80(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.120
.data
.L.str.174:
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 105
	.byte 115
	.byte 32
	.byte 97
	.byte 108
	.byte 114
	.byte 101
	.byte 97
	.byte 100
	.byte 121
	.byte 32
	.byte 100
	.byte 101
	.byte 99
	.byte 108
	.byte 97
	.byte 114
	.byte 101
	.byte 100
	.byte 32
	.byte 115
	.byte 111
	.byte 109
	.byte 101
	.byte 119
	.byte 104
	.byte 101
	.byte 114
	.byte 101
	.byte 46
	.byte 0
.text
	leaq .L.str.174(%rip), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.120
.L.else.120:
.L.end.120:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	leaq -72(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_func_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.119
.L.else.119:
	movq $0, %rax
	push %rax
	leaq -80(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.121
	leaq -80(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.122
.data
.L.str.175:
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 105
	.byte 115
	.byte 32
	.byte 97
	.byte 108
	.byte 114
	.byte 101
	.byte 97
	.byte 100
	.byte 121
	.byte 32
	.byte 100
	.byte 101
	.byte 102
	.byte 105
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 115
	.byte 111
	.byte 109
	.byte 101
	.byte 119
	.byte 104
	.byte 101
	.byte 114
	.byte 101
	.byte 0
.text
	leaq .L.str.175(%rip), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.122
.L.else.122:
.L.end.122:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq -80(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq cmp_func_params@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.123
.data
.L.str.176:
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 100
	.byte 101
	.byte 99
	.byte 108
	.byte 97
	.byte 114
	.byte 97
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 112
	.byte 97
	.byte 114
	.byte 97
	.byte 109
	.byte 97
	.byte 116
	.byte 101
	.byte 114
	.byte 115
	.byte 32
	.byte 100
	.byte 111
	.byte 101
	.byte 115
	.byte 32
	.byte 110
	.byte 111
	.byte 116
	.byte 32
	.byte 109
	.byte 97
	.byte 116
	.byte 99
	.byte 104
	.byte 32
	.byte 116
	.byte 111
	.byte 32
	.byte 100
	.byte 101
	.byte 102
	.byte 105
	.byte 110
	.byte 105
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 0
.text
	leaq .L.str.176(%rip), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.123
.L.else.123:
.L.end.123:
	leaq -80(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq -72(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq cmp_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.124
.data
.L.str.177:
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 100
	.byte 101
	.byte 99
	.byte 108
	.byte 97
	.byte 114
	.byte 97
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 32
	.byte 116
	.byte 121
	.byte 112
	.byte 101
	.byte 32
	.byte 100
	.byte 111
	.byte 101
	.byte 115
	.byte 32
	.byte 110
	.byte 111
	.byte 116
	.byte 32
	.byte 109
	.byte 97
	.byte 116
	.byte 99
	.byte 104
	.byte 32
	.byte 116
	.byte 111
	.byte 32
	.byte 100
	.byte 101
	.byte 102
	.byte 105
	.byte 110
	.byte 105
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 0
.text
	leaq .L.str.177(%rip), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.124
.L.else.124:
.L.end.124:
	leaq -80(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_block@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -80(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -80(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -80(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.121
.L.else.121:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	leaq -72(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_func_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_block@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.end.121:
.L.end.119:
	leave
	ret
.global parse_struct
parse_struct:
	push %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_member_vec@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.178:
	.byte 115
	.byte 116
	.byte 114
	.byte 117
	.byte 99
	.byte 116
	.byte 0
.text
	leaq .L.str.178(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -32(%rbp), %rax
	push %rax
	movq $50, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $5, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.179:
	.byte 59
	.byte 0
.text
	leaq .L.str.179(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.125
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $49, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.data
.L.str.180:
	.byte 59
	.byte 0
.text
	leaq .L.str.180(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq get_user_defined_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.126
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.126
.L.else.126:
.L.end.126:
	jmp .L.end.125
.L.else.125:
.data
.L.str.181:
	.byte 123
	.byte 0
.text
	leaq .L.str.181(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.while.start.127:
.data
.L.str.182:
	.byte 125
	.byte 0
.text
	leaq .L.str.182(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.127
	leaq -40(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_member@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append_member@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.183:
	.byte 59
	.byte 0
.text
	leaq .L.str.183(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.while.start.127
.L.while.end.127:
.data
.L.str.184:
	.byte 125
	.byte 0
.text
	leaq .L.str.184(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq calc_sizof_struct_members@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq -48(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq get_user_defined_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.128
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.128
.L.else.128:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $49, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.129
.data
.L.str.185:
	.byte 115
	.byte 116
	.byte 114
	.byte 117
	.byte 99
	.byte 116
	.byte 32
	.byte 105
	.byte 115
	.byte 32
	.byte 97
	.byte 108
	.byte 114
	.byte 101
	.byte 97
	.byte 100
	.byte 121
	.byte 32
	.byte 100
	.byte 101
	.byte 102
	.byte 105
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 115
	.byte 111
	.byte 109
	.byte 101
	.byte 119
	.byte 104
	.byte 101
	.byte 114
	.byte 101
	.byte 0
.text
	leaq .L.str.185(%rip), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.129
.L.else.129:
.L.end.129:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $49, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
.L.end.128:
.L.end.125:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global calc_sizof_struct_members
calc_sizof_struct_members:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.130:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.130
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -4(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.130
.L.while.end.130:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_member
new_member:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $20, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global node_true
node_true:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_block
parse_block:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $21, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_node_vec@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.186:
	.byte 123
	.byte 0
.text
	leaq .L.str.186(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.while.start.131:
.data
.L.str.187:
	.byte 125
	.byte 0
.text
	leaq .L.str.187(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.131
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_stmt@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.132
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.132
.L.else.132:
.L.end.132:
	jmp .L.while.start.131
.L.while.end.131:
.data
.L.str.188:
	.byte 125
	.byte 0
.text
	leaq .L.str.188(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_stmt
parse_stmt:
	push %rbp
	movq %rsp, %rbp
	subq $64, %rsp
.data
.L.str.189:
	.byte 118
	.byte 97
	.byte 114
	.byte 0
.text
	leaq .L.str.189(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.133
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -32(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_local_object@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $40, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.190:
	.byte 61
	.byte 0
.text
	leaq .L.str.190(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.134
.data
.L.str.191:
	.byte 61
	.byte 0
.text
	leaq .L.str.191(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -48(%rbp), %rax
	push %rax
	movq $14, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr_stmt@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $17, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.134
.L.else.134:
.data
.L.str.192:
	.byte 59
	.byte 0
.text
	leaq .L.str.192(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
.L.end.134:
	jmp .L.end.133
.L.else.133:
.L.end.133:
.data
.L.str.193:
	.byte 103
	.byte 111
	.byte 116
	.byte 111
	.byte 0
.text
	leaq .L.str.193(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.135
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -56(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.194:
	.byte 59
	.byte 0
.text
	leaq .L.str.194(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $23, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.135
.L.else.135:
.L.end.135:
	movq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.136
.data
.L.str.195:
	.byte 58
	.byte 0
.text
	leaq .L.str.195(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.137
	leaq -56(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.196:
	.byte 58
	.byte 0
.text
	leaq .L.str.196(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $24, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.137
.L.else.137:
.L.end.137:
	jmp .L.end.136
.L.else.136:
.L.end.136:
.data
.L.str.197:
	.byte 105
	.byte 102
	.byte 0
.text
	leaq .L.str.197(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.138
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $15, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_block@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.198:
	.byte 101
	.byte 108
	.byte 115
	.byte 101
	.byte 0
.text
	leaq .L.str.198(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.139
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_stmt@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.139
.L.else.139:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
.L.end.139:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.138
.L.else.138:
.L.end.138:
.data
.L.str.199:
	.byte 119
	.byte 104
	.byte 105
	.byte 108
	.byte 101
	.byte 0
.text
	leaq .L.str.199(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.140
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $16, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.200:
	.byte 123
	.byte 0
.text
	leaq .L.str.200(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.141
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.141
.L.else.141:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	push %rax
	leaq node_true@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.141:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_block@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.140
.L.else.140:
.L.end.140:
.data
.L.str.201:
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 0
.text
	leaq .L.str.201(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.142
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $18, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr_stmt@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.142
.L.else.142:
.L.end.142:
.data
.L.str.202:
	.byte 123
	.byte 0
.text
	leaq .L.str.202(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.143
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_block@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.143
.L.else.143:
.L.end.143:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr_stmt@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_expr_stmt
parse_expr_stmt:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $22, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.203:
	.byte 59
	.byte 0
.text
	leaq .L.str.203(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_logor
parse_logor:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_logand@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.144:
.data
.L.str.204:
	.byte 124
	.byte 124
	.byte 0
.text
	leaq .L.str.204(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.while.end.144
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_logand@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $27, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.144
.L.while.end.144:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_logand
parse_logand:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_equality@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.145:
.data
.L.str.205:
	.byte 38
	.byte 38
	.byte 0
.text
	leaq .L.str.205(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.while.end.145
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_equality@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $26, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.145
.L.while.end.145:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_equality
parse_equality:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_relational@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.146:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.146
.data
.L.str.206:
	.byte 61
	.byte 61
	.byte 0
.text
	leaq .L.str.206(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.147
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_relational@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.148
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $7, %rax
	push %rax
	leaq new_equality@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.148
.L.else.148:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.149
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $7, %rax
	push %rax
	leaq new_relational@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.149
.L.else.149:
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $7, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.149:
.L.end.148:
	jmp .L.end.147
.L.else.147:
.data
.L.str.207:
	.byte 33
	.byte 61
	.byte 0
.text
	leaq .L.str.207(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.150
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_relational@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.151
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $6, %rax
	push %rax
	leaq new_equality@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.151
.L.else.151:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.152
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $6, %rax
	push %rax
	leaq new_relational@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.152
.L.else.152:
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $6, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.152:
.L.end.151:
	jmp .L.end.150
.L.else.150:
	jmp .L.parse_equality.end
.L.end.150:
.L.end.147:
	jmp .L.while.start.146
.L.while.end.146:
.L.parse_equality.end:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_relational
parse_relational:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_add@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.153:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.153
.data
.L.str.208:
	.byte 60
	.byte 61
	.byte 0
.text
	leaq .L.str.208(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.154
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_add@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.155
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq new_relational@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.155
.L.else.155:
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.155:
	jmp .L.end.154
.L.else.154:
.data
.L.str.209:
	.byte 62
	.byte 61
	.byte 0
.text
	leaq .L.str.209(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.156
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_add@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.157
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $10, %rax
	push %rax
	leaq new_relational@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.157
.L.else.157:
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $10, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.157:
	jmp .L.end.156
.L.else.156:
.data
.L.str.210:
	.byte 60
	.byte 0
.text
	leaq .L.str.210(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.158
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_add@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.159
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $9, %rax
	push %rax
	leaq new_relational@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.159
.L.else.159:
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $9, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.159:
	jmp .L.end.158
.L.else.158:
.data
.L.str.211:
	.byte 62
	.byte 0
.text
	leaq .L.str.211(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.160
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_add@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.161
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $11, %rax
	push %rax
	leaq new_relational@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.161
.L.else.161:
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $11, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.161:
	jmp .L.end.160
.L.else.160:
	jmp .L.parse_relational.end
.L.end.160:
.L.end.158:
.L.end.156:
.L.end.154:
	jmp .L.while.start.153
.L.while.end.153:
.L.parse_relational.end:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_equality
new_equality:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.162
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.163
	leaq -8(%rbp), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq search_relational_lhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq search_relational_rhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $26, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $26, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.163
.L.else.163:
.L.end.163:
	jmp .L.end.162
.L.else.162:
.L.end.162:
	leaq -8(%rbp), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq search_relational_lhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $26, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_relational
new_relational:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.164
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.165
	leaq -8(%rbp), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq search_relational_lhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq search_relational_rhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $26, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $26, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.165
.L.else.165:
.L.end.165:
	jmp .L.end.164
.L.else.164:
.L.end.164:
	leaq -8(%rbp), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq search_relational_rhs@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $26, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global search_relational_lhs
search_relational_lhs:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.166:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.while.end.166
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.166
.L.while.end.166:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global search_relational_rhs
search_relational_rhs:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.167:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.while.end.167
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.167
.L.while.end.167:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global is_comparison_node
is_comparison_node:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.168
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.168
.L.else.168:
.L.end.168:
	movq $10, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.169
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.169
.L.else.169:
.L.end.169:
	movq $9, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.170
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.170
.L.else.170:
.L.end.170:
	movq $11, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.171
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.171
.L.else.171:
.L.end.171:
	movq $7, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.172
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.172
.L.else.172:
.L.end.172:
	movq $6, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.173
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.173
.L.else.173:
.L.end.173:
	movq $26, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.174
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.174
.L.else.174:
.L.end.174:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_add
parse_add:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_mul@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.175:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.175
.data
.L.str.212:
	.byte 43
	.byte 0
.text
	leaq .L.str.212(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.176
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_mul@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.176
.L.else.176:
.data
.L.str.213:
	.byte 45
	.byte 0
.text
	leaq .L.str.213(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.177
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_mul@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.177
.L.else.177:
	jmp .L.parse_add.end
.L.end.177:
.L.end.176:
	jmp .L.while.start.175
.L.while.end.175:
.L.parse_add.end:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_mul
parse_mul:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_unary@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.178:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.178
.data
.L.str.214:
	.byte 42
	.byte 0
.text
	leaq .L.str.214(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.179
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_unary@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.179
.L.else.179:
.data
.L.str.215:
	.byte 47
	.byte 0
.text
	leaq .L.str.215(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.180
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_unary@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.180
.L.else.180:
.data
.L.str.216:
	.byte 37
	.byte 0
.text
	leaq .L.str.216(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.181
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_unary@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.181
.L.else.181:
	jmp .L.parse_mul.end
.L.end.181:
.L.end.180:
.L.end.179:
	jmp .L.while.start.178
.L.while.end.178:
.L.parse_mul.end:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global node_num_one
node_num_one:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_binop
new_binop:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_deref
parse_deref:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	push %rax
	movq $20, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_unary@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $7, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.182
.data
.L.str.217:
	.byte 105
	.byte 110
	.byte 118
	.byte 97
	.byte 108
	.byte 105
	.byte 100
	.byte 32
	.byte 112
	.byte 111
	.byte 105
	.byte 110
	.byte 116
	.byte 101
	.byte 114
	.byte 32
	.byte 100
	.byte 101
	.byte 114
	.byte 101
	.byte 102
	.byte 101
	.byte 114
	.byte 101
	.byte 110
	.byte 99
	.byte 101
	.byte 0
.text
	leaq .L.str.217(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.182
.L.else.182:
.L.end.182:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_struct_access_node
new_struct_access_node:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $108, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $96, %rax
	push %rax
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	push %rax
	leaq 40(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 48(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global search_struct_member
search_struct_member:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.183:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.183
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.184
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.184
.L.else.184:
.L.end.184:
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.183
.L.while.end.183:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_number
parse_number:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.185
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq atoi@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.185
.L.else.185:
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.186
	leaq -8(%rbp), %rax
	push %rax
	movq $12, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.186
.L.else.186:
.data
.L.str.218:
	.byte 110
	.byte 105
	.byte 108
	.byte 0
.text
	leaq .L.str.218(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.187
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.187
.L.else.187:
.data
.L.str.219:
	.byte 116
	.byte 114
	.byte 117
	.byte 101
	.byte 0
.text
	leaq .L.str.219(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.188
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $96, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.188
.L.else.188:
.data
.L.str.220:
	.byte 102
	.byte 97
	.byte 108
	.byte 115
	.byte 101
	.byte 0
.text
	leaq .L.str.220(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.189
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $96, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.189
.L.else.189:
.data
.L.str.221:
	.byte 116
	.byte 121
	.byte 112
	.byte 101
	.byte 115
	.byte 105
	.byte 122
	.byte 101
	.byte 0
.text
	leaq .L.str.221(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.190
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.222:
	.byte 40
	.byte 0
.text
	leaq .L.str.222(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.223:
	.byte 41
	.byte 0
.text
	leaq .L.str.223(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.190
.L.else.190:
.data
.L.str.224:
	.byte 115
	.byte 105
	.byte 122
	.byte 101
	.byte 111
	.byte 102
	.byte 0
.text
	leaq .L.str.224(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.191
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_sizeof@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.191
.L.else.191:
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.192
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ident@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.192
.L.else.192:
.data
.L.str.225:
	.byte 40
	.byte 0
.text
	leaq .L.str.225(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.193
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.226:
	.byte 41
	.byte 0
.text
	leaq .L.str.226(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.193
.L.else.193:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.227:
	.byte 107
	.byte 105
	.byte 110
	.byte 100
	.byte 58
	.byte 32
	.byte 37
	.byte 100
	.byte 32
	.byte 108
	.byte 105
	.byte 116
	.byte 58
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.227(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.228:
	.byte 101
	.byte 120
	.byte 112
	.byte 101
	.byte 99
	.byte 116
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 117
	.byte 109
	.byte 98
	.byte 101
	.byte 114
	.byte 32
	.byte 111
	.byte 114
	.byte 32
	.byte 105
	.byte 100
	.byte 101
	.byte 110
	.byte 116
	.byte 105
	.byte 102
	.byte 105
	.byte 101
	.byte 114
	.byte 0
.text
	leaq .L.str.228(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.193:
.L.end.192:
.L.end.191:
.L.end.190:
.L.end.189:
.L.end.188:
.L.end.187:
.L.end.186:
.L.end.185:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_ident
parse_ident:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	movq $14, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq find_object@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.194
.data
.L.str.229:
	.byte 117
	.byte 110
	.byte 107
	.byte 111
	.byte 119
	.byte 110
	.byte 32
	.byte 111
	.byte 98
	.byte 106
	.byte 101
	.byte 99
	.byte 116
	.byte 0
.text
	leaq .L.str.229(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.194
.L.else.194:
.L.end.194:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.230:
	.byte 40
	.byte 0
.text
	leaq .L.str.230(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.195
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.195
.L.else.195:
.L.end.195:
	leaq -32(%rbp), %rax
	push %rax
	movq $25, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.231:
	.byte 40
	.byte 0
.text
	leaq .L.str.231(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $100, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_func_call_args@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.232:
	.byte 41
	.byte 0
.text
	leaq .L.str.232(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $6, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.196
.data
.L.str.233:
	.byte 99
	.byte 97
	.byte 110
	.byte 110
	.byte 111
	.byte 116
	.byte 32
	.byte 99
	.byte 97
	.byte 108
	.byte 108
	.byte 32
	.byte 97
	.byte 32
	.byte 110
	.byte 111
	.byte 110
	.byte 101
	.byte 32
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 111
	.byte 98
	.byte 106
	.byte 101
	.byte 99
	.byte 116
	.byte 0
.text
	leaq .L.str.233(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.196
.L.else.196:
.L.end.196:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $100, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.197
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $55, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	je .L.false.199
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $100, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.199
	movq $1, %rax
	jmp .L.end.199
.L.false.199:
	movq $0, %rax
.L.end.199:
	cmpq $1, %rax
	jne .L.else.198
.data
.L.str.234:
	.byte 84
	.byte 104
	.byte 101
	.byte 32
	.byte 110
	.byte 117
	.byte 109
	.byte 98
	.byte 101
	.byte 114
	.byte 32
	.byte 111
	.byte 102
	.byte 32
	.byte 97
	.byte 114
	.byte 103
	.byte 117
	.byte 109
	.byte 101
	.byte 110
	.byte 116
	.byte 115
	.byte 32
	.byte 105
	.byte 110
	.byte 32
	.byte 116
	.byte 104
	.byte 101
	.byte 32
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 99
	.byte 97
	.byte 108
	.byte 108
	.byte 32
	.byte 100
	.byte 111
	.byte 101
	.byte 115
	.byte 32
	.byte 110
	.byte 111
	.byte 116
	.byte 32
	.byte 109
	.byte 97
	.byte 116
	.byte 99
	.byte 104
	.byte 32
	.byte 116
	.byte 104
	.byte 101
	.byte 32
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 100
	.byte 101
	.byte 102
	.byte 105
	.byte 110
	.byte 105
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 0
.text
	leaq .L.str.234(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.198
.L.else.198:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $55, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.200
.data
.L.str.235:
	.byte 84
	.byte 104
	.byte 101
	.byte 32
	.byte 110
	.byte 117
	.byte 109
	.byte 98
	.byte 101
	.byte 114
	.byte 32
	.byte 111
	.byte 102
	.byte 32
	.byte 97
	.byte 114
	.byte 103
	.byte 117
	.byte 109
	.byte 101
	.byte 110
	.byte 116
	.byte 115
	.byte 32
	.byte 105
	.byte 110
	.byte 32
	.byte 116
	.byte 104
	.byte 101
	.byte 32
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 99
	.byte 97
	.byte 108
	.byte 108
	.byte 32
	.byte 100
	.byte 111
	.byte 101
	.byte 115
	.byte 32
	.byte 110
	.byte 111
	.byte 116
	.byte 32
	.byte 109
	.byte 97
	.byte 116
	.byte 99
	.byte 104
	.byte 32
	.byte 116
	.byte 104
	.byte 101
	.byte 32
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 100
	.byte 101
	.byte 102
	.byte 105
	.byte 110
	.byte 105
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 0
.text
	leaq .L.str.235(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.200
.L.else.200:
.L.end.200:
.L.end.198:
	jmp .L.end.197
.L.else.197:
.L.end.197:
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global find_object
find_object:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq find_locals@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.201
	leaq -8(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq find_globals@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.201
.L.else.201:
.L.end.201:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_sizeof
parse_sizeof:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.236:
	.byte 40
	.byte 0
.text
	leaq .L.str.236(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_unary@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.237:
	.byte 41
	.byte 0
.text
	leaq .L.str.237(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -12(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $13, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_unary
parse_unary:
	push %rbp
	movq %rsp, %rbp
	subq $80, %rsp
.data
.L.str.238:
	.byte 42
	.byte 0
.text
	leaq .L.str.238(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.202
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_deref@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.202
.L.else.202:
.L.end.202:
.data
.L.str.239:
	.byte 38
	.byte 0
.text
	leaq .L.str.239(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.203
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $19, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_unary@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.203
.L.else.203:
.L.end.203:
.data
.L.str.240:
	.byte 33
	.byte 0
.text
	leaq .L.str.240(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.204
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $5, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_unary@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.204
.L.else.204:
.L.end.204:
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_number@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.205:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.205
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.241:
	.byte 43
	.byte 43
	.byte 0
.text
	leaq .L.str.241(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.206
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq node_num_one@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq node_num_one@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $17, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	push %rax
	movq $1, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.continue
	jmp .L.end.206
.L.else.206:
.L.end.206:
.data
.L.str.242:
	.byte 45
	.byte 45
	.byte 0
.text
	leaq .L.str.242(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.207
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq node_num_one@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq node_num_one@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $17, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	push %rax
	movq $0, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.continue
	jmp .L.end.207
.L.else.207:
.L.end.207:
.data
.L.str.243:
	.byte 91
	.byte 0
.text
	leaq .L.str.243(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.208
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.244:
	.byte 93
	.byte 0
.text
	leaq .L.str.244(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $7, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.209
.data
.L.str.245:
	.byte 96
	.byte 91
	.byte 93
	.byte 96
	.byte 32
	.byte 99
	.byte 97
	.byte 110
	.byte 110
	.byte 111
	.byte 116
	.byte 32
	.byte 97
	.byte 99
	.byte 99
	.byte 101
	.byte 115
	.byte 115
	.byte 32
	.byte 116
	.byte 111
	.byte 32
	.byte 110
	.byte 111
	.byte 110
	.byte 101
	.byte 32
	.byte 112
	.byte 111
	.byte 105
	.byte 110
	.byte 116
	.byte 101
	.byte 114
	.byte 32
	.byte 116
	.byte 121
	.byte 112
	.byte 101
	.byte 46
	.byte 0
.text
	leaq .L.str.245(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.209
.L.else.209:
.L.end.209:
	leaq -32(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	leaq new_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $20, %rax
	push %rax
	leaq new_struct_access_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $40, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.continue
	jmp .L.end.208
.L.else.208:
.L.end.208:
.data
.L.str.246:
	.byte 46
	.byte 0
.text
	leaq .L.str.246(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.210
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -48(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $7, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.211
	movq $5, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.212
.data
.L.str.247:
	.byte 99
	.byte 97
	.byte 110
	.byte 110
	.byte 111
	.byte 116
	.byte 32
	.byte 97
	.byte 99
	.byte 99
	.byte 101
	.byte 115
	.byte 115
	.byte 32
	.byte 102
	.byte 114
	.byte 111
	.byte 109
	.byte 32
	.byte 110
	.byte 111
	.byte 110
	.byte 101
	.byte 32
	.byte 115
	.byte 116
	.byte 114
	.byte 117
	.byte 99
	.byte 116
	.byte 32
	.byte 116
	.byte 121
	.byte 112
	.byte 101
	.byte 0
.text
	leaq .L.str.247(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.212
.L.else.212:
.L.end.212:
	leaq -64(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq search_struct_member@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.213
.data
.L.str.248:
	.byte 109
	.byte 101
	.byte 109
	.byte 98
	.byte 101
	.byte 114
	.byte 32
	.byte 110
	.byte 97
	.byte 109
	.byte 101
	.byte 32
	.byte 110
	.byte 111
	.byte 116
	.byte 32
	.byte 102
	.byte 111
	.byte 117
	.byte 110
	.byte 100
	.byte 0
.text
	leaq .L.str.248(%rip), %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.213
.L.else.213:
.L.end.213:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $20, %rax
	push %rax
	leaq new_struct_access_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $40, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.211
.L.else.211:
	movq $5, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.214
.data
.L.str.249:
	.byte 99
	.byte 97
	.byte 110
	.byte 110
	.byte 111
	.byte 116
	.byte 32
	.byte 97
	.byte 99
	.byte 99
	.byte 101
	.byte 115
	.byte 115
	.byte 32
	.byte 102
	.byte 114
	.byte 111
	.byte 109
	.byte 32
	.byte 110
	.byte 111
	.byte 110
	.byte 101
	.byte 32
	.byte 115
	.byte 116
	.byte 114
	.byte 117
	.byte 99
	.byte 116
	.byte 32
	.byte 116
	.byte 121
	.byte 112
	.byte 101
	.byte 0
.text
	leaq .L.str.249(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.214
.L.else.214:
.L.end.214:
	leaq -64(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq search_struct_member@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.215
.data
.L.str.250:
	.byte 109
	.byte 101
	.byte 109
	.byte 98
	.byte 101
	.byte 114
	.byte 32
	.byte 110
	.byte 97
	.byte 109
	.byte 101
	.byte 32
	.byte 110
	.byte 111
	.byte 116
	.byte 32
	.byte 102
	.byte 111
	.byte 117
	.byte 110
	.byte 100
	.byte 0
.text
	leaq .L.str.250(%rip), %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.215
.L.else.215:
.L.end.215:
.L.end.211:
	leaq -68(%rbp), %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -76(%rbp), %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -68(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $28, %rax
	push %rax
	leaq new_struct_access_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $40, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.continue
	jmp .L.end.210
.L.else.210:
.L.end.210:
	jmp .L.parse_unary.break
.L.parse_unary.continue:
	jmp .L.while.start.205
.L.while.end.205:
.L.parse_unary.break:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_func_call_args
parse_func_call_args:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_node_vec@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.216:
.data
.L.str.251:
	.byte 41
	.byte 0
.text
	leaq .L.str.251(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.216
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.252:
	.byte 44
	.byte 0
.text
	leaq .L.str.252(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.217
	jmp .L.parse_func_call_args.break
	jmp .L.end.217
.L.else.217:
.L.end.217:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.216
.L.while.end.216:
.L.parse_func_call_args.break:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_expr
parse_expr:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_logor@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.253:
	.byte 61
	.byte 0
.text
	leaq .L.str.253(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.218
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $17, %rax
	push %rax
	leaq new_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.218
.L.else.218:
.L.end.218:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_params_types
parse_params_types:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_type_vec@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.219:
.data
.L.str.254:
	.byte 41
	.byte 0
.text
	leaq .L.str.254(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.219
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.255:
	.byte 44
	.byte 0
.text
	leaq .L.str.255(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.220
	jmp .L.parse_params_types.break
	jmp .L.end.220
.L.else.220:
.L.end.220:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.219
.L.while.end.219:
.L.parse_params_types.break:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_ty
parse_ty:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.256:
	.byte 105
	.byte 54
	.byte 52
	.byte 0
.text
	leaq .L.str.256(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.221
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.221
.L.else.221:
.data
.L.str.257:
	.byte 105
	.byte 51
	.byte 50
	.byte 0
.text
	leaq .L.str.257(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.222
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.222
.L.else.222:
.data
.L.str.258:
	.byte 105
	.byte 49
	.byte 54
	.byte 0
.text
	leaq .L.str.258(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.223
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.223
.L.else.223:
.data
.L.str.259:
	.byte 105
	.byte 56
	.byte 0
.text
	leaq .L.str.259(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.224
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.224
.L.else.224:
.data
.L.str.260:
	.byte 117
	.byte 54
	.byte 52
	.byte 0
.text
	leaq .L.str.260(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.225
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.225
.L.else.225:
.data
.L.str.261:
	.byte 117
	.byte 51
	.byte 50
	.byte 0
.text
	leaq .L.str.261(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.226
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.226
.L.else.226:
.data
.L.str.262:
	.byte 117
	.byte 49
	.byte 54
	.byte 0
.text
	leaq .L.str.262(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.227
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.227
.L.else.227:
.data
.L.str.263:
	.byte 117
	.byte 56
	.byte 0
.text
	leaq .L.str.263(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.228
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.228
.L.else.228:
.data
.L.str.264:
	.byte 98
	.byte 111
	.byte 111
	.byte 108
	.byte 0
.text
	leaq .L.str.264(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.229
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $96, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.229
.L.else.229:
.data
.L.str.265:
	.byte 42
	.byte 0
.text
	leaq .L.str.265(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.230
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq new_pointer_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.230
.L.else.230:
.data
.L.str.266:
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 0
.text
	leaq .L.str.266(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.231
.data
.L.str.267:
	.byte 40
	.byte 0
.text
	leaq .L.str.267(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -32(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_params_types@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.268:
	.byte 41
	.byte 0
.text
	leaq .L.str.268(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_func_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.231
.L.else.231:
	leaq -24(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq get_user_defined_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.232
.data
.L.str.269:
	.byte 117
	.byte 110
	.byte 107
	.byte 111
	.byte 119
	.byte 110
	.byte 32
	.byte 116
	.byte 121
	.byte 112
	.byte 101
	.byte 32
	.byte 102
	.byte 111
	.byte 117
	.byte 110
	.byte 100
	.byte 0
.text
	leaq .L.str.269(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.232
.L.else.232:
.L.end.232:
.L.end.231:
.L.end.230:
.L.end.229:
.L.end.228:
.L.end.227:
.L.end.226:
.L.end.225:
.L.end.224:
.L.end.223:
.L.end.222:
.L.end.221:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global add_type_block
add_type_block:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.233
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.233
.L.else.233:
.L.end.233:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.234:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.234
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.234
.L.while.end.234:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global add_type
add_type:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.235
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.235
.L.else.235:
.L.end.235:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.236
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.236
.L.else.236:
.L.end.236:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type_block@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $100, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.237
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.238:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $100, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.238
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $100, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.238
.L.while.end.238:
	jmp .L.end.237
.L.else.237:
.L.end.237:
	movq $12, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.239
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq new_pointer_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.239
.L.else.239:
.L.end.239:
	movq $23, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.244
	movq $24, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.244
	mov $0, %rax
	jmp .L.end.244
.L.true.244:
	mov $1, %rax
.L.end.244:
	cmpq $0, %rax
	jne .L.true.243
	movq $15, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.243
	mov $0, %rax
	jmp .L.end.243
.L.true.243:
	mov $1, %rax
.L.end.243:
	cmpq $0, %rax
	jne .L.true.242
	movq $16, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.242
	mov $0, %rax
	jmp .L.end.242
.L.true.242:
	mov $1, %rax
.L.end.242:
	cmpq $0, %rax
	jne .L.true.241
	movq $18, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.241
	mov $0, %rax
	jmp .L.end.241
.L.true.241:
	mov $1, %rax
.L.end.241:
	cmpq $1, %rax
	jne .L.else.240
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.240
.L.else.240:
.L.end.240:
	movq $25, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.245
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.245
.L.else.245:
.L.end.245:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.251
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.251
	mov $0, %rax
	jmp .L.end.251
.L.true.251:
	mov $1, %rax
.L.end.251:
	cmpq $0, %rax
	jne .L.true.250
	movq $2, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.250
	mov $0, %rax
	jmp .L.end.250
.L.true.250:
	mov $1, %rax
.L.end.250:
	cmpq $0, %rax
	jne .L.true.249
	movq $3, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.249
	mov $0, %rax
	jmp .L.end.249
.L.true.249:
	mov $1, %rax
.L.end.249:
	cmpq $0, %rax
	jne .L.true.248
	movq $4, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.248
	mov $0, %rax
	jmp .L.end.248
.L.true.248:
	mov $1, %rax
.L.end.248:
	cmpq $0, %rax
	jne .L.true.247
	movq $17, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.247
	mov $0, %rax
	jmp .L.end.247
.L.true.247:
	mov $1, %rax
.L.end.247:
	cmpq $1, %rax
	jne .L.else.246
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.246
.L.else.246:
.L.end.246:
	movq $5, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.261
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.261
	mov $0, %rax
	jmp .L.end.261
.L.true.261:
	mov $1, %rax
.L.end.261:
	cmpq $0, %rax
	jne .L.true.260
	movq $6, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.260
	mov $0, %rax
	jmp .L.end.260
.L.true.260:
	mov $1, %rax
.L.end.260:
	cmpq $0, %rax
	jne .L.true.259
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.259
	mov $0, %rax
	jmp .L.end.259
.L.true.259:
	mov $1, %rax
.L.end.259:
	cmpq $0, %rax
	jne .L.true.258
	movq $9, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.258
	mov $0, %rax
	jmp .L.end.258
.L.true.258:
	mov $1, %rax
.L.end.258:
	cmpq $0, %rax
	jne .L.true.257
	movq $11, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.257
	mov $0, %rax
	jmp .L.end.257
.L.true.257:
	mov $1, %rax
.L.end.257:
	cmpq $0, %rax
	jne .L.true.256
	movq $10, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.256
	mov $0, %rax
	jmp .L.end.256
.L.true.256:
	mov $1, %rax
.L.end.256:
	cmpq $0, %rax
	jne .L.true.255
	movq $26, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.255
	mov $0, %rax
	jmp .L.end.255
.L.true.255:
	mov $1, %rax
.L.end.255:
	cmpq $0, %rax
	jne .L.true.254
	movq $27, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.254
	mov $0, %rax
	jmp .L.end.254
.L.true.254:
	mov $1, %rax
.L.end.254:
	cmpq $0, %rax
	jne .L.true.253
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.253
	mov $0, %rax
	jmp .L.end.253
.L.true.253:
	mov $1, %rax
.L.end.253:
	cmpq $1, %rax
	jne .L.else.252
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.252
.L.else.252:
.L.end.252:
	movq $14, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.262
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.262
.L.else.262:
.L.end.262:
	movq $19, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.263
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq new_pointer_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.263
.L.else.263:
.L.end.263:
	movq $20, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.264
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.264
.L.else.264:
.L.end.264:
	movq $22, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.265
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.265
.L.else.265:
.L.end.265:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_local_object
new_local_object:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq 48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq check_local_object_already_exist@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $64, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.266
.data
.L.str.270:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 40
	.byte 41
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.270(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.266
.L.else.266:
.L.end.266:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	leaq 40(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global check_local_object_already_exist
check_local_object_already_exist:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.267:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.267
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.268
.data
.L.str.271:
	.byte 110
	.byte 97
	.byte 109
	.byte 101
	.byte 32
	.byte 97
	.byte 108
	.byte 114
	.byte 101
	.byte 97
	.byte 100
	.byte 121
	.byte 32
	.byte 101
	.byte 120
	.byte 105
	.byte 115
	.byte 116
	.byte 0
.text
	leaq .L.str.271(%rip), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.268
.L.else.268:
.L.end.268:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.267
.L.while.end.267:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global find_globals
find_globals:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.269:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.269
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.270
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.270
.L.else.270:
.L.end.270:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.269
.L.while.end.269:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global find_locals
find_locals:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.271:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.271
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.272
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.272
.L.else.272:
.L.end.272:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.271
.L.while.end.271:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global cmp_func_params
cmp_func_params:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.274
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.274
	mov $0, %rax
	jmp .L.end.274
.L.true.274:
	mov $1, %rax
.L.end.274:
	cmpq $1, %rax
	jne .L.else.273
.data
.L.str.272:
	.byte 115
	.byte 111
	.byte 109
	.byte 101
	.byte 116
	.byte 104
	.byte 105
	.byte 110
	.byte 103
	.byte 32
	.byte 119
	.byte 104
	.byte 101
	.byte 110
	.byte 116
	.byte 32
	.byte 119
	.byte 114
	.byte 111
	.byte 110
	.byte 103
	.byte 32
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 112
	.byte 97
	.byte 114
	.byte 97
	.byte 109
	.byte 115
	.byte 32
	.byte 109
	.byte 117
	.byte 115
	.byte 116
	.byte 32
	.byte 110
	.byte 111
	.byte 116
	.byte 32
	.byte 98
	.byte 101
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.272(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.273
.L.else.273:
.L.end.273:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.275
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.275
.L.else.275:
.L.end.275:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.276
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.276
.L.else.276:
.L.end.276:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.277:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.277
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq cmp_func_param@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.278
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.278
.L.else.278:
.L.end.278:
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.277
.L.while.end.277:
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global cmp_func_param
cmp_func_param:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.279
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.279
.L.else.279:
.L.end.279:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.280
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.280
.L.else.280:
.L.end.280:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq cmp_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.281
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.281
.L.else.281:
.L.end.281:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global cmp_type
cmp_type:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.282
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.282
.L.else.282:
.L.end.282:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.283
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.283
.L.else.283:
.L.end.283:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.284
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.284
.L.else.284:
.L.end.284:
	movq $6, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.285
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq cmp_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.285
.L.else.285:
.L.end.285:
	movq $7, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.286
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	push %rax
	leaq cmp_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.286
.L.else.286:
.L.end.286:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.287
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.287
.L.else.287:
.L.end.287:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movsbl (%rax), %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.288
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.288
.L.else.288:
.L.end.288:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.289
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.289
.L.else.289:
.L.end.289:
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parser_skip
parser_skip:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.290
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.290
.L.else.290:
.data
.L.str.273:
	.byte 117
	.byte 110
	.byte 101
	.byte 120
	.byte 112
	.byte 101
	.byte 99
	.byte 116
	.byte 101
	.byte 100
	.byte 32
	.byte 116
	.byte 111
	.byte 107
	.byte 101
	.byte 110
	.byte 0
.text
	leaq .L.str.273(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.end.290:
	leave
	ret
.global new_node
new_node:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $108, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.291
.data
.L.str.274:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 40
	.byte 41
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.274(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.291
.L.else.291:
.L.end.291:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parser_next
parser_next:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.292
.data
.L.str.275:
	.byte 112
	.byte 97
	.byte 114
	.byte 115
	.byte 101
	.byte 114
	.byte 95
	.byte 110
	.byte 101
	.byte 120
	.byte 116
	.byte 32
	.byte 103
	.byte 111
	.byte 116
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 33
	.byte 33
	.byte 33
	.byte 10
	.byte 0
.text
	leaq .L.str.275(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.292
.L.else.292:
.L.end.292:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_parser
new_parser:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $112, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.293
.data
.L.str.276:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 40
	.byte 41
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.276(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.293
.L.else.293:
.L.end.293:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_type_vec@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	movq $0, %rax
	push %rax
.data
.L.str.277:
	.byte 105
	.byte 54
	.byte 52
	.byte 0
.text
	leaq .L.str.277(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq new_builtin_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	movq $0, %rax
	push %rax
.data
.L.str.278:
	.byte 105
	.byte 51
	.byte 50
	.byte 0
.text
	leaq .L.str.278(%rip), %rax
	push %rax
	movq $4, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq new_builtin_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	movq $0, %rax
	push %rax
.data
.L.str.279:
	.byte 105
	.byte 49
	.byte 54
	.byte 0
.text
	leaq .L.str.279(%rip), %rax
	push %rax
	movq $2, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq new_builtin_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	movq $0, %rax
	push %rax
.data
.L.str.280:
	.byte 105
	.byte 56
	.byte 0
.text
	leaq .L.str.280(%rip), %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq new_builtin_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $96, %rax
	push %rax
	movq $0, %rax
	push %rax
.data
.L.str.281:
	.byte 98
	.byte 111
	.byte 111
	.byte 108
	.byte 0
.text
	leaq .L.str.281(%rip), %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_builtin_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	movq $1, %rax
	push %rax
.data
.L.str.282:
	.byte 117
	.byte 54
	.byte 52
	.byte 0
.text
	leaq .L.str.282(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq new_builtin_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	movq $1, %rax
	push %rax
.data
.L.str.283:
	.byte 117
	.byte 51
	.byte 50
	.byte 0
.text
	leaq .L.str.283(%rip), %rax
	push %rax
	movq $4, %rax
	push %rax
	movq $9, %rax
	push %rax
	leaq new_builtin_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	push %rax
	movq $1, %rax
	push %rax
.data
.L.str.284:
	.byte 117
	.byte 49
	.byte 54
	.byte 0
.text
	leaq .L.str.284(%rip), %rax
	push %rax
	movq $2, %rax
	push %rax
	movq $10, %rax
	push %rax
	leaq new_builtin_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	movq $1, %rax
	push %rax
.data
.L.str.285:
	.byte 117
	.byte 56
	.byte 0
.text
	leaq .L.str.285(%rip), %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $11, %rax
	push %rax
	leaq new_builtin_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_func_type
new_func_type:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $50, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.294
.data
.L.str.286:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.286(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.294
.L.else.294:
.L.end.294:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $6, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	movq $8, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_pointer_type
new_pointer_type:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $50, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.295
.data
.L.str.287:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.287(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.295
.L.else.295:
.L.end.295:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $7, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	movq $8, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_builtin_type
new_builtin_type:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $50, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.296
.data
.L.str.288:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.288(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.296
.L.else.296:
.L.end.296:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq 40(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global get_user_defined_type
get_user_defined_type:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.297:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.297
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.298
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.298
.L.else.298:
.L.end.298:
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.297
.L.while.end.297:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global print_user_defined_types
print_user_defined_types:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.299:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.299
	movq $5, %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.300
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.289:
	.byte 115
	.byte 116
	.byte 114
	.byte 117
	.byte 99
	.byte 116
	.byte 32
	.byte 37
	.byte 115
	.byte 32
	.byte 123
	.byte 10
	.byte 0
.text
	leaq .L.str.289(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.301:
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.301
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.290:
	.byte 32
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.290(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.301
.L.while.end.301:
.data
.L.str.291:
	.byte 125
	.byte 10
	.byte 0
.text
	leaq .L.str.291(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.300
.L.else.300:
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.292:
	.byte 101
	.byte 114
	.byte 114
	.byte 111
	.byte 114
	.byte 58
	.byte 32
	.byte 117
	.byte 110
	.byte 107
	.byte 111
	.byte 119
	.byte 110
	.byte 32
	.byte 117
	.byte 115
	.byte 101
	.byte 114
	.byte 45
	.byte 100
	.byte 101
	.byte 102
	.byte 105
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 116
	.byte 121
	.byte 112
	.byte 101
	.byte 32
	.byte 96
	.byte 37
	.byte 115
	.byte 96
	.byte 0
.text
	leaq .L.str.292(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.300:
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.299
.L.while.end.299:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global strcmp
strcmp:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.302:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.302
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.303
	movq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.304
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.304
.L.else.304:
.L.end.304:
	jmp .L.end.303
.L.else.303:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
.L.end.303:
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.302
.L.while.end.302:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global vec_append_object
vec_append_object:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setge %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.305
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq object_vec_realloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.305
.L.else.305:
.L.end.305:
	movq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global object_vec_realloc
object_vec_realloc:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	pop %rdi
	imull %edi, %eax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.306
.data
.L.str.293:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.293(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.306
.L.else.306:
.L.end.306:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq memcpy@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_object_vec
new_object_vec:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $16, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.307
.data
.L.str.294:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.294(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.307
.L.else.307:
.L.end.307:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global vec_append_node
vec_append_node:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setge %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.308
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq node_vec_realloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.308
.L.else.308:
.L.end.308:
	movq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global node_vec_realloc
node_vec_realloc:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	pop %rdi
	imull %edi, %eax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.309
.data
.L.str.295:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.295(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.309
.L.else.309:
.L.end.309:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq memcpy@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_node_vec
new_node_vec:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $16, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.310
.data
.L.str.296:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.296(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.310
.L.else.310:
.L.end.310:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global vec_append_type
vec_append_type:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setge %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.311
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq type_vec_realloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.311
.L.else.311:
.L.end.311:
	movq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global type_vec_realloc
type_vec_realloc:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	pop %rdi
	imull %edi, %eax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.312
.data
.L.str.297:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.297(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.312
.L.else.312:
.L.end.312:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq memcpy@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_type_vec
new_type_vec:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $16, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.313
.data
.L.str.298:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.298(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.313
.L.else.313:
.L.end.313:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global vec_append_member
vec_append_member:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setge %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.314
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq member_vec_realloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.314
.L.else.314:
.L.end.314:
	movq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global member_vec_realloc
member_vec_realloc:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	pop %rdi
	imull %edi, %eax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.315
.data
.L.str.299:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.299(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.315
.L.else.315:
.L.end.315:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq memcpy@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_member_vec
new_member_vec:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $16, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.316
.data
.L.str.300:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.300(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.316
.L.else.316:
.L.end.316:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global print_all_tokens
print_all_tokens:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.317
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.317
.L.else.317:
.L.end.317:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.301:
	.byte 107
	.byte 105
	.byte 110
	.byte 100
	.byte 32
	.byte 61
	.byte 32
	.byte 37
	.byte 100
	.byte 10
	.byte 108
	.byte 105
	.byte 116
	.byte 32
	.byte 61
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 45
	.byte 45
	.byte 45
	.byte 45
	.byte 45
	.byte 45
	.byte 45
	.byte 45
	.byte 45
	.byte 45
	.byte 10
	.byte 0
.text
	leaq .L.str.301(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.318
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	push %rax
	leaq print_all_tokens@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.318
.L.else.318:
.L.end.318:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global tokenize
tokenize:
	push %rbp
	movq %rsp, %rbp
	subq $64, %rsp
	leaq -52(%rbp), %rax
	push %rax
	leaq -44(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.319:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.319
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq skip_single_line_comment@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	leaq isdigit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.320
	leaq -52(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenize_number@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.320
.L.else.320:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	leaq isalpha@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.321
	leaq -52(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenize_ident@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.321
.L.else.321:
	movq $34, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.322
	leaq -52(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenize_string@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.322
.L.else.322:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq is_two_c_punct@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.323
	leaq -52(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_token@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.323
.L.else.323:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq is_three_c_punct@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.324
	leaq -52(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_token@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.324
.L.else.324:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	leaq ispunct@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.325
	leaq -52(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_token@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.325
.L.else.325:
	movq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.326
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.326
.L.else.326:
	movq $10, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.327
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.327
.L.else.327:
	movq $9, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.328
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.328
.L.else.328:
.data
.L.str.302:
	.byte 117
	.byte 110
	.byte 107
	.byte 111
	.byte 119
	.byte 110
	.byte 32
	.byte 99
	.byte 104
	.byte 97
	.byte 114
	.byte 97
	.byte 99
	.byte 116
	.byte 101
	.byte 114
	.byte 32
	.byte 102
	.byte 111
	.byte 117
	.byte 110
	.byte 100
	.byte 0
.text
	leaq .L.str.302(%rip), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	movq $5, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_token@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.end.328:
.L.end.327:
.L.end.326:
.L.end.325:
.L.end.324:
.L.end.323:
.L.end.322:
.L.end.321:
.L.end.320:
	jmp .L.while.start.319
.L.while.end.319:
	leaq -52(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_token@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
.data
.L.str.303:
	.byte 69
	.byte 79
	.byte 70
	.byte 0
.text
	leaq .L.str.303(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	addq $36, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global tokenize_ident
tokenize_ident:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.329:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	leaq isalpha@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	jne .L.true.331
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	leaq isdigit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmp $0, %rax
	jne .L.true.331
	mov $0, %rax
	jmp .L.end.331
.L.true.331:
	mov $1, %rax
.L.end.331:
	cmpq $0, %rax
	jne .L.true.330
	movq $95, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.330
	mov $0, %rax
	jmp .L.end.330
.L.true.330:
	mov $1, %rax
.L.end.330:
	cmpq $1, %rax
	jne .L.while.end.329
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.329
.L.while.end.329:
.L.tokenize_ident.ident_end:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_token@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global tokenize_string
tokenize_string:
	push %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq string_end@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -28(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.332:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.332
	movq $92, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.333
	movq $1, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -28(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq read_escaped_char@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movsbl %al, %eax
	pop %rdi
	movb %al, (%rdi)
	jmp .L.end.333
.L.else.333:
	movq $1, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -28(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
.L.end.333:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.332
.L.while.end.332:
	movq $1, %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -36(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_token@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global read_escaped_char
read_escaped_char:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -1(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
	movq $110, %rax
	push %rax
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.334
	movq $10, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.334
.L.else.334:
.L.end.334:
	movq $116, %rax
	push %rax
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.335
	movq $9, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.335
.L.else.335:
.L.end.335:
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global string_end
string_end:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.L.while.start.336:
	movq $34, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.336
	movq $10, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.338
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.338
	mov $0, %rax
	jmp .L.end.338
.L.true.338:
	mov $1, %rax
.L.end.338:
	cmpq $1, %rax
	jne .L.else.337
.data
.L.str.304:
	.byte 117
	.byte 110
	.byte 99
	.byte 108
	.byte 111
	.byte 115
	.byte 101
	.byte 100
	.byte 32
	.byte 115
	.byte 116
	.byte 114
	.byte 105
	.byte 110
	.byte 103
	.byte 32
	.byte 108
	.byte 105
	.byte 116
	.byte 101
	.byte 114
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.304(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.337
.L.else.337:
.L.end.337:
	movq $92, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.339
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.end.339
.L.else.339:
.L.end.339:
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.336
.L.while.end.336:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global skip_single_line_comment
skip_single_line_comment:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $47, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.341
	movq $47, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.341
	movq $1, %rax
	jmp .L.end.341
.L.false.341:
	movq $0, %rax
.L.end.341:
	cmpq $1, %rax
	jne .L.else.340
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.while.start.342:
	movq $10, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.343
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.343
	movq $1, %rax
	jmp .L.end.343
.L.false.343:
	movq $0, %rax
.L.end.343:
	cmpq $1, %rax
	jne .L.while.end.342
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.342
.L.while.end.342:
	jmp .L.end.340
.L.else.340:
.L.end.340:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global tokenize_number
tokenize_number:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.344:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	leaq isdigit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.while.end.344
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.344
.L.while.end.344:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_token@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global ispunct
ispunct:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.305:
	.byte 43
	.byte 45
	.byte 60
	.byte 62
	.byte 59
	.byte 58
	.byte 123
	.byte 125
	.byte 61
	.byte 44
	.byte 40
	.byte 41
	.byte 91
	.byte 93
	.byte 46
	.byte 42
	.byte 35
	.byte 33
	.byte 37
	.byte 38
	.byte 47
	.byte 0
.text
	leaq .L.str.305(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.345:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.345
	leaq 16(%rbp), %rax
	movsbl (%rax), %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.346
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.346
.L.else.346:
.L.end.346:
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.345
.L.while.end.345:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_token
new_token:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $44, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.347
.data
.L.str.306:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 40
	.byte 41
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.306(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.347
.L.else.347:
.L.end.347:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq 40(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strndup@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global tokenizer_next
tokenizer_next:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $10, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.348
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.348
.L.else.348:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
.L.end.348:
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global is_two_c_punct
is_two_c_punct:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.307:
	.byte 61
	.byte 61
	.byte 60
	.byte 61
	.byte 62
	.byte 61
	.byte 33
	.byte 61
	.byte 43
	.byte 43
	.byte 45
	.byte 45
	.byte 124
	.byte 124
	.byte 38
	.byte 38
	.byte 0
.text
	leaq .L.str.307(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.349:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.349
	movq $15, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setge %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.350
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.350
.L.else.350:
.L.end.350:
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	push %rax
	movq $1, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.352
	movq $1, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	push %rax
	movq $1, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.352
	movq $1, %rax
	jmp .L.end.352
.L.false.352:
	movq $0, %rax
.L.end.352:
	cmpq $1, %rax
	jne .L.else.351
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.351
.L.else.351:
.L.end.351:
	leaq -12(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.while.start.349
.L.while.end.349:
	leave
	ret
.global is_three_c_punct
is_three_c_punct:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $46, %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.355
	movq $46, %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.355
	movq $1, %rax
	jmp .L.end.355
.L.false.355:
	movq $0, %rax
.L.end.355:
	cmpq $0, %rax
	je .L.false.354
	movq $46, %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $2, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.354
	movq $1, %rax
	jmp .L.end.354
.L.false.354:
	movq $0, %rax
.L.end.354:
	cmpq $1, %rax
	jne .L.else.353
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.353
.L.else.353:
.L.end.353:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global print_error
print_error:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.308:
	.byte 37
	.byte 115
	.byte 58
	.byte 37
	.byte 100
	.byte 58
	.byte 37
	.byte 100
	.byte 58
	.byte 32
	.byte 101
	.byte 114
	.byte 114
	.byte 111
	.byte 114
	.byte 58
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.308(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	pop %rcx
	pop %r8
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
.global strlen
strlen:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.356:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.356
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.356
.L.while.end.356:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_tokenizer
new_tokenizer:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $24, %rax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.357
.data
.L.str.309:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 40
	.byte 41
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.309(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.357
.L.else.357:
.L.end.357:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global itoa
itoa:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.358
	movq $1, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	movq $48, %rax
	pop %rdi
	movb %al, (%rdi)
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.358
.L.else.358:
.L.end.358:
.L.while.start.359:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.359
	leaq -8(%rbp), %rax
	push %rax
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cltd
	idivl %edi
	movq %rdx, %rax
	pop %rdi
	movl %eax, (%rdi)
	movq $9, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setg %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.360
	movq $1, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	movq $97, %rax
	push %rax
	movq $10, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movb %al, (%rdi)
	jmp .L.end.360
.L.else.360:
	movq $1, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	movq $48, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movb %al, (%rdi)
.L.end.360:
	leaq 16(%rbp), %rax
	push %rax
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cltd
	idivl %edi
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.while.start.359
.L.while.end.359:
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq reverse@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global reverse
reverse:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.361:
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.361
	leaq -9(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq -9(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	addl %edi, %eax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.361
.L.while.end.361:
	leave
	ret
.global strndup
strndup:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	push %rax
	pop %rdi
	leaq alloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.362
.data
.L.str.310:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 40
	.byte 41
	.byte 32
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 101
	.byte 100
	.byte 32
	.byte 110
	.byte 105
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.310(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.362
.L.else.362:
.L.end.362:
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.363:
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.363
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.363
.L.while.end.363:
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global atoi
atoi:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -9(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	movq $45, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.364
	leaq -9(%rbp), %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.end.364
.L.else.364:
.L.end.364:
.L.while.start.365:
	movq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.365
	leaq -8(%rbp), %rax
	push %rax
	movq $48, %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movsbl (%rax), %eax
	push %rax
	movq $10, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.while.start.365
.L.while.end.365:
	leaq -9(%rbp), %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.366
	leaq -8(%rbp), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.366
.L.else.366:
.L.end.366:
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global isdigit
isdigit:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movsbl (%rax), %eax
	push %rax
	movq $48, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.368
	movq $57, %rax
	push %rax
	leaq 16(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.368
	movq $1, %rax
	jmp .L.end.368
.L.false.368:
	movq $0, %rax
.L.end.368:
	cmpq $1, %rax
	jne .L.else.367
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.367
.L.else.367:
.L.end.367:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global isalpha
isalpha:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movsbl (%rax), %eax
	push %rax
	movq $65, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.371
	movq $90, %rax
	push %rax
	leaq 16(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.371
	movq $1, %rax
	jmp .L.end.371
.L.false.371:
	movq $0, %rax
.L.end.371:
	cmpq $0, %rax
	jne .L.true.370
	leaq 16(%rbp), %rax
	movsbl (%rax), %eax
	push %rax
	movq $97, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.372
	movq $122, %rax
	push %rax
	leaq 16(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.372
	movq $1, %rax
	jmp .L.end.372
.L.false.372:
	movq $0, %rax
.L.end.372:
	cmp $0, %rax
	jne .L.true.370
	mov $0, %rax
	jmp .L.end.370
.L.true.370:
	mov $1, %rax
.L.end.370:
	cmpq $1, %rax
	jne .L.else.369
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.369
.L.else.369:
.L.end.369:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global memcpy
memcpy:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.373:
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.373
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.373
.L.while.end.373:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global align_to
align_to:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	cltd
	idivl %edi
	pop %rdi
	imull %edi, %eax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global exit
exit:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $0, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $60, %rax
	push %rax
	leaq syscall@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global write
write:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq syscall@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global close
close:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $0, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq syscall@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global read
read:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq syscall@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global open
open:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq syscall@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
