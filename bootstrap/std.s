.text
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
	jne .L.else.0
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
	jmp .L.end.0
.L.else.0:
.L.end.0:
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq memcpy(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
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
	leave
	ret
	leave
	ret
.global sprintf
sprintf:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vsprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leave
	ret
	leave
	ret
.global eprintf
eprintf:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq vfprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leave
	ret
	leave
	ret
.global printf
printf:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq vfprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leave
	ret
	leave
	ret
.global fprintf
fprintf:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq vfprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leave
	ret
	leave
	ret
.global vsprintf
vsprintf:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq -24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.1:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.1
	movq $37, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.2
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
	movq $115, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.3
	leaq -12(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strlen(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq memcpy(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 16(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strlen(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.3
.L.else.3:
	movq $100, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.4
	leaq 16(%rbp), %rax
	push %rax
	movq $10, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq itoa(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.4
.L.else.4:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $37, %rax
	pop %rdi
	movb %al, (%rdi)
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
.L.end.4:
.L.end.3:
	jmp .L.end.2
.L.else.2:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
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
.L.end.2:
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
	jmp .L.while.start.1
.L.while.end.1:
	leaq -4(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
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
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	leave
	ret
	leave
	ret
.global vfprintf
vfprintf:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq -20(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.5:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.5
	movq $37, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.6
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
	movq $115, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.7
	leaq -16(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
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
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
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
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.7
.L.else.7:
	movq $112, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.8
	leaq -12(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
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
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.9
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.1:
	.byte 40
	.byte 110
	.byte 105
	.byte 108
	.byte 41
	.byte 0
.text
	leaq .L.str.1(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq fputs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.9
.L.else.9:
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.2:
	.byte 48
	.byte 120
	.byte 0
.text
	leaq .L.str.2(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq fputs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $16, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq fputunum(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
.L.end.9:
	jmp .L.end.8
.L.else.8:
	movq $98, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.10
	leaq -16(%rbp), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $2, %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
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
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq fputunum(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.10
.L.else.10:
	movq $99, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.11
	leaq -16(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
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
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq fputchar(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.11
.L.else.11:
	movq $120, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.12
	leaq -16(%rbp), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $16, %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
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
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq fputunum(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.12
.L.else.12:
	movq $88, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.13
	leaq -16(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $16, %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
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
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq fputunum(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.13
.L.else.13:
	movq $117, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.14
	leaq -16(%rbp), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $10, %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
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
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq fputunum(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.14
.L.else.14:
	movq $100, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.15
	leaq -4(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
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
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.16
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.3:
	.byte 45
	.byte 0
.text
	leaq .L.str.3(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq fputs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq -4(%rbp), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.16
.L.else.16:
.L.end.16:
	leaq -16(%rbp), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $10, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq fputunum(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.15
.L.else.15:
	leaq -16(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq write(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
.L.end.15:
.L.end.14:
.L.end.13:
.L.end.12:
.L.end.11:
.L.end.10:
.L.end.8:
.L.end.7:
	jmp .L.end.6
.L.else.6:
	leaq -16(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq write(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
.L.end.6:
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
	jmp .L.while.start.5
.L.while.end.5:
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	leave
	ret
	leave
	ret
.global fputchar
fputchar:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq write(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movl %eax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.17
.data
.L.str.4:
	.byte 119
	.byte 114
	.byte 105
	.byte 116
	.byte 101
	.byte 32
	.byte 115
	.byte 121
	.byte 115
	.byte 99
	.byte 97
	.byte 108
	.byte 108
	.byte 32
	.byte 102
	.byte 97
	.byte 105
	.byte 108
	.byte 101
	.byte 100
	.byte 32
	.byte 97
	.byte 116
	.byte 32
	.byte 102
	.byte 112
	.byte 117
	.byte 116
	.byte 99
	.byte 104
	.byte 97
	.byte 114
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
	jmp .L.end.17
.L.else.17:
.L.end.17:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	leave
	ret
	leave
	ret
.global fputunum
fputunum:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setae %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.18
	leaq -4(%rbp), %rax
	push %rax
	leaq 40(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	mov $0, %rdx
	divq %rdi
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq fputunum(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.18
.L.else.18:
.L.end.18:
	leaq 40(%rbp), %rax
	movslq (%rax), %rax
	cmpq $1, %rax
	jne .L.else.19
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	mov $0, %rdx
	divq %rdi
	movq %rdx, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
.data
.L.str.5:
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
.text
	leaq .L.str.5(%rip), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq write(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.19
.L.else.19:
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	mov $0, %rdx
	divq %rdi
	movq %rdx, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
.data
.L.str.6:
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
	leaq .L.str.6(%rip), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq write(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
.L.end.19:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	leave
	ret
	leave
	ret
.global itoa
itoa:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -12(%rbp), %rax
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
	jne .L.else.20
	movq $1, %rax
	push %rax
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
	leaq -12(%rbp), %rax
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
	leave
	ret
	jmp .L.end.20
.L.else.20:
.L.end.20:
	leaq -8(%rbp), %rax
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
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.21
	leaq -8(%rbp), %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq 16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.21
.L.else.21:
.L.end.21:
.L.while.start.22:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.22
	leaq -4(%rbp), %rax
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
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setg %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.23
	movq $1, %rax
	push %rax
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
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movb %al, (%rdi)
	jmp .L.end.23
.L.else.23:
	movq $1, %rax
	push %rax
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
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movb %al, (%rdi)
.L.end.23:
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
	jmp .L.while.start.22
.L.while.end.22:
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	cmpq $1, %rax
	jne .L.else.24
	movq $1, %rax
	push %rax
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
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	movq $45, %rax
	pop %rdi
	movb %al, (%rdi)
	jmp .L.end.24
.L.else.24:
.L.end.24:
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq reverse_str(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
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
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	leave
	ret
	leave
	ret
.global reverse_str
reverse_str:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -9(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -5(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.25:
	leaq -5(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -9(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.25
	leaq -1(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -9(%rbp), %rax
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
	leaq -9(%rbp), %rax
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
	leaq -5(%rbp), %rax
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
	leaq -5(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq -1(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
	movq $1, %rax
	push %rax
	leaq -5(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -5(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	addl %edi, %eax
	movq $1, %rax
	push %rax
	leaq -9(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -9(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.25
.L.while.end.25:
	leave
	ret
.global atoi
atoi:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	movq $45, %rax
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
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.26
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
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
	jmp .L.end.26
.L.else.26:
.L.end.26:
.L.while.start.27:
	movq $0, %rax
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
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.27
	leaq -8(%rbp), %rax
	push %rax
	movq $48, %rax
	push %rax
	movq $1, %rax
	push %rax
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
	jmp .L.while.start.27
.L.while.end.27:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	cmpq $1, %rax
	jne .L.else.28
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.28
.L.else.28:
.L.end.28:
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	leave
	ret
	leave
	ret
.global isdigit
isdigit:
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
	cmpq $1, %rax
	jne .L.else.29
	movq $1, %rax
	leave
	ret
	jmp .L.end.29
.L.else.29:
.L.end.29:
	movq $0, %rax
	leave
	ret
	leave
	ret
.global isalpha
isalpha:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	push %rax
	movq $65, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.33
	movq $90, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.33
	movq $1, %rax
	jmp .L.end.33
.L.false.33:
	movq $0, %rax
.L.end.33:
	cmpq $0, %rax
	jne .L.true.32
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	push %rax
	movq $97, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.34
	movq $122, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.34
	movq $1, %rax
	jmp .L.end.34
.L.false.34:
	movq $0, %rax
.L.end.34:
	cmp $0, %rax
	jne .L.true.32
	mov $0, %rax
	jmp .L.end.32
.L.true.32:
	mov $1, %rax
.L.end.32:
	cmpq $1, %rax
	jne .L.else.31
	movq $1, %rax
	leave
	ret
	jmp .L.end.31
.L.else.31:
.L.end.31:
	movq $0, %rax
	leave
	ret
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
.L.while.start.35:
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
	jne .L.while.end.35
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
	jmp .L.while.start.35
.L.while.end.35:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
	leave
	ret
.global strrchr
strrchr:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.36:
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
	jne .L.while.end.36
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.37
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.37
.L.else.37:
.L.end.37:
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
	jmp .L.while.start.36
.L.while.end.36:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
	leave
	ret
.global byte_to_upper
byte_to_upper:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	push %rax
	movq $65, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.39
	movq $90, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.39
	movq $1, %rax
	jmp .L.end.39
.L.false.39:
	movq $0, %rax
.L.end.39:
	cmpq $1, %rax
	jne .L.else.38
	movq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	subl %edi, %eax
	leave
	ret
	jmp .L.end.38
.L.else.38:
.L.end.38:
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	leave
	ret
	leave
	ret
.global byte_to_lower
byte_to_lower:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	push %rax
	movq $65, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.41
	movq $90, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.41
	movq $1, %rax
	jmp .L.end.41
.L.false.41:
	movq $0, %rax
.L.end.41:
	cmpq $1, %rax
	jne .L.else.40
	movq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	addl %edi, %eax
	leave
	ret
	jmp .L.end.40
.L.else.40:
.L.end.40:
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	leave
	ret
	leave
	ret
.global memmove
memmove:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq -28(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -20(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $1, %rax
	pop %rdi
	imull %edi, %eax
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
	jne .L.else.42
	movq $0, %rax
	leave
	ret
	jmp .L.end.42
.L.else.42:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.43:
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setb %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.43
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -20(%rbp), %rax
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
	jmp .L.while.start.43
.L.while.end.43:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.44:
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setb %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.44
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
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
	jmp .L.while.start.44
.L.while.end.44:
.L.end.42:
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
	leave
	ret
	leave
	ret
.global fputs
fputs:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq -20(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strlen(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.45:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.45
	leaq -4(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq write(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movl %eax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.46
.data
.L.str.7:
	.byte 119
	.byte 114
	.byte 105
	.byte 116
	.byte 101
	.byte 32
	.byte 115
	.byte 121
	.byte 115
	.byte 99
	.byte 97
	.byte 108
	.byte 108
	.byte 32
	.byte 102
	.byte 97
	.byte 105
	.byte 108
	.byte 101
	.byte 100
	.byte 32
	.byte 97
	.byte 116
	.byte 32
	.byte 102
	.byte 112
	.byte 117
	.byte 116
	.byte 115
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
	jmp .L.end.46
.L.else.46:
.L.end.46:
	leaq -20(%rbp), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.45
.L.while.end.45:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	leave
	ret
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
.L.while.start.47:
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
	jne .L.while.end.47
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
	jmp .L.while.start.47
.L.while.end.47:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	leave
	ret
	leave
	ret
.global vec_append
vec_append:
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
	jne .L.else.48
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_realloc(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.48
.L.else.48:
.L.end.48:
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
	leave
	ret
.global vec_get
vec_get:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
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
	leave
	ret
	leave
	ret
.global vec_realloc
vec_realloc:
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
	jne .L.else.49
.data
.L.str.8:
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
	leaq .L.str.8(%rip), %rax
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
	jmp .L.end.49
.L.else.49:
.L.end.49:
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
	leaq memcpy(%rip), %rax
	movq %rax, %r10
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
	leave
	ret
.global new_vec
new_vec:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $16, %rax
	push %rax
	leaq alloc(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
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
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.50
.data
.L.str.9:
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
	leaq .L.str.9(%rip), %rax
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
	jmp .L.end.50
.L.else.50:
.L.end.50:
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
	leave
	ret
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
.L.while.start.51:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.51
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
	jne .L.else.52
	movq $0, %rax
	leave
	ret
	jmp .L.end.52
.L.else.52:
.L.end.52:
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
	jne .L.else.53
	movq $1, %rax
	leave
	ret
	jmp .L.end.53
.L.else.53:
.L.end.53:
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
	jmp .L.while.start.51
.L.while.end.51:
	movq $0, %rax
	leave
	ret
	leave
	ret
