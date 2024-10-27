.text
.global tokenize_ident
tokenize_ident:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -16(%rbp), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_token(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.0:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	leaq isalpha(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	jne .L.true.2
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	leaq isdigit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmp $0, %rax
	jne .L.true.2
	mov $0, %rax
	jmp .L.end.2
.L.true.2:
	mov $1, %rax
.L.end.2:
	cmpq $0, %rax
	jne .L.true.1
	movq $95, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.1
	mov $0, %rax
	jmp .L.end.1
.L.true.1:
	mov $1, %rax
.L.end.1:
	cmpq $1, %rax
	jne .L.while.end.0
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.0
.L.while.end.0:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strndup(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
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
	leaq -36(%rbp), %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_token(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -28(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -20(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq string_end(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq alloc(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.3
.data
.L.str.0:
	.byte 109
	.byte 101
	.byte 109
	.byte 111
	.byte 114
	.byte 121
	.byte 32
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 97
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 102
	.byte 97
	.byte 105
	.byte 108
	.byte 101
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.0(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $1, %rax
	push %rax
	leaq exit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.3
.L.else.3:
.L.end.3:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.4:
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.4
	movq $92, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.5
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
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq read_escaped_char(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzbl %al, %eax
	pop %rdi
	movb %al, (%rdi)
	jmp .L.end.5
.L.else.5:
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
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
.L.end.5:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.4
.L.while.end.4:
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -12(%rbp), %rax
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
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strndup(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq -12(%rbp), %rax
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
.global tokenize_char
tokenize_char:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq -17(%rbp), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_token(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -9(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $92, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.6
	leaq -1(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq read_escaped_char(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzbl %al, %eax
	pop %rdi
	movb %al, (%rdi)
	jmp .L.end.6
.L.else.6:
	leaq -1(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
.L.end.6:
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next_n(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -17(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -9(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	leaq -9(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strndup(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -17(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq -9(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -17(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq -1(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq -17(%rbp), %rax
	movq (%rax), %rax
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
	leaq -16(%rbp), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_token(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.7:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	leaq isdigit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.while.end.7
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.7
.L.while.end.7:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strndup(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq atoi(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq -16(%rbp), %rax
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
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	movq $48, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.9
	movq $55, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.9
	movq $1, %rax
	jmp .L.end.9
.L.false.9:
	movq $0, %rax
.L.end.9:
	cmpq $1, %rax
	jne .L.else.8
	leaq -1(%rbp), %rax
	push %rax
	movq $48, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movb %al, (%rdi)
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	push %rax
	movq $48, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.11
	movq $55, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.11
	movq $1, %rax
	jmp .L.end.11
.L.false.11:
	movq $0, %rax
.L.end.11:
	cmpq $1, %rax
	jne .L.else.10
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -1(%rbp), %rax
	push %rax
	movq $48, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	subl %edi, %eax
	push %rax
	movq $3, %rax
	push %rax
	leaq -1(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	movq %rdi, %rcx
	shl %cl, %eax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movb %al, (%rdi)
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	push %rax
	movq $48, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.13
	movq $55, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.13
	movq $1, %rax
	jmp .L.end.13
.L.false.13:
	movq $0, %rax
.L.end.13:
	cmpq $1, %rax
	jne .L.else.12
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -1(%rbp), %rax
	push %rax
	movq $48, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	subl %edi, %eax
	push %rax
	movq $3, %rax
	push %rax
	leaq -1(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	movq %rdi, %rcx
	shl %cl, %eax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movb %al, (%rdi)
	jmp .L.end.12
.L.else.12:
.L.end.12:
	jmp .L.end.10
.L.else.10:
.L.end.10:
	leaq -1(%rbp), %rax
	movzbl (%rax), %eax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.8
.L.else.8:
.L.end.8:
	movq $120, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.14
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	leaq is_hex_digit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.15
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $3
.data
.L.str.1:
	.byte 27
	.byte 91
	.byte 49
	.byte 109
	.byte 27
	.byte 91
	.byte 51
	.byte 49
	.byte 109
	.byte 45
	.byte 45
	.byte 62
	.byte 32
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
	.byte 105
	.byte 110
	.byte 118
	.byte 97
	.byte 108
	.byte 105
	.byte 100
	.byte 32
	.byte 104
	.byte 101
	.byte 120
	.byte 32
	.byte 101
	.byte 115
	.byte 99
	.byte 97
	.byte 112
	.byte 101
	.byte 32
	.byte 115
	.byte 101
	.byte 113
	.byte 117
	.byte 101
	.byte 110
	.byte 99
	.byte 101
	.byte 27
	.byte 91
	.byte 48
	.byte 109
	.byte 10
	.byte 0
.text
	leaq .L.str.1(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $48, %rsp
	movq $1, %rax
	push %rax
	leaq exit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.15
.L.else.15:
.L.end.15:
.L.while.start.16:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	leaq is_hex_digit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.while.end.16
	leaq -1(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	leaq from_hex(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzbl %al, %eax
	push %rax
	movq $4, %rax
	push %rax
	leaq -1(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	movq %rdi, %rcx
	shl %cl, %eax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movb %al, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.16
.L.while.end.16:
	jmp .L.end.14
.L.else.14:
.L.end.14:
	movq $97, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.17
	movq $7, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.17
.L.else.17:
.L.end.17:
	movq $98, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.18
	movq $8, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.18
.L.else.18:
.L.end.18:
	movq $116, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.19
	movq $9, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.19
.L.else.19:
.L.end.19:
	movq $110, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.20
	movq $10, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.20
.L.else.20:
.L.end.20:
	movq $118, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.21
	movq $11, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.21
.L.else.21:
.L.end.21:
	movq $102, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.22
	movq $12, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.22
.L.else.22:
.L.end.22:
	movq $114, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.23
	movq $13, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.23
.L.else.23:
.L.end.23:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global from_hex
from_hex:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	push %rax
	movq $48, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.25
	movq $57, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.25
	movq $1, %rax
	jmp .L.end.25
.L.false.25:
	movq $0, %rax
.L.end.25:
	cmpq $1, %rax
	jne .L.else.24
	movq $48, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	subl %edi, %eax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.24
.L.else.24:
.L.end.24:
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	push %rax
	movq $97, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.27
	movq $102, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
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
	movq $10, %rax
	push %rax
	movq $97, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	addl %edi, %eax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.26
.L.else.26:
.L.end.26:
	movq $10, %rax
	push %rax
	movq $65, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	addl %edi, %eax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global is_hex_digit
is_hex_digit:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	push %rax
	movq $48, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.30
	movq $57, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.30
	movq $1, %rax
	jmp .L.end.30
.L.false.30:
	movq $0, %rax
.L.end.30:
	cmpq $0, %rax
	jne .L.true.29
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	push %rax
	movq $65, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.31
	movq $70, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.31
	movq $1, %rax
	jmp .L.end.31
.L.false.31:
	movq $0, %rax
.L.end.31:
	cmp $0, %rax
	jne .L.true.29
	mov $0, %rax
	jmp .L.end.29
.L.true.29:
	mov $1, %rax
.L.end.29:
	cmpq $0, %rax
	jne .L.true.28
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	push %rax
	movq $97, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.32
	movq $102, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.32
	movq $1, %rax
	jmp .L.end.32
.L.false.32:
	movq $0, %rax
.L.end.32:
	cmp $0, %rax
	jne .L.true.28
	mov $0, %rax
	jmp .L.end.28
.L.true.28:
	mov $1, %rax
.L.end.28:
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
.L.while.start.33:
	movq $34, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.33
	movq $10, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.35
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.35
	mov $0, %rax
	jmp .L.end.35
.L.true.35:
	mov $1, %rax
.L.end.35:
	cmpq $1, %rax
	jne .L.else.34
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $3
.data
.L.str.2:
	.byte 27
	.byte 91
	.byte 49
	.byte 109
	.byte 27
	.byte 91
	.byte 51
	.byte 49
	.byte 109
	.byte 45
	.byte 45
	.byte 62
	.byte 32
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
	.byte 27
	.byte 91
	.byte 48
	.byte 109
	.byte 10
	.byte 0
.text
	leaq .L.str.2(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $48, %rsp
	movq $1, %rax
	push %rax
	leaq exit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.34
.L.else.34:
.L.end.34:
	movq $92, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.36
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.end.36
.L.else.36:
.L.end.36:
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.33
.L.while.end.33:
	leaq 24(%rbp), %rax
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
.data
.L.str.3:
	.byte 47
	.byte 47
	.byte 0
.text
	leaq .L.str.3(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq starts_with(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.37
.L.while.start.38:
	movq $10, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.39
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.39
	movq $1, %rax
	jmp .L.end.39
.L.false.39:
	movq $0, %rax
.L.end.39:
	cmpq $1, %rax
	jne .L.while.end.38
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.38
.L.while.end.38:
	jmp .L.end.37
.L.else.37:
.L.end.37:
	leave
	ret
.global tokenize_punct
tokenize_punct:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.40:
	movq $34, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.40
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq starts_with(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.41
	leaq -8(%rbp), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_token(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq strlen(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movslq (%rax), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq strndup(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next_n(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.41
.L.else.41:
.L.end.41:
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
	jmp .L.while.start.40
.L.while.end.40:
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
	movq $72, %rax
	push %rax
	leaq alloc(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
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
	jne .L.else.42
.data
.L.str.4:
	.byte 109
	.byte 101
	.byte 109
	.byte 111
	.byte 114
	.byte 121
	.byte 32
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 97
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 102
	.byte 97
	.byte 105
	.byte 108
	.byte 101
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.4(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $1, %rax
	push %rax
	leaq exit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.42
.L.else.42:
.L.end.42:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
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
	addq $16, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
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
.global tokenizer_next_n
tokenizer_next_n:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.43:
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.43
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
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
	jmp .L.while.start.43
.L.while.end.43:
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
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.44
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.44
.L.else.44:
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
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
.L.end.44:
	leave
	ret
.global starts_with
starts_with:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.45:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strlen(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.45
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
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.46
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.46
.L.else.46:
.L.end.46:
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
	jmp .L.while.start.45
.L.while.end.45:
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global frepeat_str
frepeat_str:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.47:
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
	jne .L.while.end.47
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq fputs(%rip), %rax
	movq %rax, %r10
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
	jmp .L.while.start.47
.L.while.end.47:
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
	subq $96, %rsp
	leaq -96(%rbp), %rax
	movq %rax, %rdi
	movq $72, %rcx
	mov $0, %al
	rep stosb
	leaq -24(%rbp), %rax
	push %rax
	leaq -96(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.48:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.48
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq skip_single_line_comment(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	leaq isdigit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.49
	leaq -24(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenize_number(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.49
.L.else.49:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	leaq isalpha(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.50
	leaq -24(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenize_ident(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.50
.L.else.50:
	movq $39, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.51
	leaq -24(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenize_char(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.51
.L.else.51:
	movq $34, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.52
	leaq -24(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenize_string(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.52
.L.else.52:
	movq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.53
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.53
.L.else.53:
	movq $10, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.54
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.54
.L.else.54:
	movq $9, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.55
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.55
.L.else.55:
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenize_punct(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.56
	leaq -24(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.56
.L.else.56:
	leaq -8(%rbp), %rax
	push %rax
	movq $6, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_token(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq strndup(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
.data
.L.str.5:
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
	leaq .L.str.5(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.end.56:
.L.end.55:
.L.end.54:
.L.end.53:
.L.end.52:
.L.end.51:
.L.end.50:
.L.end.49:
	jmp .L.while.start.48
.L.while.end.48:
	leaq -24(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	movq $5, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_token(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
.data
.L.str.6:
	.byte 69
	.byte 79
	.byte 70
	.byte 0
.text
	leaq .L.str.6(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -96(%rbp), %rax
	addq $64, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_tokenizer
new_tokenizer:
	push %rbp
	movq %rsp, %rbp
	subq $288, %rsp
	leaq -280(%rbp), %rax
	push %rax
	movq $304, %rax
	push %rax
	leaq alloc(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -280(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.57
.data
.L.str.7:
	.byte 109
	.byte 101
	.byte 109
	.byte 111
	.byte 114
	.byte 121
	.byte 32
	.byte 97
	.byte 108
	.byte 108
	.byte 111
	.byte 99
	.byte 97
	.byte 116
	.byte 105
	.byte 111
	.byte 110
	.byte 32
	.byte 102
	.byte 97
	.byte 105
	.byte 108
	.byte 101
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.7(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $1, %rax
	push %rax
	leaq exit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.57
.L.else.57:
.L.end.57:
	leaq -280(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -280(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -280(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -280(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -280(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.8:
	.byte 61
	.byte 61
	.byte 0
.text
	leaq .L.str.8(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.9:
	.byte 60
	.byte 61
	.byte 0
.text
	leaq .L.str.9(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $16, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.10:
	.byte 62
	.byte 61
	.byte 0
.text
	leaq .L.str.10(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $24, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.11:
	.byte 33
	.byte 61
	.byte 0
.text
	leaq .L.str.11(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $32, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.12:
	.byte 43
	.byte 43
	.byte 0
.text
	leaq .L.str.12(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $40, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.13:
	.byte 45
	.byte 45
	.byte 0
.text
	leaq .L.str.13(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $48, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.14:
	.byte 124
	.byte 124
	.byte 0
.text
	leaq .L.str.14(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $56, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.15:
	.byte 38
	.byte 38
	.byte 0
.text
	leaq .L.str.15(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $64, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.16:
	.byte 60
	.byte 60
	.byte 0
.text
	leaq .L.str.16(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $72, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.17:
	.byte 62
	.byte 62
	.byte 0
.text
	leaq .L.str.17(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $80, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.18:
	.byte 46
	.byte 46
	.byte 46
	.byte 0
.text
	leaq .L.str.18(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $88, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.19:
	.byte 43
	.byte 0
.text
	leaq .L.str.19(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $96, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.20:
	.byte 45
	.byte 0
.text
	leaq .L.str.20(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $104, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.21:
	.byte 60
	.byte 0
.text
	leaq .L.str.21(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $112, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.22:
	.byte 62
	.byte 0
.text
	leaq .L.str.22(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $120, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.23:
	.byte 59
	.byte 0
.text
	leaq .L.str.23(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $128, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.24:
	.byte 58
	.byte 0
.text
	leaq .L.str.24(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $136, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.25:
	.byte 123
	.byte 0
.text
	leaq .L.str.25(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $144, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.26:
	.byte 125
	.byte 0
.text
	leaq .L.str.26(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $152, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.27:
	.byte 61
	.byte 0
.text
	leaq .L.str.27(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $160, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.28:
	.byte 44
	.byte 0
.text
	leaq .L.str.28(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $168, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.29:
	.byte 40
	.byte 0
.text
	leaq .L.str.29(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $176, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.30:
	.byte 41
	.byte 0
.text
	leaq .L.str.30(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $184, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.31:
	.byte 91
	.byte 0
.text
	leaq .L.str.31(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $192, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.32:
	.byte 93
	.byte 0
.text
	leaq .L.str.32(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $200, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.33:
	.byte 46
	.byte 0
.text
	leaq .L.str.33(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $208, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.34:
	.byte 42
	.byte 0
.text
	leaq .L.str.34(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $216, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.35:
	.byte 35
	.byte 0
.text
	leaq .L.str.35(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $224, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.36:
	.byte 33
	.byte 0
.text
	leaq .L.str.36(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $232, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.37:
	.byte 37
	.byte 0
.text
	leaq .L.str.37(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $240, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.38:
	.byte 38
	.byte 0
.text
	leaq .L.str.38(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $248, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.39:
	.byte 47
	.byte 0
.text
	leaq .L.str.39(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $256, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.40:
	.byte 124
	.byte 0
.text
	leaq .L.str.40(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $264, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.41:
	.byte 38
	.byte 0
.text
	leaq .L.str.41(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $272, %rax
	push %rax
	leaq -272(%rbp), %rax
	push %rax
	leaq -280(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq memcpy(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq -280(%rbp), %rax
	movq (%rax), %rax
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
	push %rax
	leaq print_error_with_code(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $1, %rax
	push %rax
	leaq exit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
.global print_error_with_code
print_error_with_code:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $3
.data
.L.str.42:
	.byte 27
	.byte 91
	.byte 49
	.byte 109
	.byte 27
	.byte 91
	.byte 51
	.byte 49
	.byte 109
	.byte 45
	.byte 45
	.byte 62
	.byte 32
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
	.byte 27
	.byte 91
	.byte 48
	.byte 109
	.byte 10
	.byte 0
.text
	leaq .L.str.42(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $48, %rsp
.data
.L.str.43:
	.byte 32
	.byte 124
	.byte 32
	.byte 10
	.byte 0
.text
	leaq .L.str.43(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.44:
	.byte 32
	.byte 124
	.byte 32
	.byte 0
.text
	leaq .L.str.44(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.while.start.58:
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
	je .L.false.59
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
	je .L.false.59
	movq $1, %rax
	jmp .L.end.59
.L.false.59:
	movq $0, %rax
.L.end.59:
	cmpq $1, %rax
	jne .L.while.end.58
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
	jne .L.else.60
	movq $1, %rax
	push %rax
.data
.L.str.45:
	.byte 32
	.byte 0
.text
	leaq .L.str.45(%rip), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq write(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	jmp .L.end.60
.L.else.60:
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq write(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
.L.end.60:
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
	jmp .L.while.start.58
.L.while.end.58:
.data
.L.str.46:
	.byte 10
	.byte 0
.text
	leaq .L.str.46(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.47:
	.byte 32
	.byte 124
	.byte 32
	.byte 0
.text
	leaq .L.str.47(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.48:
	.byte 27
	.byte 91
	.byte 49
	.byte 109
	.byte 27
	.byte 91
	.byte 51
	.byte 49
	.byte 109
	.byte 0
.text
	leaq .L.str.48(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.49:
	.byte 32
	.byte 0
.text
	leaq .L.str.49(%rip), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq frepeat_str(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movslq (%rax), %rax
	push %rax
.data
.L.str.50:
	.byte 94
	.byte 0
.text
	leaq .L.str.50(%rip), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq frepeat_str(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.51:
	.byte 32
	.byte 37
	.byte 115
	.byte 27
	.byte 91
	.byte 48
	.byte 109
	.byte 10
	.byte 0
.text
	leaq .L.str.51(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.data
.L.str.52:
	.byte 32
	.byte 124
	.byte 32
	.byte 10
	.byte 0
.text
	leaq .L.str.52(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global copy_token
copy_token:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leave
	ret
