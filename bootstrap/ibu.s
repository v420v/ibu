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
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.1
.data
.L.str.1:
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
	leaq .L.str.1(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	push %rax
	leaq exit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.1
.L.else.1:
.L.end.1:
	leaq -60(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	imulq %rdi, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.data
.L.str.2:
	.byte 45
	.byte 0
.text
	leaq .L.str.2(%rip), %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.2
	leaq -52(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.2
.L.else.2:
	leaq -52(%rbp), %rax
	push %rax
	movq $420, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq open(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movl %eax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -52(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.3
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.3:
	.byte 27
	.byte 91
	.byte 49
	.byte 109
	.byte 27
	.byte 91
	.byte 51
	.byte 49
	.byte 109
	.byte 101
	.byte 114
	.byte 114
	.byte 111
	.byte 114
	.byte 27
	.byte 91
	.byte 48
	.byte 109
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
	leaq .L.str.3(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
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
.L.end.2:
	leaq -48(%rbp), %rax
	push %rax
	movq $150000, %rax
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
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.4
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
	jmp .L.end.4
.L.else.4:
.L.end.4:
	movq $150000, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -52(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq read(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq -52(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq close(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -40(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_tokenizer(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenize(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	push %rax
	leaq new_preprocessor(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq preprocess(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -16(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_parser(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq new_gen(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	leave
	ret
	leave
	ret
