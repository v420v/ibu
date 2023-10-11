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
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
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
	pop %rdi
	pop %rsi
	pop %rdx
	leaq open@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
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
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
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
	pop %rdi
	pop %rsi
	pop %rdx
	leaq read@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	leaq close@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
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
	pop %rdi
	pop %rsi
	pop %rdx
	leaq open@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
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
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
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
	pop %rdi
	pop %rsi
	pop %rdx
	leaq read@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	leaq close@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
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
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq is_c_func@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.19
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	push %rax
	leaq c_func_assign_offset@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.19
.L.else.19:
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
.L.end.19:
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
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq is_c_func@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.20
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_func_params@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.20
.L.else.20:
.L.end.20:
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
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.21
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
	jmp .L.end.21
.L.else.21:
.L.end.21:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $53, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	je .L.false.23
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
	je .L.false.23
	movq $1, %rax
	jmp .L.end.23
.L.false.23:
	movq $0, %rax
.L.end.23:
	cmpq $1, %rax
	jne .L.else.22
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
	jmp .L.end.22
.L.else.22:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $53, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.24
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
	jmp .L.end.24
.L.else.24:
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
.L.end.24:
.L.end.22:
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
.global c_func_assign_offset
c_func_assign_offset:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	movq $16, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.25:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.25
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $53, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	je .L.false.27
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
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
	je .L.false.27
	movq $1, %rax
	jmp .L.end.27
.L.false.27:
	movq $0, %rax
.L.end.27:
	cmpq $1, %rax
	jne .L.else.26
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.26
.L.else.26:
	leaq -12(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
.L.end.26:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.25
.L.while.end.25:
	movq $16, %rax
	push %rax
	leaq -12(%rbp), %rax
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
.global gen_func_params
gen_func_params:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.28:
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
	jne .L.while.end.28
	movq $5, %rax
	push %rax
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
	addq $12, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.29
	movq $8, %rax
	push %rax
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
	addq $12, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setg %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.30
	jmp .L.gen_func_params.next
	jmp .L.end.30
.L.else.30:
	movq $8, %rax
	push %rax
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
	addq $12, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.31
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs64@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs64@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
.data
.L.str.27:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 40
	.byte 37
	.byte 115
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.27(%rip), %rax
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
	movq $4, %rax
	push %rax
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
	addq $12, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.32
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs64@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs64@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
.data
.L.str.28:
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
	.byte 115
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.28(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.32
.L.else.32:
	movq $2, %rax
	push %rax
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
	addq $12, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.33
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs32@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs64@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
.data
.L.str.29:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 115
	.byte 119
	.byte 108
	.byte 32
	.byte 40
	.byte 37
	.byte 115
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.29(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.33
.L.else.33:
	movq $1, %rax
	push %rax
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
	addq $12, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.34
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs32@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs64@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
.data
.L.str.30:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 115
	.byte 98
	.byte 108
	.byte 32
	.byte 40
	.byte 37
	.byte 115
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.30(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.34
.L.else.34:
.data
.L.str.31:
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
	leaq .L.str.31(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.34:
.L.end.33:
.L.end.32:
.L.end.31:
.L.end.30:
	jmp .L.end.29
.L.else.29:
.L.end.29:
	movq $1, %rax
	push %rax
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
	addq $12, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.35
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
	addq $20, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs8@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
.data
.L.str.32:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 98
	.byte 32
	.byte 37
	.byte 115
	.byte 44
	.byte 32
	.byte 37
	.byte 100
	.byte 40
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.32(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.35
.L.else.35:
	movq $2, %rax
	push %rax
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
	addq $12, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.36
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
	addq $20, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs16@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
.data
.L.str.33:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 119
	.byte 32
	.byte 37
	.byte 115
	.byte 44
	.byte 32
	.byte 37
	.byte 100
	.byte 40
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.33(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.36
.L.else.36:
	movq $4, %rax
	push %rax
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
	addq $12, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.37
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
	addq $20, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs32@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
.data
.L.str.34:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 108
	.byte 32
	.byte 37
	.byte 115
	.byte 44
	.byte 32
	.byte 37
	.byte 100
	.byte 40
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.34(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.37
.L.else.37:
	movq $8, %rax
	push %rax
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
	addq $12, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.38
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
	addq $20, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs64@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
.data
.L.str.35:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 115
	.byte 44
	.byte 32
	.byte 37
	.byte 100
	.byte 40
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 41
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
	jmp .L.end.38
.L.else.38:
.data
.L.str.36:
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
	leaq .L.str.36(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.38:
.L.end.37:
.L.end.36:
.L.end.35:
.L.gen_func_params.next:
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
	jmp .L.while.start.28
.L.while.end.28:
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
.L.while.start.39:
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
	jne .L.while.end.39
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
	jmp .L.while.start.39
.L.while.end.39:
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
	jne .L.else.40
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
	jmp .L.end.40
.L.else.40:
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
	jne .L.else.41
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
	jmp .L.end.41
.L.else.41:
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
	jne .L.else.42
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
.L.str.37:
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
	leaq .L.str.37(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.38:
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
	leaq .L.str.38(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.39:
	.byte 9
	.byte 114
	.byte 101
	.byte 116
	.byte 113
	.byte 10
	.byte 0
.text
	leaq .L.str.39(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.42
.L.else.42:
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
	jne .L.else.43
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
.L.str.40:
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
	leaq .L.str.40(%rip), %rax
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
.L.str.41:
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
	leaq .L.str.41(%rip), %rax
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
.L.str.42:
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
	leaq .L.str.42(%rip), %rax
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
.L.str.43:
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
	leaq .L.str.43(%rip), %rax
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
	jne .L.else.44
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
	jmp .L.end.44
.L.else.44:
.L.end.44:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.44:
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
	leaq .L.str.44(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.43
.L.else.43:
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
	jne .L.else.45
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
.L.str.45:
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
	leaq .L.str.45(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.45
.L.else.45:
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
	jne .L.else.46
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
.L.str.46:
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
	leaq .L.str.46(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.46
.L.else.46:
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
	jne .L.else.47
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
.L.str.47:
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
	leaq .L.str.47(%rip), %rax
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
.L.str.48:
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
	leaq .L.str.48(%rip), %rax
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
.L.str.49:
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
	leaq .L.str.49(%rip), %rax
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
.L.str.50:
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
	leaq .L.str.50(%rip), %rax
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
.L.str.51:
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
	leaq .L.str.51(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.47
.L.else.47:
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
	jne .L.else.48
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
.L.str.52:
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
	leaq .L.str.52(%rip), %rax
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
.L.str.53:
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
	leaq .L.str.53(%rip), %rax
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
	jmp .L.end.48
.L.else.48:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.54:
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
	leaq .L.str.54(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.55:
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
	leaq .L.str.55(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.48:
.L.end.47:
.L.end.46:
.L.end.45:
.L.end.43:
.L.end.42:
.L.end.41:
.L.end.40:
	leave
	ret
.global is_c_func
is_c_func:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.data
.L.str.56:
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 0
.text
	leaq .L.str.56(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.49
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.49
.L.else.49:
.L.end.49:
.data
.L.str.57:
	.byte 101
	.byte 120
	.byte 105
	.byte 116
	.byte 0
.text
	leaq .L.str.57(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.50
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.50
.L.else.50:
.L.end.50:
.data
.L.str.58:
	.byte 111
	.byte 112
	.byte 101
	.byte 110
	.byte 0
.text
	leaq .L.str.58(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.51
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.51
.L.else.51:
.L.end.51:
.data
.L.str.59:
	.byte 114
	.byte 101
	.byte 97
	.byte 100
	.byte 0
.text
	leaq .L.str.59(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.52
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.52
.L.else.52:
.L.end.52:
.data
.L.str.60:
	.byte 119
	.byte 114
	.byte 105
	.byte 116
	.byte 101
	.byte 0
.text
	leaq .L.str.60(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.53
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.53
.L.else.53:
.L.end.53:
.data
.L.str.61:
	.byte 99
	.byte 108
	.byte 111
	.byte 115
	.byte 101
	.byte 0
.text
	leaq .L.str.61(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.54
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.54
.L.else.54:
.L.end.54:
.data
.L.str.62:
	.byte 112
	.byte 114
	.byte 105
	.byte 110
	.byte 116
	.byte 102
	.byte 0
.text
	leaq .L.str.62(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.55
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.55
.L.else.55:
.L.end.55:
.data
.L.str.63:
	.byte 101
	.byte 112
	.byte 114
	.byte 105
	.byte 110
	.byte 116
	.byte 102
	.byte 0
.text
	leaq .L.str.63(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.56
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.56
.L.else.56:
.L.end.56:
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
	jne .L.else.57
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.57
.L.else.57:
.L.end.57:
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
.L.while.start.58:
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.58
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
.L.str.64:
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
	leaq .L.str.64(%rip), %rax
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
	jmp .L.while.start.58
.L.while.end.58:
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
	jne .L.else.59
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.59
.L.else.59:
.L.end.59:
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
.L.while.start.60:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.60
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
.L.str.65:
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
	leaq .L.str.65(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.while.start.60
.L.while.end.60:
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.61:
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
	jne .L.while.end.61
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
	jne .L.else.62
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
.L.str.66:
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
	leaq .L.str.66(%rip), %rax
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
.L.end.62:
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
	jmp .L.while.start.61
.L.while.end.61:
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
	jne .L.else.63
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.63
.L.else.63:
.L.end.63:
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
.L.while.start.64:
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
	jne .L.while.end.64
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
	jne .L.else.65
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
	jmp .L.end.65
.L.else.65:
.L.end.65:
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
	jmp .L.while.start.64
.L.while.end.64:
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
.L.str.67:
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
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.66:
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
	jne .L.while.end.66
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
	leaq .L.str.68(%rip), %rax
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
.L.str.69:
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
	leaq .L.str.69(%rip), %rax
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
	jmp .L.while.start.66
.L.while.end.66:
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
	jne .L.else.67
.data
.L.str.70:
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
	leaq .L.str.70(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.67
.L.else.67:
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
	jne .L.else.68
.data
.L.str.71:
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
	leaq .L.str.71(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.68
.L.else.68:
.data
.L.str.72:
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
	leaq .L.str.72(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.68:
.L.end.67:
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
	jne .L.else.69
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.73:
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
	leaq .L.str.73(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.69
.L.else.69:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.74:
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
	leaq .L.str.74(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.69:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global gen_load_regi
gen_load_regi:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.70
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs64@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs64@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
.data
.L.str.75:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 40
	.byte 37
	.byte 115
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.75(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.70
.L.else.70:
	movq $4, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.71
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs64@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs64@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
.data
.L.str.76:
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
	.byte 115
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.76(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.71
.L.else.71:
	movq $2, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.72
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs32@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs64@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
.data
.L.str.77:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 115
	.byte 119
	.byte 108
	.byte 32
	.byte 40
	.byte 37
	.byte 115
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.77(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.72
.L.else.72:
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.73
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs32@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq amd64_system_v_call_regs64@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
.data
.L.str.78:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 115
	.byte 98
	.byte 108
	.byte 32
	.byte 40
	.byte 37
	.byte 115
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.78(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	pop %rdx
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.73
.L.else.73:
.data
.L.str.79:
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
	leaq .L.str.79(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.73:
.L.end.72:
.L.end.71:
.L.end.70:
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
	subq $0, %rsp
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
	jne .L.else.74
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.74
.L.else.74:
.L.end.74:
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
	jne .L.else.75
.data
.L.str.80:
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
	leaq .L.str.80(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.75
.L.else.75:
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
	jne .L.else.76
.data
.L.str.81:
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
	leaq .L.str.81(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.76
.L.else.76:
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
	jne .L.else.77
.data
.L.str.82:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
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
	leaq .L.str.82(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.77
.L.else.77:
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
	jne .L.else.78
.data
.L.str.83:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
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
	leaq .L.str.83(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.78
.L.else.78:
.data
.L.str.84:
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
	leaq .L.str.84(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.78:
.L.end.77:
.L.end.76:
.L.end.75:
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
	jne .L.else.79
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.80:
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
	jne .L.while.end.80
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.85:
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
	leaq .L.str.85(%rip), %rax
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
.L.str.86:
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
	leaq .L.str.86(%rip), %rax
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
	jmp .L.while.start.80
.L.while.end.80:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.79
.L.else.79:
.L.end.79:
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
	jne .L.else.81
.data
.L.str.87:
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
	leaq .L.str.87(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.81
.L.else.81:
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
	jne .L.else.82
.data
.L.str.88:
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
	leaq .L.str.88(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.82
.L.else.82:
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
	jne .L.else.83
.data
.L.str.89:
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
	leaq .L.str.89(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.83
.L.else.83:
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
	jne .L.else.84
.data
.L.str.90:
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
	leaq .L.str.90(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.84
.L.else.84:
.data
.L.str.91:
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
	leaq .L.str.91(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.84:
.L.end.83:
.L.end.82:
.L.end.81:
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
	jne .L.else.85
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
.L.str.92:
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
	leaq .L.str.92(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.85
.L.else.85:
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
	jne .L.else.86
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $54, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.87
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.93:
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
	leaq .L.str.93(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.87
.L.else.87:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $20, %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.94:
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
	leaq .L.str.94(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.87:
	jmp .L.end.86
.L.else.86:
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
	jne .L.else.88
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
	jmp .L.end.88
.L.else.88:
.data
.L.str.95:
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
	leaq .L.str.95(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.88:
.L.end.86:
.L.end.85:
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
.L.str.96:
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
	leaq .L.str.96(%rip), %rax
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
.L.str.97:
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
	leaq .L.str.97(%rip), %rax
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
	jne .L.else.89
.data
.L.str.98:
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
	leaq .L.str.98(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.89
.L.else.89:
.L.end.89:
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
	jne .L.else.90
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
	jmp .L.end.90
.L.else.90:
.L.end.90:
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
	jne .L.else.91
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
.L.str.99:
	.byte 46
	.byte 100
	.byte 97
	.byte 116
	.byte 97
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
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.100:
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
	leaq .L.str.100(%rip), %rax
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
.L.while.start.92:
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.92
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
.data
.L.str.101:
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
	leaq .L.str.101(%rip), %rax
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
	jmp .L.while.start.92
.L.while.end.92:
.data
.L.str.102:
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
	leaq .L.str.102(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.103:
	.byte 46
	.byte 116
	.byte 101
	.byte 120
	.byte 116
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
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.104:
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
	leaq .L.str.104(%rip), %rax
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
	jmp .L.end.91
.L.else.91:
.L.end.91:
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
	jne .L.else.93
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.105:
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
	leaq .L.str.105(%rip), %rax
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
	jmp .L.end.93
.L.else.93:
.L.end.93:
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
	jne .L.else.94
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
.L.str.106:
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
	leaq .L.str.106(%rip), %rax
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
.L.str.107:
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
	leaq .L.str.107(%rip), %rax
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
	jmp .L.end.94
.L.else.94:
.L.end.94:
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
	jne .L.else.95
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
	jmp .L.end.95
.L.else.95:
.L.end.95:
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
	jne .L.else.96
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
	cmpq $1, %rax
	jne .L.else.97
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
.L.str.108:
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
	leaq .L.str.108(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.109:
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
	leaq .L.str.110(%rip), %rax
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
.L.str.111:
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
	leaq .L.str.111(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.97
.L.else.97:
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
.L.str.112:
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
	leaq .L.str.112(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.113:
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
	leaq .L.str.113(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.114:
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
	leaq .L.str.114(%rip), %rax
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
.L.str.115:
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
	leaq .L.str.115(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.97:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.96
.L.else.96:
.L.end.96:
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
	jne .L.else.98
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
	jmp .L.end.98
.L.else.98:
.L.end.98:
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
	jne .L.else.99
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
	jmp .L.end.99
.L.else.99:
.L.end.99:
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
	jne .L.else.100
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
	jmp .L.end.100
.L.else.100:
.L.end.100:
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
	jne .L.else.101
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
.L.str.116:
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
	leaq .L.str.116(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.117:
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
	leaq .L.str.117(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.118:
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
	leaq .L.str.118(%rip), %rax
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
	jmp .L.end.101
.L.else.101:
.L.end.101:
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
.L.str.119:
	.byte 97
	.byte 100
	.byte 100
	.byte 0
.text
	leaq .L.str.119(%rip), %rax
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
	jmp .L.end.102
.L.else.102:
.L.end.102:
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
	jne .L.else.103
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
	.byte 115
	.byte 117
	.byte 98
	.byte 0
.text
	leaq .L.str.120(%rip), %rax
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
	jmp .L.end.103
.L.else.103:
.L.end.103:
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
.L.str.121:
	.byte 105
	.byte 109
	.byte 117
	.byte 108
	.byte 0
.text
	leaq .L.str.121(%rip), %rax
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
	jmp .L.end.104
.L.else.104:
.L.end.104:
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
	cmpq $1, %rax
	jne .L.else.105
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
	jne .L.else.106
.data
.L.str.122:
	.byte 9
	.byte 99
	.byte 113
	.byte 116
	.byte 111
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
	jmp .L.end.106
.L.else.106:
.data
.L.str.123:
	.byte 9
	.byte 99
	.byte 108
	.byte 116
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.123(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.106:
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
	jne .L.else.107
.data
.L.str.124:
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
	leaq .L.str.124(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.107
.L.else.107:
.data
.L.str.125:
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
	leaq .L.str.125(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.107:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.105
.L.else.105:
.L.end.105:
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
	jne .L.else.108
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
	jne .L.else.109
.data
.L.str.126:
	.byte 9
	.byte 99
	.byte 113
	.byte 116
	.byte 111
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
	jmp .L.end.109
.L.else.109:
.data
.L.str.127:
	.byte 9
	.byte 99
	.byte 108
	.byte 116
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.127(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.109:
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
	jne .L.else.110
.data
.L.str.128:
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
	leaq .L.str.128(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.110
.L.else.110:
.data
.L.str.129:
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
	leaq .L.str.129(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.110:
.data
.L.str.130:
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
	leaq .L.str.130(%rip), %rax
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
	jmp .L.end.108
.L.else.108:
.L.end.108:
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
	jne .L.else.111
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
.L.str.131:
	.byte 99
	.byte 109
	.byte 112
	.byte 0
.text
	leaq .L.str.131(%rip), %rax
	push %rax
	leaq gen_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.132:
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
	leaq .L.str.132(%rip), %rax
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
	jmp .L.end.111
.L.else.111:
.L.end.111:
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
	jne .L.else.112
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
.L.str.133:
	.byte 99
	.byte 109
	.byte 112
	.byte 0
.text
	leaq .L.str.133(%rip), %rax
	push %rax
	leaq gen_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.134:
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
	leaq .L.str.134(%rip), %rax
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
	jmp .L.end.112
.L.else.112:
.L.end.112:
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
	jne .L.else.113
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
.L.str.135:
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
	leaq .L.str.136(%rip), %rax
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
.L.str.137:
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
	leaq .L.str.137(%rip), %rax
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
.L.str.138:
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
	leaq .L.str.138(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.139:
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
	leaq .L.str.139(%rip), %rax
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
.L.str.140:
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
	leaq .L.str.140(%rip), %rax
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
.L.str.141:
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
	leaq .L.str.141(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.142:
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
	leaq .L.str.142(%rip), %rax
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
.L.str.143:
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
	leaq .L.str.143(%rip), %rax
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
	jmp .L.end.113
.L.else.113:
.L.end.113:
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
	jne .L.else.114
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
.L.str.144:
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
	leaq .L.str.144(%rip), %rax
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
.L.str.145:
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
	leaq .L.str.145(%rip), %rax
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
.L.str.146:
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
	leaq .L.str.146(%rip), %rax
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
.L.str.147:
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
	leaq .L.str.147(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.148:
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
	leaq .L.str.148(%rip), %rax
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
.L.str.149:
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
	leaq .L.str.149(%rip), %rax
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
.L.str.150:
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
	leaq .L.str.150(%rip), %rax
	push %rax
	pop %rdi
	pop %rsi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.data
.L.str.151:
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
	leaq .L.str.151(%rip), %rax
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
.L.str.152:
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
	leaq .L.str.152(%rip), %rax
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
	jmp .L.end.114
.L.else.114:
.L.end.114:
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
	jne .L.else.115
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
.L.str.153:
	.byte 99
	.byte 109
	.byte 112
	.byte 0
.text
	leaq .L.str.153(%rip), %rax
	push %rax
	leaq gen_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.154:
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
	leaq .L.str.154(%rip), %rax
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
	jmp .L.end.115
.L.else.115:
.L.end.115:
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
	jne .L.else.116
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
.L.str.155:
	.byte 99
	.byte 109
	.byte 112
	.byte 0
.text
	leaq .L.str.155(%rip), %rax
	push %rax
	leaq gen_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.156:
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
	leaq .L.str.156(%rip), %rax
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
	jmp .L.end.116
.L.else.116:
.L.end.116:
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
	jne .L.else.117
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
.L.str.157:
	.byte 99
	.byte 109
	.byte 112
	.byte 0
.text
	leaq .L.str.157(%rip), %rax
	push %rax
	leaq gen_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.158:
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
	leaq .L.str.158(%rip), %rax
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
	jmp .L.end.117
.L.else.117:
.L.end.117:
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
	jne .L.else.118
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
.L.str.159:
	.byte 99
	.byte 109
	.byte 112
	.byte 0
.text
	leaq .L.str.159(%rip), %rax
	push %rax
	leaq gen_binop@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.160:
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
	leaq .L.str.160(%rip), %rax
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
	jmp .L.end.118
.L.else.118:
.L.end.118:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.161:
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
	leaq .L.str.161(%rip), %rax
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
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
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
.global amd64_system_v_call_regs8
amd64_system_v_call_regs8:
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
	jne .L.else.119
.data
.L.str.162:
	.byte 37
	.byte 100
	.byte 105
	.byte 108
	.byte 0
.text
	leaq .L.str.162(%rip), %rax
	jmp .L.end.119
.L.else.119:
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.120
.data
.L.str.163:
	.byte 37
	.byte 115
	.byte 105
	.byte 108
	.byte 0
.text
	leaq .L.str.163(%rip), %rax
	jmp .L.end.120
.L.else.120:
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.121
.data
.L.str.164:
	.byte 37
	.byte 100
	.byte 108
	.byte 0
.text
	leaq .L.str.164(%rip), %rax
	jmp .L.end.121
.L.else.121:
	movq $3, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.122
.data
.L.str.165:
	.byte 37
	.byte 99
	.byte 108
	.byte 0
.text
	leaq .L.str.165(%rip), %rax
	jmp .L.end.122
.L.else.122:
	movq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.123
.data
.L.str.166:
	.byte 37
	.byte 114
	.byte 56
	.byte 98
	.byte 0
.text
	leaq .L.str.166(%rip), %rax
	jmp .L.end.123
.L.else.123:
	movq $5, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.124
.data
.L.str.167:
	.byte 37
	.byte 114
	.byte 57
	.byte 98
	.byte 0
.text
	leaq .L.str.167(%rip), %rax
	jmp .L.end.124
.L.else.124:
.data
.L.str.168:
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
	leaq .L.str.168(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.124:
.L.end.123:
.L.end.122:
.L.end.121:
.L.end.120:
.L.end.119:
	leave
	ret
.global amd64_system_v_call_regs16
amd64_system_v_call_regs16:
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
	jne .L.else.125
.data
.L.str.169:
	.byte 37
	.byte 100
	.byte 105
	.byte 0
.text
	leaq .L.str.169(%rip), %rax
	jmp .L.end.125
.L.else.125:
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.126
.data
.L.str.170:
	.byte 37
	.byte 115
	.byte 105
	.byte 0
.text
	leaq .L.str.170(%rip), %rax
	jmp .L.end.126
.L.else.126:
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.127
.data
.L.str.171:
	.byte 37
	.byte 100
	.byte 120
	.byte 0
.text
	leaq .L.str.171(%rip), %rax
	jmp .L.end.127
.L.else.127:
	movq $3, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.128
.data
.L.str.172:
	.byte 37
	.byte 99
	.byte 120
	.byte 0
.text
	leaq .L.str.172(%rip), %rax
	jmp .L.end.128
.L.else.128:
	movq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.129
.data
.L.str.173:
	.byte 37
	.byte 114
	.byte 56
	.byte 119
	.byte 0
.text
	leaq .L.str.173(%rip), %rax
	jmp .L.end.129
.L.else.129:
	movq $5, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.130
.data
.L.str.174:
	.byte 37
	.byte 114
	.byte 57
	.byte 119
	.byte 0
.text
	leaq .L.str.174(%rip), %rax
	jmp .L.end.130
.L.else.130:
.data
.L.str.175:
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
	leaq .L.str.175(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.130:
.L.end.129:
.L.end.128:
.L.end.127:
.L.end.126:
.L.end.125:
	leave
	ret
.global amd64_system_v_call_regs32
amd64_system_v_call_regs32:
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
	jne .L.else.131
.data
.L.str.176:
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 0
.text
	leaq .L.str.176(%rip), %rax
	jmp .L.end.131
.L.else.131:
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.132
.data
.L.str.177:
	.byte 37
	.byte 101
	.byte 115
	.byte 105
	.byte 0
.text
	leaq .L.str.177(%rip), %rax
	jmp .L.end.132
.L.else.132:
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.133
.data
.L.str.178:
	.byte 37
	.byte 101
	.byte 100
	.byte 120
	.byte 0
.text
	leaq .L.str.178(%rip), %rax
	jmp .L.end.133
.L.else.133:
	movq $3, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.134
.data
.L.str.179:
	.byte 37
	.byte 101
	.byte 99
	.byte 120
	.byte 0
.text
	leaq .L.str.179(%rip), %rax
	jmp .L.end.134
.L.else.134:
	movq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.135
.data
.L.str.180:
	.byte 37
	.byte 114
	.byte 56
	.byte 100
	.byte 0
.text
	leaq .L.str.180(%rip), %rax
	jmp .L.end.135
.L.else.135:
	movq $5, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.136
.data
.L.str.181:
	.byte 37
	.byte 114
	.byte 57
	.byte 100
	.byte 0
.text
	leaq .L.str.181(%rip), %rax
	jmp .L.end.136
.L.else.136:
.data
.L.str.182:
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
	leaq .L.str.182(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.136:
.L.end.135:
.L.end.134:
.L.end.133:
.L.end.132:
.L.end.131:
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
	jne .L.else.137
.data
.L.str.183:
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 0
.text
	leaq .L.str.183(%rip), %rax
	jmp .L.end.137
.L.else.137:
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.138
.data
.L.str.184:
	.byte 37
	.byte 114
	.byte 115
	.byte 105
	.byte 0
.text
	leaq .L.str.184(%rip), %rax
	jmp .L.end.138
.L.else.138:
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.139
.data
.L.str.185:
	.byte 37
	.byte 114
	.byte 100
	.byte 120
	.byte 0
.text
	leaq .L.str.185(%rip), %rax
	jmp .L.end.139
.L.else.139:
	movq $3, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.140
.data
.L.str.186:
	.byte 37
	.byte 114
	.byte 99
	.byte 120
	.byte 0
.text
	leaq .L.str.186(%rip), %rax
	jmp .L.end.140
.L.else.140:
	movq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.141
.data
.L.str.187:
	.byte 37
	.byte 114
	.byte 56
	.byte 0
.text
	leaq .L.str.187(%rip), %rax
	jmp .L.end.141
.L.else.141:
	movq $5, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.142
.data
.L.str.188:
	.byte 37
	.byte 114
	.byte 57
	.byte 0
.text
	leaq .L.str.188(%rip), %rax
	jmp .L.end.142
.L.else.142:
.data
.L.str.189:
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
	leaq .L.str.189(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.142:
.L.end.141:
.L.end.140:
.L.end.139:
.L.end.138:
.L.end.137:
	leave
	ret
.global parse
parse:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.L.while.start.143:
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
	jne .L.while.end.143
.data
.L.str.190:
	.byte 102
	.byte 117
	.byte 110
	.byte 99
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
	cmpq $1, %rax
	jne .L.else.144
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_func@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.144
.L.else.144:
.data
.L.str.191:
	.byte 115
	.byte 116
	.byte 114
	.byte 117
	.byte 99
	.byte 116
	.byte 0
.text
	leaq .L.str.191(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.145
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_struct@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.145
.L.else.145:
.data
.L.str.192:
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
	leaq .L.str.192(%rip), %rax
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
.L.end.145:
.L.end.144:
	jmp .L.while.start.143
.L.while.end.143:
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
.L.str.193:
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 0
.text
	leaq .L.str.193(%rip), %rax
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
.L.str.194:
	.byte 40
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
.L.while.start.146:
.data
.L.str.195:
	.byte 41
	.byte 0
.text
	leaq .L.str.195(%rip), %rax
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
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.146
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
.L.str.196:
	.byte 46
	.byte 46
	.byte 46
	.byte 0
.text
	leaq .L.str.196(%rip), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.147
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
.data
.L.str.197:
	.byte 41
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
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.148
.data
.L.str.198:
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
	leaq .L.str.198(%rip), %rax
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
	jmp .L.end.148
.L.else.148:
.L.end.148:
	jmp .L.end.147
.L.else.147:
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
.L.str.199:
	.byte 44
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
	cmpq $1, %rax
	jne .L.else.149
.data
.L.str.200:
	.byte 44
	.byte 0
.text
	leaq .L.str.200(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.149
.L.else.149:
.L.end.149:
.L.end.147:
.data
.L.str.201:
	.byte 41
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
	cmpq $1, %rax
	jne .L.else.150
	jmp .L.parse_func.break
	jmp .L.end.150
.L.else.150:
.L.end.150:
	jmp .L.while.start.146
.L.while.end.146:
.L.parse_func.break:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.202:
	.byte 41
	.byte 0
.text
	leaq .L.str.202(%rip), %rax
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
.L.str.203:
	.byte 59
	.byte 0
.text
	leaq .L.str.203(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.151
.data
.L.str.204:
	.byte 59
	.byte 0
.text
	leaq .L.str.204(%rip), %rax
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
	jne .L.else.152
.data
.L.str.205:
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
	leaq .L.str.205(%rip), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.152
.L.else.152:
.L.end.152:
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
	jmp .L.end.151
.L.else.151:
	movq $0, %rax
	push %rax
	leaq -80(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.153
	leaq -80(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.154
.data
.L.str.206:
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
	leaq .L.str.206(%rip), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.154
.L.else.154:
.L.end.154:
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
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.155
.data
.L.str.207:
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
	leaq .L.str.207(%rip), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.155
.L.else.155:
.L.end.155:
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
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.156
.data
.L.str.208:
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
	leaq .L.str.208(%rip), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.156
.L.else.156:
.L.end.156:
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
	jmp .L.end.153
.L.else.153:
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
.L.end.153:
.L.end.151:
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
.L.str.209:
	.byte 115
	.byte 116
	.byte 114
	.byte 117
	.byte 99
	.byte 116
	.byte 0
.text
	leaq .L.str.209(%rip), %rax
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
	movq $57, %rax
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
.L.str.210:
	.byte 59
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
	cmpq $1, %rax
	jne .L.else.157
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
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
.L.str.211:
	.byte 59
	.byte 0
.text
	leaq .L.str.211(%rip), %rax
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
	jne .L.else.158
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_user_defined_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.158
.L.else.158:
.L.end.158:
	jmp .L.end.157
.L.else.157:
.data
.L.str.212:
	.byte 123
	.byte 0
.text
	leaq .L.str.212(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.while.start.159:
.data
.L.str.213:
	.byte 125
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
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.159
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
.L.str.214:
	.byte 59
	.byte 0
.text
	leaq .L.str.214(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.while.start.159
.L.while.end.159:
.data
.L.str.215:
	.byte 125
	.byte 0
.text
	leaq .L.str.215(%rip), %rax
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
	jne .L.else.160
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_user_defined_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.160
.L.else.160:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.161
.data
.L.str.216:
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
	leaq .L.str.216(%rip), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.161
.L.else.161:
.L.end.161:
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
	addq $48, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
.L.end.160:
.L.end.157:
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
.L.while.start.162:
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
	jne .L.while.end.162
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
	jmp .L.while.start.162
.L.while.end.162:
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
.L.str.217:
	.byte 123
	.byte 0
.text
	leaq .L.str.217(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.while.start.163:
.data
.L.str.218:
	.byte 125
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
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.163
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
	jne .L.else.164
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
	jmp .L.end.164
.L.else.164:
.L.end.164:
	jmp .L.while.start.163
.L.while.end.163:
.data
.L.str.219:
	.byte 125
	.byte 0
.text
	leaq .L.str.219(%rip), %rax
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
.L.str.220:
	.byte 118
	.byte 97
	.byte 114
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
	cmpq $1, %rax
	jne .L.else.165
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
.L.str.221:
	.byte 61
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
	cmpq $1, %rax
	jne .L.else.166
.data
.L.str.222:
	.byte 61
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
	jmp .L.end.166
.L.else.166:
.data
.L.str.223:
	.byte 59
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
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
.L.end.166:
	jmp .L.end.165
.L.else.165:
.L.end.165:
.data
.L.str.224:
	.byte 103
	.byte 111
	.byte 116
	.byte 111
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
	cmpq $1, %rax
	jne .L.else.167
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
.L.str.225:
	.byte 59
	.byte 0
.text
	leaq .L.str.225(%rip), %rax
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
	jmp .L.end.167
.L.else.167:
.L.end.167:
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
	jne .L.else.168
.data
.L.str.226:
	.byte 58
	.byte 0
.text
	leaq .L.str.226(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.169
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
.L.str.227:
	.byte 58
	.byte 0
.text
	leaq .L.str.227(%rip), %rax
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
	jmp .L.end.169
.L.else.169:
.L.end.169:
	jmp .L.end.168
.L.else.168:
.L.end.168:
.data
.L.str.228:
	.byte 105
	.byte 102
	.byte 0
.text
	leaq .L.str.228(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.170
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
.L.str.229:
	.byte 101
	.byte 108
	.byte 115
	.byte 101
	.byte 0
.text
	leaq .L.str.229(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.171
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
	jmp .L.end.171
.L.else.171:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
.L.end.171:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.170
.L.else.170:
.L.end.170:
.data
.L.str.230:
	.byte 119
	.byte 104
	.byte 105
	.byte 108
	.byte 101
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
	cmpq $1, %rax
	jne .L.else.172
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
.L.str.231:
	.byte 123
	.byte 0
.text
	leaq .L.str.231(%rip), %rax
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
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.173
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
	jmp .L.end.173
.L.else.173:
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
.L.end.173:
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
	jmp .L.end.172
.L.else.172:
.L.end.172:
.data
.L.str.232:
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 0
.text
	leaq .L.str.232(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.174
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
	jmp .L.end.174
.L.else.174:
.L.end.174:
.data
.L.str.233:
	.byte 123
	.byte 0
.text
	leaq .L.str.233(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.175
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
	jmp .L.end.175
.L.else.175:
.L.end.175:
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
.L.str.234:
	.byte 59
	.byte 0
.text
	leaq .L.str.234(%rip), %rax
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
.L.while.start.176:
.data
.L.str.235:
	.byte 124
	.byte 124
	.byte 0
.text
	leaq .L.str.235(%rip), %rax
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
	cmpq $1, %rax
	jne .L.while.end.176
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
	jmp .L.while.start.176
.L.while.end.176:
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
.L.while.start.177:
.data
.L.str.236:
	.byte 38
	.byte 38
	.byte 0
.text
	leaq .L.str.236(%rip), %rax
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
	cmpq $1, %rax
	jne .L.while.end.177
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
	jmp .L.while.start.177
.L.while.end.177:
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
.L.while.start.178:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.178
.data
.L.str.237:
	.byte 61
	.byte 61
	.byte 0
.text
	leaq .L.str.237(%rip), %rax
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
	jne .L.else.180
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
	jmp .L.end.180
.L.else.180:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.181
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
	jmp .L.end.181
.L.else.181:
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
.L.end.181:
.L.end.180:
	jmp .L.end.179
.L.else.179:
.data
.L.str.238:
	.byte 33
	.byte 61
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
	cmpq $1, %rax
	jne .L.else.182
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
	jne .L.else.183
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
	jmp .L.end.183
.L.else.183:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.184
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
	jmp .L.end.184
.L.else.184:
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
.L.end.184:
.L.end.183:
	jmp .L.end.182
.L.else.182:
	jmp .L.parse_equality.end
.L.end.182:
.L.end.179:
	jmp .L.while.start.178
.L.while.end.178:
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
.L.while.start.185:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.185
.data
.L.str.239:
	.byte 60
	.byte 61
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
	cmpq $1, %rax
	jne .L.else.186
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
	jne .L.else.187
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
	jmp .L.end.187
.L.else.187:
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
.L.end.187:
	jmp .L.end.186
.L.else.186:
.data
.L.str.240:
	.byte 62
	.byte 61
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
	jne .L.else.189
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
	jmp .L.end.189
.L.else.189:
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
.L.end.189:
	jmp .L.end.188
.L.else.188:
.data
.L.str.241:
	.byte 60
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
	cmpq $1, %rax
	jne .L.else.190
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
	jne .L.else.191
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
	jmp .L.end.191
.L.else.191:
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
.L.end.191:
	jmp .L.end.190
.L.else.190:
.data
.L.str.242:
	.byte 62
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
	cmpq $1, %rax
	jne .L.else.192
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
	jne .L.else.193
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
	jmp .L.end.193
.L.else.193:
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
.L.end.193:
	jmp .L.end.192
.L.else.192:
	jmp .L.parse_relational.end
.L.end.192:
.L.end.190:
.L.end.188:
.L.end.186:
	jmp .L.while.start.185
.L.while.end.185:
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
	jne .L.else.194
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.195
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
	jmp .L.end.195
.L.else.195:
.L.end.195:
	jmp .L.end.194
.L.else.194:
.L.end.194:
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
	jne .L.else.196
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.197
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
	jmp .L.end.197
.L.else.197:
.L.end.197:
	jmp .L.end.196
.L.else.196:
.L.end.196:
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
.L.while.start.198:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.while.end.198
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.198
.L.while.end.198:
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
.L.while.start.199:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.while.end.199
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.199
.L.while.end.199:
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
	jne .L.else.200
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.200
.L.else.200:
.L.end.200:
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
	jne .L.else.201
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.201
.L.else.201:
.L.end.201:
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
	jne .L.else.202
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.202
.L.else.202:
.L.end.202:
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
	jne .L.else.203
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.203
.L.else.203:
.L.end.203:
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
	jne .L.else.204
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.204
.L.else.204:
.L.end.204:
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
	jne .L.else.205
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.205
.L.else.205:
.L.end.205:
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
	jne .L.else.206
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.206
.L.else.206:
.L.end.206:
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
.L.while.start.207:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.207
.data
.L.str.243:
	.byte 43
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
	cmpq $1, %rax
	jne .L.else.208
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
	jmp .L.end.208
.L.else.208:
.data
.L.str.244:
	.byte 45
	.byte 0
.text
	leaq .L.str.244(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.209
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
	jmp .L.end.209
.L.else.209:
	jmp .L.parse_add.end
.L.end.209:
.L.end.208:
	jmp .L.while.start.207
.L.while.end.207:
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
.L.while.start.210:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.210
.data
.L.str.245:
	.byte 42
	.byte 0
.text
	leaq .L.str.245(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.211
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
	jmp .L.end.211
.L.else.211:
.data
.L.str.246:
	.byte 47
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
	cmpq $1, %rax
	jne .L.else.212
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
	jmp .L.end.212
.L.else.212:
.data
.L.str.247:
	.byte 37
	.byte 0
.text
	leaq .L.str.247(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.213
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
	jmp .L.end.213
.L.else.213:
	jmp .L.parse_mul.end
.L.end.213:
.L.end.212:
.L.end.211:
	jmp .L.while.start.210
.L.while.end.210:
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
	jne .L.else.214
.data
.L.str.248:
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
	leaq .L.str.248(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
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
.L.while.start.215:
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
	jne .L.while.end.215
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
	cmpq $1, %rax
	jne .L.else.216
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
	jmp .L.end.216
.L.else.216:
.L.end.216:
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
	jmp .L.while.start.215
.L.while.end.215:
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
	jne .L.else.217
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
	jmp .L.end.217
.L.else.217:
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
	jne .L.else.218
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
	jmp .L.end.218
.L.else.218:
.data
.L.str.249:
	.byte 110
	.byte 105
	.byte 108
	.byte 0
.text
	leaq .L.str.249(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.219
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
	jmp .L.end.219
.L.else.219:
.data
.L.str.250:
	.byte 116
	.byte 114
	.byte 117
	.byte 101
	.byte 0
.text
	leaq .L.str.250(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.220
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
	addq $64, %rax
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
	jmp .L.end.220
.L.else.220:
.data
.L.str.251:
	.byte 102
	.byte 97
	.byte 108
	.byte 115
	.byte 101
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
	cmpq $1, %rax
	jne .L.else.221
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
	addq $64, %rax
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
	jmp .L.end.221
.L.else.221:
.data
.L.str.252:
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
	cmpq $1, %rax
	jne .L.else.222
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
.L.str.253:
	.byte 40
	.byte 0
.text
	leaq .L.str.253(%rip), %rax
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
.L.str.254:
	.byte 41
	.byte 0
.text
	leaq .L.str.254(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.222
.L.else.222:
.data
.L.str.255:
	.byte 115
	.byte 105
	.byte 122
	.byte 101
	.byte 111
	.byte 102
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
	cmpq $1, %rax
	jne .L.else.223
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
	jmp .L.end.223
.L.else.223:
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
	jne .L.else.224
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
	jmp .L.end.224
.L.else.224:
.data
.L.str.256:
	.byte 40
	.byte 0
.text
	leaq .L.str.256(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.225
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
.L.str.257:
	.byte 41
	.byte 0
.text
	leaq .L.str.257(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.225
.L.else.225:
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
.L.str.258:
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
	leaq .L.str.258(%rip), %rax
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
.L.str.259:
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
	leaq .L.str.259(%rip), %rax
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
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.225:
.L.end.224:
.L.end.223:
.L.end.222:
.L.end.221:
.L.end.220:
.L.end.219:
.L.end.218:
.L.end.217:
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
	jne .L.else.226
.data
.L.str.260:
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
	leaq .L.str.260(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.226
.L.else.226:
.L.end.226:
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
.L.str.261:
	.byte 40
	.byte 0
.text
	leaq .L.str.261(%rip), %rax
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
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.227
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.227
.L.else.227:
.L.end.227:
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
.L.str.262:
	.byte 40
	.byte 0
.text
	leaq .L.str.262(%rip), %rax
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
.L.str.263:
	.byte 41
	.byte 0
.text
	leaq .L.str.263(%rip), %rax
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
	jne .L.else.228
.data
.L.str.264:
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
	leaq .L.str.264(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.228
.L.else.228:
.L.end.228:
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
	jne .L.else.229
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $55, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	je .L.false.231
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
	je .L.false.231
	movq $1, %rax
	jmp .L.end.231
.L.false.231:
	movq $0, %rax
.L.end.231:
	cmpq $1, %rax
	jne .L.else.230
.data
.L.str.265:
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
	leaq .L.str.265(%rip), %rax
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
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.230
.L.else.230:
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
	jne .L.else.232
.data
.L.str.266:
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
	leaq .L.str.266(%rip), %rax
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
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.232
.L.else.232:
.L.end.232:
.L.end.230:
	jmp .L.end.229
.L.else.229:
.L.end.229:
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
	jne .L.else.233
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
	jmp .L.end.233
.L.else.233:
.L.end.233:
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
.L.str.269:
	.byte 42
	.byte 0
.text
	leaq .L.str.269(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.234
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
	jmp .L.end.234
.L.else.234:
.L.end.234:
.data
.L.str.270:
	.byte 38
	.byte 0
.text
	leaq .L.str.270(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.235
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
	jmp .L.end.235
.L.else.235:
.L.end.235:
.data
.L.str.271:
	.byte 33
	.byte 0
.text
	leaq .L.str.271(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.236
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
	jmp .L.end.236
.L.else.236:
.L.end.236:
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
.L.while.start.237:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.237
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.272:
	.byte 43
	.byte 43
	.byte 0
.text
	leaq .L.str.272(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.238
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
	jmp .L.parse_unary.again
	jmp .L.end.238
.L.else.238:
.L.end.238:
.data
.L.str.273:
	.byte 45
	.byte 45
	.byte 0
.text
	leaq .L.str.273(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.239
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
	jmp .L.parse_unary.again
	jmp .L.end.239
.L.else.239:
.L.end.239:
.data
.L.str.274:
	.byte 91
	.byte 0
.text
	leaq .L.str.274(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.240
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
.L.str.275:
	.byte 93
	.byte 0
.text
	leaq .L.str.275(%rip), %rax
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
	jne .L.else.241
.data
.L.str.276:
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
	leaq .L.str.276(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.241
.L.else.241:
.L.end.241:
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
	jmp .L.parse_unary.again
	jmp .L.end.240
.L.else.240:
.L.end.240:
.data
.L.str.277:
	.byte 46
	.byte 0
.text
	leaq .L.str.277(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.242
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
	jne .L.else.243
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
	jne .L.else.244
.data
.L.str.278:
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
	leaq .L.str.278(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.244
.L.else.244:
.L.end.244:
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
	jne .L.else.245
.data
.L.str.279:
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
	leaq .L.str.279(%rip), %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.245
.L.else.245:
.L.end.245:
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
	jmp .L.end.243
.L.else.243:
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
	jne .L.else.246
.data
.L.str.280:
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
	leaq .L.str.280(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.246
.L.else.246:
.L.end.246:
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
	jne .L.else.247
.data
.L.str.281:
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
	leaq .L.str.281(%rip), %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.247
.L.else.247:
.L.end.247:
.L.end.243:
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
	jmp .L.parse_unary.again
	jmp .L.end.242
.L.else.242:
.L.end.242:
	jmp .L.parse_unary.end
.L.parse_unary.again:
	jmp .L.while.start.237
.L.while.end.237:
.L.parse_unary.end:
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
.L.while.start.248:
.data
.L.str.282:
	.byte 41
	.byte 0
.text
	leaq .L.str.282(%rip), %rax
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
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.248
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
.L.str.283:
	.byte 44
	.byte 0
.text
	leaq .L.str.283(%rip), %rax
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
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.249
	jmp .L.parse_func_call_args.break
	jmp .L.end.249
.L.else.249:
.L.end.249:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.248
.L.while.end.248:
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
.L.str.284:
	.byte 61
	.byte 0
.text
	leaq .L.str.284(%rip), %rax
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
	cmpq $1, %rax
	jne .L.else.250
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
	jmp .L.end.250
.L.else.250:
.L.end.250:
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
.L.while.start.251:
.data
.L.str.285:
	.byte 41
	.byte 0
.text
	leaq .L.str.285(%rip), %rax
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
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.251
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
.L.str.286:
	.byte 44
	.byte 0
.text
	leaq .L.str.286(%rip), %rax
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
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.252
	jmp .L.parse_params_types.break
	jmp .L.end.252
.L.else.252:
.L.end.252:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.251
.L.while.end.251:
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
.L.str.287:
	.byte 105
	.byte 54
	.byte 52
	.byte 0
.text
	leaq .L.str.287(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.253
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.253
.L.else.253:
.data
.L.str.288:
	.byte 105
	.byte 51
	.byte 50
	.byte 0
.text
	leaq .L.str.288(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.254
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.254
.L.else.254:
.data
.L.str.289:
	.byte 105
	.byte 49
	.byte 54
	.byte 0
.text
	leaq .L.str.289(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.255
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.255
.L.else.255:
.data
.L.str.290:
	.byte 105
	.byte 56
	.byte 0
.text
	leaq .L.str.290(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.256
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.256
.L.else.256:
.data
.L.str.291:
	.byte 98
	.byte 111
	.byte 111
	.byte 108
	.byte 0
.text
	leaq .L.str.291(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.257
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.257
.L.else.257:
.data
.L.str.292:
	.byte 42
	.byte 0
.text
	leaq .L.str.292(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.258
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
	jmp .L.end.258
.L.else.258:
.data
.L.str.293:
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 0
.text
	leaq .L.str.293(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.259
.data
.L.str.294:
	.byte 40
	.byte 0
.text
	leaq .L.str.294(%rip), %rax
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
.L.str.295:
	.byte 41
	.byte 0
.text
	leaq .L.str.295(%rip), %rax
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
	jmp .L.end.259
.L.else.259:
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
	jne .L.else.260
.data
.L.str.296:
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
	leaq .L.str.296(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.260
.L.else.260:
.L.end.260:
.L.end.259:
.L.end.258:
.L.end.257:
.L.end.256:
.L.end.255:
.L.end.254:
.L.end.253:
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
	jne .L.else.261
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.261
.L.else.261:
.L.end.261:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.262:
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
	jne .L.while.end.262
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
	jmp .L.while.start.262
.L.while.end.262:
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
	jne .L.else.263
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.263
.L.else.263:
.L.end.263:
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
	jne .L.else.264
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.264
.L.else.264:
.L.end.264:
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
	jne .L.else.265
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.266:
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
	jne .L.while.end.266
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
	jmp .L.while.start.266
.L.while.end.266:
	jmp .L.end.265
.L.else.265:
.L.end.265:
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
	jne .L.else.267
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
	jmp .L.end.267
.L.else.267:
.L.end.267:
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
	jne .L.true.272
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
	jne .L.true.272
	mov $0, %rax
	jmp .L.end.272
.L.true.272:
	mov $1, %rax
.L.end.272:
	cmpq $0, %rax
	jne .L.true.271
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
	jne .L.true.271
	mov $0, %rax
	jmp .L.end.271
.L.true.271:
	mov $1, %rax
.L.end.271:
	cmpq $0, %rax
	jne .L.true.270
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
	jne .L.true.270
	mov $0, %rax
	jmp .L.end.270
.L.true.270:
	mov $1, %rax
.L.end.270:
	cmpq $0, %rax
	jne .L.true.269
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
	jne .L.true.269
	mov $0, %rax
	jmp .L.end.269
.L.true.269:
	mov $1, %rax
.L.end.269:
	cmpq $1, %rax
	jne .L.else.268
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.268
.L.else.268:
.L.end.268:
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
	jne .L.else.273
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
	jmp .L.end.273
.L.else.273:
.L.end.273:
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
	jne .L.true.279
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
	jne .L.true.279
	mov $0, %rax
	jmp .L.end.279
.L.true.279:
	mov $1, %rax
.L.end.279:
	cmpq $0, %rax
	jne .L.true.278
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
	jne .L.true.278
	mov $0, %rax
	jmp .L.end.278
.L.true.278:
	mov $1, %rax
.L.end.278:
	cmpq $0, %rax
	jne .L.true.277
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
	jne .L.true.277
	mov $0, %rax
	jmp .L.end.277
.L.true.277:
	mov $1, %rax
.L.end.277:
	cmpq $0, %rax
	jne .L.true.276
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
	jne .L.true.276
	mov $0, %rax
	jmp .L.end.276
.L.true.276:
	mov $1, %rax
.L.end.276:
	cmpq $0, %rax
	jne .L.true.275
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
	jne .L.true.275
	mov $0, %rax
	jmp .L.end.275
.L.true.275:
	mov $1, %rax
.L.end.275:
	cmpq $1, %rax
	jne .L.else.274
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
	jmp .L.end.274
.L.else.274:
.L.end.274:
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
	jne .L.true.289
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
	jne .L.true.289
	mov $0, %rax
	jmp .L.end.289
.L.true.289:
	mov $1, %rax
.L.end.289:
	cmpq $0, %rax
	jne .L.true.288
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
	jne .L.true.288
	mov $0, %rax
	jmp .L.end.288
.L.true.288:
	mov $1, %rax
.L.end.288:
	cmpq $0, %rax
	jne .L.true.287
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
	jne .L.true.287
	mov $0, %rax
	jmp .L.end.287
.L.true.287:
	mov $1, %rax
.L.end.287:
	cmpq $0, %rax
	jne .L.true.286
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
	jne .L.true.286
	mov $0, %rax
	jmp .L.end.286
.L.true.286:
	mov $1, %rax
.L.end.286:
	cmpq $0, %rax
	jne .L.true.285
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
	jne .L.true.285
	mov $0, %rax
	jmp .L.end.285
.L.true.285:
	mov $1, %rax
.L.end.285:
	cmpq $0, %rax
	jne .L.true.284
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
	jne .L.true.284
	mov $0, %rax
	jmp .L.end.284
.L.true.284:
	mov $1, %rax
.L.end.284:
	cmpq $0, %rax
	jne .L.true.283
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
	jne .L.true.283
	mov $0, %rax
	jmp .L.end.283
.L.true.283:
	mov $1, %rax
.L.end.283:
	cmpq $0, %rax
	jne .L.true.282
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
	jne .L.true.282
	mov $0, %rax
	jmp .L.end.282
.L.true.282:
	mov $1, %rax
.L.end.282:
	cmpq $0, %rax
	jne .L.true.281
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
	jne .L.true.281
	mov $0, %rax
	jmp .L.end.281
.L.true.281:
	mov $1, %rax
.L.end.281:
	cmpq $1, %rax
	jne .L.else.280
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
	jmp .L.end.280
.L.else.280:
.L.end.280:
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
	jne .L.else.290
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
	jmp .L.end.290
.L.else.290:
.L.end.290:
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
	jne .L.else.291
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
	jmp .L.end.291
.L.else.291:
.L.end.291:
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
	jne .L.else.292
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
	jmp .L.end.292
.L.else.292:
.L.end.292:
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
	jne .L.else.293
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
	jmp .L.end.293
.L.else.293:
.L.end.293:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global add_user_defined_type
add_user_defined_type:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $49, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
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
	jne .L.else.294
.data
.L.str.297:
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
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.294
.L.else.294:
.L.end.294:
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
.L.while.start.295:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.295
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
	cmpq $1, %rax
	jne .L.else.296
.data
.L.str.298:
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
	leaq .L.str.298(%rip), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.296
.L.else.296:
.L.end.296:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.295
.L.while.end.295:
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
.L.while.start.297:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.297
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
	cmpq $1, %rax
	jne .L.else.298
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.298
.L.else.298:
.L.end.298:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.297
.L.while.end.297:
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
.L.while.start.299:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.299
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
	cmpq $1, %rax
	jne .L.else.300
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.300
.L.else.300:
.L.end.300:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.299
.L.while.end.299:
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
	jne .L.true.302
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.302
	mov $0, %rax
	jmp .L.end.302
.L.true.302:
	mov $1, %rax
.L.end.302:
	cmpq $1, %rax
	jne .L.else.301
.data
.L.str.299:
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
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.301
.L.else.301:
.L.end.301:
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
	jne .L.else.303
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.303
.L.else.303:
.L.end.303:
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
	jne .L.else.304
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.304
.L.else.304:
.L.end.304:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.305:
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
	jne .L.while.end.305
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
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.306
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.306
.L.else.306:
.L.end.306:
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
	jmp .L.while.start.305
.L.while.end.305:
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
	jne .L.else.307
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.307
.L.else.307:
.L.end.307:
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
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.308
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.308
.L.else.308:
.L.end.308:
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
	cmpq $1, %rax
	jne .L.else.309
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.309
.L.else.309:
.L.end.309:
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
	jne .L.else.310
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.310
.L.else.310:
.L.end.310:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.311
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.311
.L.else.311:
.L.end.311:
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
	jne .L.else.312
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.312
.L.else.312:
.L.end.312:
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
	jne .L.else.313
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
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.313
.L.else.313:
.L.end.313:
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
	jne .L.else.314
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
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.314
.L.else.314:
.L.end.314:
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
	jne .L.else.315
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.315
.L.else.315:
.L.end.315:
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
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.316
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.316
.L.else.316:
.L.end.316:
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
	cmpq $1, %rax
	jne .L.else.317
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
	jmp .L.end.317
.L.else.317:
.data
.L.str.300:
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
	leaq .L.str.300(%rip), %rax
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
.L.end.317:
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
	jne .L.else.318
.data
.L.str.301:
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
	leaq .L.str.301(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.318
.L.else.318:
.L.end.318:
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
	jne .L.else.319
.data
.L.str.302:
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
	leaq .L.str.302(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.319
.L.else.319:
.L.end.319:
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
	movq $80, %rax
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
	jne .L.else.320
.data
.L.str.303:
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
	leaq .L.str.303(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.320
.L.else.320:
.L.end.320:
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
	addq $56, %rax
	push %rax
.data
.L.str.304:
	.byte 105
	.byte 54
	.byte 52
	.byte 0
.text
	leaq .L.str.304(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq new_builtin_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
.data
.L.str.305:
	.byte 105
	.byte 51
	.byte 50
	.byte 0
.text
	leaq .L.str.305(%rip), %rax
	push %rax
	movq $4, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq new_builtin_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
.data
.L.str.306:
	.byte 105
	.byte 49
	.byte 54
	.byte 0
.text
	leaq .L.str.306(%rip), %rax
	push %rax
	movq $2, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq new_builtin_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
.data
.L.str.307:
	.byte 105
	.byte 56
	.byte 0
.text
	leaq .L.str.307(%rip), %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq new_builtin_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
.data
.L.str.308:
	.byte 98
	.byte 111
	.byte 111
	.byte 108
	.byte 0
.text
	leaq .L.str.308(%rip), %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_builtin_type@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
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
	movq $57, %rax
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
	jne .L.else.321
.data
.L.str.309:
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
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.321
.L.else.321:
.L.end.321:
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
	movq $57, %rax
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
	jne .L.else.322
.data
.L.str.310:
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
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.322
.L.else.322:
.L.end.322:
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
	movq $57, %rax
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
	jne .L.else.323
.data
.L.str.311:
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
	leaq .L.str.311(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.323
.L.else.323:
.L.end.323:
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
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.324:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.324
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	cmpq $1, %rax
	jne .L.else.325
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.325
.L.else.325:
.L.end.325:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $49, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.324
.L.while.end.324:
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
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.326:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.326
	movq $5, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.327
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.312:
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
	leaq .L.str.312(%rip), %rax
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
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.328:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.328
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
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
.L.str.313:
	.byte 32
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.313(%rip), %rax
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
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.328
.L.while.end.328:
.data
.L.str.314:
	.byte 125
	.byte 10
	.byte 0
.text
	leaq .L.str.314(%rip), %rax
	push %rax
	pop %rdi
	leaq printf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.327
.L.else.327:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.315:
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
	leaq .L.str.315(%rip), %rax
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
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
.L.end.327:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $49, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.326
.L.while.end.326:
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
.L.while.start.329:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.329
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
	movsbl (%rax), %eax
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
	jne .L.else.330
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
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.331
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.331
.L.else.331:
.L.end.331:
	jmp .L.end.330
.L.else.330:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
.L.end.330:
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
	jmp .L.while.start.329
.L.while.end.329:
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
	jne .L.else.332
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq object_vec_realloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.332
.L.else.332:
.L.end.332:
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
	jne .L.else.333
.data
.L.str.316:
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
	leaq .L.str.316(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.333
.L.else.333:
.L.end.333:
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
	jne .L.else.334
.data
.L.str.317:
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
	leaq .L.str.317(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.334
.L.else.334:
.L.end.334:
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
	jne .L.else.335
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq node_vec_realloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.335
.L.else.335:
.L.end.335:
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
	jne .L.else.336
.data
.L.str.318:
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
	leaq .L.str.318(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.336
.L.else.336:
.L.end.336:
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
	jne .L.else.337
.data
.L.str.319:
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
	leaq .L.str.319(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.337
.L.else.337:
.L.end.337:
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
	jne .L.else.338
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq type_vec_realloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.338
.L.else.338:
.L.end.338:
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
	jne .L.else.339
.data
.L.str.320:
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
	leaq .L.str.320(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.339
.L.else.339:
.L.end.339:
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
	jne .L.else.340
.data
.L.str.321:
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
	leaq .L.str.321(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.340
.L.else.340:
.L.end.340:
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
	jne .L.else.341
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq member_vec_realloc@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.341
.L.else.341:
.L.end.341:
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
	jne .L.else.342
.data
.L.str.322:
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
	leaq .L.str.322(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.342
.L.else.342:
.L.end.342:
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
	jne .L.else.343
.data
.L.str.323:
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
	leaq .L.str.323(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.343
.L.else.343:
.L.end.343:
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
	jne .L.else.344
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.344
.L.else.344:
.L.end.344:
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
.L.str.324:
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
	leaq .L.str.324(%rip), %rax
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
	jne .L.else.345
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
	jmp .L.end.345
.L.else.345:
.L.end.345:
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
.L.while.start.346:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.346
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
	movsbl (%rax), %eax
	push %rax
	leaq isdigit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.347
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
	jmp .L.end.347
.L.else.347:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	leaq isalpha@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.348
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
	jmp .L.end.348
.L.else.348:
	movq $34, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.349
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
	jmp .L.end.349
.L.else.349:
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
	cmpq $1, %rax
	jne .L.else.350
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
	jmp .L.end.350
.L.else.350:
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
	cmpq $1, %rax
	jne .L.else.351
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
	jmp .L.end.351
.L.else.351:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	leaq ispunct@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.else.352
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
	jmp .L.end.352
.L.else.352:
	movq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.353
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.353
.L.else.353:
	movq $10, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.354
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.354
.L.else.354:
	movq $9, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.355
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.355
.L.else.355:
.data
.L.str.325:
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
	leaq .L.str.325(%rip), %rax
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
.L.end.355:
.L.end.354:
.L.end.353:
.L.end.352:
.L.end.351:
.L.end.350:
.L.end.349:
.L.end.348:
.L.end.347:
	jmp .L.while.start.346
.L.while.end.346:
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
.L.str.326:
	.byte 69
	.byte 79
	.byte 70
	.byte 0
.text
	leaq .L.str.326(%rip), %rax
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
.L.while.start.356:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	leaq isalpha@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $0, %rax
	jne .L.true.358
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	leaq isdigit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmp $0, %rax
	jne .L.true.358
	mov $0, %rax
	jmp .L.end.358
.L.true.358:
	mov $1, %rax
.L.end.358:
	cmpq $0, %rax
	jne .L.true.357
	movq $95, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.357
	mov $0, %rax
	jmp .L.end.357
.L.true.357:
	mov $1, %rax
.L.end.357:
	cmpq $1, %rax
	jne .L.while.end.356
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.356
.L.while.end.356:
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
.L.while.start.359:
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
	jne .L.while.end.359
	movq $92, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.360
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
	pop %rdi
	movb %al, (%rdi)
	jmp .L.end.360
.L.else.360:
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
	movsbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
.L.end.360:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.359
.L.while.end.359:
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
	movsbl (%rax), %eax
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
	jne .L.else.361
	movq $10, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.361
.L.else.361:
.L.end.361:
	movq $116, %rax
	push %rax
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.362
	movq $9, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.362
.L.else.362:
.L.end.362:
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
.L.while.start.363:
	movq $34, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.363
	movq $10, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.365
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.365
	mov $0, %rax
	jmp .L.end.365
.L.true.365:
	mov $1, %rax
.L.end.365:
	cmpq $1, %rax
	jne .L.else.364
.data
.L.str.327:
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
	leaq .L.str.327(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.364
.L.else.364:
.L.end.364:
	movq $92, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.366
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
	jmp .L.end.366
.L.else.366:
.L.end.366:
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
	jmp .L.while.start.363
.L.while.end.363:
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
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.368
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
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
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
.L.while.start.369:
	movq $10, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.370
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.370
	movq $1, %rax
	jmp .L.end.370
.L.false.370:
	movq $0, %rax
.L.end.370:
	cmpq $1, %rax
	jne .L.while.end.369
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.369
.L.while.end.369:
	jmp .L.end.367
.L.else.367:
.L.end.367:
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
.L.while.start.371:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	leaq isdigit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	cmpq $1, %rax
	jne .L.while.end.371
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.371
.L.while.end.371:
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
.L.str.328:
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
	leaq .L.str.328(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.372:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.372
	leaq 16(%rbp), %rax
	movsbl (%rax), %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.373
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.373
.L.else.373:
.L.end.373:
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
	jmp .L.while.start.372
.L.while.end.372:
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
	jne .L.else.374
.data
.L.str.329:
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
	leaq .L.str.329(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.374
.L.else.374:
.L.end.374:
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
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.375
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
	jmp .L.end.375
.L.else.375:
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
.L.end.375:
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
.L.str.330:
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
	leaq .L.str.330(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.376:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.376
	movq $15, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setge %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.377
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.377
.L.else.377:
.L.end.377:
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
	movsbl (%rax), %eax
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
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.379
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
	movsbl (%rax), %eax
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
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.379
	movq $1, %rax
	jmp .L.end.379
.L.false.379:
	movq $0, %rax
.L.end.379:
	cmpq $1, %rax
	jne .L.else.378
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.378
.L.else.378:
.L.end.378:
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
	jmp .L.while.start.376
.L.while.end.376:
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
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.380
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
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.381
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
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.382
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.382
.L.else.382:
.L.end.382:
	jmp .L.end.381
.L.else.381:
.L.end.381:
	jmp .L.end.380
.L.else.380:
.L.end.380:
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
.L.str.331:
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
	leaq .L.str.331(%rip), %rax
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
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
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
.L.while.start.383:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.383
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
	jmp .L.while.start.383
.L.while.end.383:
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
	jne .L.else.384
.data
.L.str.332:
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
	leaq .L.str.332(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.384
.L.else.384:
.L.end.384:
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
	jne .L.else.385
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
	jmp .L.end.385
.L.else.385:
.L.end.385:
.L.while.start.386:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.386
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
	jne .L.else.387
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
	jmp .L.end.387
.L.else.387:
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
.L.end.387:
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
	jmp .L.while.start.386
.L.while.end.386:
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
.L.while.start.388:
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
	jne .L.while.end.388
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
	movsbl (%rax), %eax
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
	movsbl (%rax), %eax
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
	movsbl (%rax), %eax
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
	jmp .L.while.start.388
.L.while.end.388:
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
	jne .L.else.389
.data
.L.str.333:
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
	leaq .L.str.333(%rip), %rax
	push %rax
	pop %rdi
	leaq eprintf@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	leaq exit@GOTPCREL(%rip), %rax
	movq (%rax), %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	jmp .L.end.389
.L.else.389:
.L.end.389:
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.390:
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
	jne .L.while.end.390
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
	movsbl (%rax), %eax
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
	jmp .L.while.start.390
.L.while.end.390:
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
	jne .L.else.391
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
	jmp .L.end.391
.L.else.391:
.L.end.391:
.L.while.start.392:
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
	jne .L.while.end.392
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
	jmp .L.while.start.392
.L.while.end.392:
	leaq -9(%rbp), %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.393
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
	jmp .L.end.393
.L.else.393:
.L.end.393:
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
	je .L.false.395
	movq $57, %rax
	push %rax
	leaq 16(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.395
	movq $1, %rax
	jmp .L.end.395
.L.false.395:
	movq $0, %rax
.L.end.395:
	cmpq $1, %rax
	jne .L.else.394
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.394
.L.else.394:
.L.end.394:
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
	je .L.false.398
	movq $90, %rax
	push %rax
	leaq 16(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.398
	movq $1, %rax
	jmp .L.end.398
.L.false.398:
	movq $0, %rax
.L.end.398:
	cmpq $0, %rax
	jne .L.true.397
	leaq 16(%rbp), %rax
	movsbl (%rax), %eax
	push %rax
	movq $97, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.399
	movq $122, %rax
	push %rax
	leaq 16(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.399
	movq $1, %rax
	jmp .L.end.399
.L.false.399:
	movq $0, %rax
.L.end.399:
	cmp $0, %rax
	jne .L.true.397
	mov $0, %rax
	jmp .L.end.397
.L.true.397:
	mov $1, %rax
.L.end.397:
	cmpq $1, %rax
	jne .L.else.396
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.396
.L.else.396:
.L.end.396:
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
.L.while.start.400:
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
	jne .L.while.end.400
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
	movsbl (%rax), %eax
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
	jmp .L.while.start.400
.L.while.end.400:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
