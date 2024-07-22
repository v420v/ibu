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
	jmp .L.end.0
.L.else.0:
.L.end.0:
	leaq -60(%rbp), %rax
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
	leaq -52(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.data
.L.str.1:
	.byte 45
	.byte 0
.text
	leaq .L.str.1(%rip), %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.1
	leaq -52(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.1
.L.else.1:
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
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.2
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
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
	leaq .L.str.2(%rip), %rax
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
	jmp .L.end.2
.L.else.2:
.L.end.2:
.L.end.1:
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
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.3
.data
.L.str.3:
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
	leaq .L.str.3(%rip), %rax
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
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global gen
gen:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.data
.L.str.4:
	.byte 46
	.byte 116
	.byte 101
	.byte 120
	.byte 116
	.byte 10
	.byte 0
.text
	leaq .L.str.4(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq has_main(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.4
.data
.L.str.5:
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
	leaq .L.str.5(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.6:
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
	leaq .L.str.6(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.7:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.7(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.8:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 115
	.byte 112
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.8(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.9:
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
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.9(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.10:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.10(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.11:
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
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.11(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.12:
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
	leaq .L.str.12(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.13:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.13(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.14:
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.14(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.15:
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
	leaq .L.str.15(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.4
.L.else.4:
.L.end.4:
.L.while.start.5:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.5
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
	cmpq $0, %rax
	je .L.false.7
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L.false.7
	movq $1, %rax
	jmp .L.end.7
.L.false.7:
	movq $0, %rax
.L.end.7:
	cmpq $1, %rax
	jne .L.else.6
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
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
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq assign_func_params_offset(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq assign_local_var_offset(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.16:
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
	leaq .L.str.16(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.17:
	.byte 37
	.byte 115
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.17(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.data
.L.str.18:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.18(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.19:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 115
	.byte 112
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.19(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.20:
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
	.byte 37
	.byte 114
	.byte 115
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.20(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_stmt(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.21:
	.byte 9
	.byte 108
	.byte 101
	.byte 97
	.byte 118
	.byte 101
	.byte 10
	.byte 0
.text
	leaq .L.str.21(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.22:
	.byte 9
	.byte 114
	.byte 101
	.byte 116
	.byte 10
	.byte 0
.text
	leaq .L.str.22(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.6
.L.else.6:
.L.end.6:
	leaq 24(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.5
.L.while.end.5:
	leave
	ret
.global has_main
has_main:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.L.while.start.8:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.8
.data
.L.str.23:
	.byte 109
	.byte 97
	.byte 105
	.byte 110
	.byte 0
.text
	leaq .L.str.23(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.9
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.9
.L.else.9:
.L.end.9:
	leaq 16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.8
.L.while.end.8:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global assign_local_var_offset
assign_local_var_offset:
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
	jne .L.else.10
	movq $16, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	leaq align_to(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.10
.L.else.10:
.L.end.10:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $61, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.11
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
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
	addq $24, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.11
.L.else.11:
.L.end.11:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.12
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq assign_local_var_offset(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.12
.L.else.12:
.L.end.12:
	movq $16, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	leaq align_to(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global assign_func_params_offset
assign_func_params_offset:
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
	jne .L.else.13
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.13
.L.else.13:
.L.end.13:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.14
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq assign_func_params_offset(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.14
.L.else.14:
.L.end.14:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $61, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.15
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
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
	jmp .L.end.15
.L.else.15:
.L.end.15:
	movq $0, %rax
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
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.16:
	leaq 24(%rbp), %rax
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
	jne .L.while.end.16
	leaq -8(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_stmt(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
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
	jmp .L.while.start.16
.L.while.end.16:
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
	movq $29, %rax
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
	jne .L.else.17
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.17
.L.else.17:
.L.end.17:
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
	jne .L.else.18
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_node_block(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.18
.L.else.18:
.L.end.18:
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
	jne .L.else.19
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.19
.L.else.19:
.L.end.19:
	movq $32, %rax
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
	jne .L.else.20
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.24:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.24(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.25:
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
	.byte 37
	.byte 114
	.byte 99
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.25(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.data
.L.str.26:
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
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.26(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.27:
	.byte 9
	.byte 114
	.byte 101
	.byte 112
	.byte 32
	.byte 115
	.byte 116
	.byte 111
	.byte 115
	.byte 98
	.byte 10
	.byte 0
.text
	leaq .L.str.27(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.20
.L.else.20:
.L.end.20:
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
	jne .L.else.21
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.28:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 115
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.28(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.29:
	.byte 9
	.byte 112
	.byte 111
	.byte 112
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.29(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.30:
	.byte 9
	.byte 114
	.byte 101
	.byte 116
	.byte 113
	.byte 10
	.byte 0
.text
	leaq .L.str.30(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.21
.L.else.21:
.L.end.21:
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
	jne .L.else.22
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
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.31:
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.31(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.32:
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
	leaq .L.str.32(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_stmt(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.33:
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
	leaq .L.str.33(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.34:
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
	leaq .L.str.34(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.23
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_stmt(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.23
.L.else.23:
.L.end.23:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.35:
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
	leaq .L.str.35(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.22
.L.else.22:
.L.end.22:
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
	jne .L.else.24
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $2
.data
.L.str.36:
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
	leaq .L.str.36(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $40, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.24
.L.else.24:
.L.end.24:
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
	jne .L.else.25
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $2
.data
.L.str.37:
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
	leaq .L.str.37(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $40, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.25
.L.else.25:
.L.end.25:
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
	jne .L.else.26
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
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.38:
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
	leaq .L.str.38(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.39:
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.39(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.40:
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
	leaq .L.str.40(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_stmt(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.41:
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
	leaq .L.str.41(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.42:
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
	leaq .L.str.42(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.26
.L.else.26:
.L.end.26:
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
	jne .L.else.27
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_addr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.43:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.43(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.44:
	.byte 9
	.byte 112
	.byte 111
	.byte 112
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.44(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_store(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.27
.L.else.27:
.L.end.27:
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
	leave
	ret
.global func_call_args_to_stack
func_call_args_to_stack:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
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
	jne .L.else.28
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.28
.L.else.28:
.L.end.28:
	leaq -20(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -16(%rbp), %rax
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
.L.while.start.29:
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.29
	leaq -12(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.46:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.46(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -20(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	je .L.false.31
	movq $1, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	subl %edi, %eax
	push %rax
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.31
	movq $1, %rax
	jmp .L.end.31
.L.false.31:
	movq $0, %rax
.L.end.31:
	cmpq $1, %rax
	jne .L.else.30
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	movq $2, %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setg %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.32
	leaq -4(%rbp), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.32
.L.else.32:
.L.end.32:
.data
.L.str.47:
	.byte 9
	.byte 108
	.byte 101
	.byte 97
	.byte 113
	.byte 32
	.byte 40
	.byte 37
	.byte 37
	.byte 114
	.byte 115
	.byte 112
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.47(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.48:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.48(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.49:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 36
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.49(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq -20(%rbp), %rax
	push %rax
	movq $16, %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.30
.L.else.30:
.L.end.30:
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	addl %edi, %eax
	jmp .L.while.start.29
.L.while.end.29:
	leaq -20(%rbp), %rax
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
	cmpq $0, %rax
	jne .L.true.35
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
	cmp $0, %rax
	jne .L.true.35
	mov $0, %rax
	jmp .L.end.35
.L.true.35:
	mov $1, %rax
.L.end.35:
	cmpq $0, %rax
	jne .L.true.34
	movq $13, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.34
	mov $0, %rax
	jmp .L.end.34
.L.true.34:
	mov $1, %rax
.L.end.34:
	cmpq $1, %rax
	jne .L.else.33
.data
.L.str.50:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 98
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.50(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.33
.L.else.33:
.data
.L.str.51:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 98
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.51(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.33:
	leave
	ret
.global gen_load
gen_load:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
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
	jne .L.true.38
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
	jne .L.true.38
	mov $0, %rax
	jmp .L.end.38
.L.true.38:
	mov $1, %rax
.L.end.38:
	cmpq $0, %rax
	jne .L.true.37
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
	jne .L.true.37
	mov $0, %rax
	jmp .L.end.37
.L.true.37:
	mov $1, %rax
.L.end.37:
	cmpq $1, %rax
	jne .L.else.36
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.36
.L.else.36:
.L.end.36:
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
	jne .L.else.39
.data
.L.str.52:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 40
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.52(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.39
.L.else.39:
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
	jne .L.else.40
.data
.L.str.53:
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.53(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.40
.L.else.40:
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
	jne .L.else.41
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.42
.data
.L.str.54:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 119
	.byte 108
	.byte 32
	.byte 40
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.54(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.42
.L.else.42:
.data
.L.str.55:
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.55(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.42:
	jmp .L.end.41
.L.else.41:
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
	jne .L.else.43
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.44
.data
.L.str.56:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 98
	.byte 108
	.byte 32
	.byte 40
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.56(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.44
.L.else.44:
.data
.L.str.57:
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.57(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.44:
	jmp .L.end.43
.L.else.43:
.data
.L.str.58:
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
	leaq .L.str.58(%rip), %rax
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
.L.end.43:
.L.end.41:
.L.end.40:
.L.end.39:
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
	jne .L.else.45
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.46:
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
	jne .L.while.end.46
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.59:
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 56
	.byte 98
	.byte 10
	.byte 0
.text
	leaq .L.str.59(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.60:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 98
	.byte 32
	.byte 37
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
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.60(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
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
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.45
.L.else.45:
.L.end.45:
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
	jne .L.else.47
.data
.L.str.61:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 98
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 44
	.byte 32
	.byte 40
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.61(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.47
.L.else.47:
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
	jne .L.else.48
.data
.L.str.62:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 119
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 120
	.byte 44
	.byte 32
	.byte 40
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.62(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.48
.L.else.48:
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
	jne .L.else.49
.data
.L.str.63:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 44
	.byte 32
	.byte 40
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.63(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.49
.L.else.49:
.data
.L.str.64:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 44
	.byte 32
	.byte 40
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 41
	.byte 10
	.byte 0
.text
	leaq .L.str.64(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.49:
.L.end.48:
.L.end.47:
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
	jne .L.else.50
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_addr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.65:
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.65(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	jmp .L.end.50
.L.else.50:
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
	jne .L.else.51
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $62, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.52
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.66:
	.byte 9
	.byte 108
	.byte 101
	.byte 97
	.byte 113
	.byte 32
	.byte 37
	.byte 115
	.byte 40
	.byte 37
	.byte 37
	.byte 114
	.byte 105
	.byte 112
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.66(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	jmp .L.end.52
.L.else.52:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $24, %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.67:
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
	.byte 37
	.byte 114
	.byte 98
	.byte 112
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.67(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.L.end.52:
	jmp .L.end.51
.L.else.51:
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
	jne .L.else.53
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.53
.L.else.53:
.L.end.53:
.L.end.51:
.L.end.50:
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
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.68:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.68(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.69:
	.byte 9
	.byte 112
	.byte 111
	.byte 112
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.69(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
.global gen_expr
gen_expr:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -16(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	movq $29, %rax
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
	jne .L.else.54
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.54
.L.else.54:
.L.end.54:
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
	jne .L.else.55
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_addr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_load(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.55
.L.else.55:
.L.end.55:
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
	jne .L.else.56
	leaq -16(%rbp), %rax
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
.L.str.70:
	.byte 46
	.byte 100
	.byte 97
	.byte 116
	.byte 97
	.byte 10
	.byte 0
.text
	leaq .L.str.70(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.71:
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
	leaq .L.str.71(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq -12(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.57:
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
	jne .L.while.end.57
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.72:
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
	leaq .L.str.72(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
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
	jmp .L.while.start.57
.L.while.end.57:
.data
.L.str.73:
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
	leaq .L.str.73(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.74:
	.byte 46
	.byte 116
	.byte 101
	.byte 120
	.byte 116
	.byte 10
	.byte 0
.text
	leaq .L.str.74(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.75:
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
	.byte 37
	.byte 114
	.byte 105
	.byte 112
	.byte 41
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.75(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.56
.L.else.56:
.L.end.56:
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
	jne .L.else.58
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.76:
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.76(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.58
.L.else.58:
.L.end.58:
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
	jne .L.else.59
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_addr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.77:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.77(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.78:
	.byte 9
	.byte 112
	.byte 111
	.byte 112
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.78(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_store(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.59
.L.else.59:
.L.end.59:
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
	jne .L.else.60
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_addr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_load(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.60
.L.else.60:
.L.end.60:
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
	jne .L.else.61
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -4(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq func_call_args_to_stack(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.79:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 49
	.byte 48
	.byte 10
	.byte 0
.text
	leaq .L.str.79(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.80:
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.80(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.81:
	.byte 9
	.byte 99
	.byte 97
	.byte 108
	.byte 108
	.byte 113
	.byte 32
	.byte 42
	.byte 37
	.byte 37
	.byte 114
	.byte 49
	.byte 48
	.byte 10
	.byte 0
.text
	leaq .L.str.81(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.82:
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
	.byte 37
	.byte 114
	.byte 115
	.byte 112
	.byte 10
	.byte 0
.text
	leaq .L.str.82(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq $4, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.62
.data
.L.str.83:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 120
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.83(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.62
.L.else.62:
	movq $3, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.63
.data
.L.str.84:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 115
	.byte 98
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.84(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.63
.L.else.63:
	movq $11, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.64
.data
.L.str.85:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 98
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.85(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.64
.L.else.64:
	movq $2, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.65
.data
.L.str.86:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 115
	.byte 119
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 120
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.86(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.65
.L.else.65:
	movq $10, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.66
.data
.L.str.87:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 119
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 120
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.87(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.66
.L.else.66:
.L.end.66:
.L.end.65:
.L.end.64:
.L.end.63:
.L.end.62:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.61
.L.else.61:
.L.end.61:
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
	jne .L.else.67
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.67
.L.else.67:
.L.end.67:
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
	jne .L.else.68
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_addr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.68
.L.else.68:
.L.end.68:
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
	jne .L.else.69
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_load(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.69
.L.else.69:
.L.end.69:
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
	jne .L.else.70
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.88:
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.88(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.89:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 101
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.89(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.90:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 98
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.90(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.70
.L.else.70:
.L.end.70:
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
	jne .L.else.71
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.73
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.73
	mov $0, %rax
	jmp .L.end.73
.L.true.73:
	mov $1, %rax
.L.end.73:
	cmpq $1, %rax
	jne .L.else.72
.data
.L.str.91:
	.byte 9
	.byte 97
	.byte 100
	.byte 100
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.91(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.72
.L.else.72:
.data
.L.str.92:
	.byte 9
	.byte 97
	.byte 100
	.byte 100
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.92(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.72:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.71
.L.else.71:
.L.end.71:
	movq $30, %rax
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
	jne .L.else.74
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
.data
.L.str.93:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 99
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.93(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.77
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.77
	mov $0, %rax
	jmp .L.end.77
.L.true.77:
	mov $1, %rax
.L.end.77:
	cmpq $0, %rax
	jne .L.true.76
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.76
	mov $0, %rax
	jmp .L.end.76
.L.true.76:
	mov $1, %rax
.L.end.76:
	cmpq $1, %rax
	jne .L.else.75
.data
.L.str.94:
	.byte 9
	.byte 115
	.byte 104
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 99
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.94(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.75
.L.else.75:
.data
.L.str.95:
	.byte 9
	.byte 115
	.byte 104
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 99
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.95(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.75:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.74
.L.else.74:
.L.end.74:
	movq $31, %rax
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
	jne .L.else.78
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
.data
.L.str.96:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 99
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.96(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.81
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.81
	mov $0, %rax
	jmp .L.end.81
.L.true.81:
	mov $1, %rax
.L.end.81:
	cmpq $0, %rax
	jne .L.true.80
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.80
	mov $0, %rax
	jmp .L.end.80
.L.true.80:
	mov $1, %rax
.L.end.80:
	cmpq $1, %rax
	jne .L.else.79
.data
.L.str.97:
	.byte 9
	.byte 115
	.byte 104
	.byte 114
	.byte 32
	.byte 37
	.byte 37
	.byte 99
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.97(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.79
.L.else.79:
.data
.L.str.98:
	.byte 9
	.byte 115
	.byte 104
	.byte 114
	.byte 32
	.byte 37
	.byte 37
	.byte 99
	.byte 108
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.98(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.79:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.78
.L.else.78:
.L.end.78:
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
	jne .L.else.82
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.84
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.84
	mov $0, %rax
	jmp .L.end.84
.L.true.84:
	mov $1, %rax
.L.end.84:
	cmpq $1, %rax
	jne .L.else.83
.data
.L.str.99:
	.byte 9
	.byte 115
	.byte 117
	.byte 98
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.99(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.83
.L.else.83:
.data
.L.str.100:
	.byte 9
	.byte 115
	.byte 117
	.byte 98
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.100(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.83:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.82
.L.else.82:
.L.end.82:
	movq $33, %rax
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
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.87
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.87
	mov $0, %rax
	jmp .L.end.87
.L.true.87:
	mov $1, %rax
.L.end.87:
	cmpq $1, %rax
	jne .L.else.86
.data
.L.str.101:
	.byte 9
	.byte 97
	.byte 110
	.byte 100
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.101(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.86
.L.else.86:
.data
.L.str.102:
	.byte 9
	.byte 97
	.byte 110
	.byte 100
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.102(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.86:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.85
.L.else.85:
.L.end.85:
	movq $34, %rax
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
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.90
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.90
	mov $0, %rax
	jmp .L.end.90
.L.true.90:
	mov $1, %rax
.L.end.90:
	cmpq $1, %rax
	jne .L.else.89
.data
.L.str.103:
	.byte 9
	.byte 111
	.byte 114
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.103(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.89
.L.else.89:
.data
.L.str.104:
	.byte 9
	.byte 111
	.byte 114
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.104(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.89:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.88
.L.else.88:
.L.end.88:
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
	jne .L.else.91
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.93
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.93
	mov $0, %rax
	jmp .L.end.93
.L.true.93:
	mov $1, %rax
.L.end.93:
	cmpq $1, %rax
	jne .L.else.92
.data
.L.str.105:
	.byte 9
	.byte 105
	.byte 109
	.byte 117
	.byte 108
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.105(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.92
.L.else.92:
.data
.L.str.106:
	.byte 9
	.byte 105
	.byte 109
	.byte 117
	.byte 108
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.106(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.92:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.91
.L.else.91:
.L.end.91:
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
	jne .L.true.95
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
	jne .L.true.95
	mov $0, %rax
	jmp .L.end.95
.L.true.95:
	mov $1, %rax
.L.end.95:
	cmpq $1, %rax
	jne .L.else.94
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $60, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.96
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.97
.data
.L.str.107:
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
	.byte 37
	.byte 114
	.byte 100
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.107(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.108:
	.byte 9
	.byte 100
	.byte 105
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.108(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.97
.L.else.97:
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
	.byte 37
	.byte 101
	.byte 100
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.109(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.110:
	.byte 9
	.byte 100
	.byte 105
	.byte 118
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.110(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.97:
	jmp .L.end.96
.L.else.96:
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.98
.data
.L.str.111:
	.byte 9
	.byte 99
	.byte 113
	.byte 116
	.byte 111
	.byte 10
	.byte 0
.text
	leaq .L.str.111(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.98
.L.else.98:
.data
.L.str.112:
	.byte 9
	.byte 99
	.byte 108
	.byte 116
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.112(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.98:
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.99
.data
.L.str.113:
	.byte 9
	.byte 105
	.byte 100
	.byte 105
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.113(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.99
.L.else.99:
.data
.L.str.114:
	.byte 9
	.byte 105
	.byte 100
	.byte 105
	.byte 118
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 10
	.byte 0
.text
	leaq .L.str.114(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.99:
.L.end.96:
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
	jne .L.else.100
.data
.L.str.115:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 120
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.115(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.100
.L.else.100:
.L.end.100:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.94
.L.else.94:
.L.end.94:
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
	jne .L.else.101
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.103
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.103
	mov $0, %rax
	jmp .L.end.103
.L.true.103:
	mov $1, %rax
.L.end.103:
	cmpq $1, %rax
	jne .L.else.102
.data
.L.str.116:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.116(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.102
.L.else.102:
.data
.L.str.117:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.117(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.102:
.data
.L.str.118:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 101
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.118(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.101
.L.else.101:
.L.end.101:
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
	jne .L.else.104
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.106
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.106
	mov $0, %rax
	jmp .L.end.106
.L.true.106:
	mov $1, %rax
.L.end.106:
	cmpq $1, %rax
	jne .L.else.105
.data
.L.str.119:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.119(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.105
.L.else.105:
.data
.L.str.120:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.120(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.105:
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
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.121(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store(%rip), %rax
	movq %rax, %r10
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
	jne .L.else.107
	leaq -16(%rbp), %rax
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
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.122(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
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
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.124(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
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
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.126(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
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
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
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
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.129(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
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
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.107
.L.else.107:
.L.end.107:
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
	jne .L.else.108
	leaq -16(%rbp), %rax
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
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.131(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
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
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.133(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
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
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.135(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
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
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
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
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
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
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.138(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
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
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.108
.L.else.108:
.L.end.108:
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
	jne .L.else.109
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.111
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.111
	mov $0, %rax
	jmp .L.end.111
.L.true.111:
	mov $1, %rax
.L.end.111:
	cmpq $1, %rax
	jne .L.else.110
.data
.L.str.140:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.140(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.110
.L.else.110:
.data
.L.str.141:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.141(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.110:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $60, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.112
.data
.L.str.142:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 97
	.byte 101
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.142(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.112
.L.else.112:
.data
.L.str.143:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 103
	.byte 101
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.143(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.112:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.109
.L.else.109:
.L.end.109:
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
	jne .L.else.113
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.115
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.115
	mov $0, %rax
	jmp .L.end.115
.L.true.115:
	mov $1, %rax
.L.end.115:
	cmpq $1, %rax
	jne .L.else.114
.data
.L.str.144:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.144(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.114
.L.else.114:
.data
.L.str.145:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.145(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.114:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $60, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.116
.data
.L.str.146:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 97
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.146(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.116
.L.else.116:
.data
.L.str.147:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 103
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.147(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.116:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.113
.L.else.113:
.L.end.113:
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
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.119
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.119
	mov $0, %rax
	jmp .L.end.119
.L.true.119:
	mov $1, %rax
.L.end.119:
	cmpq $1, %rax
	jne .L.else.118
.data
.L.str.148:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.148(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.118
.L.else.118:
.data
.L.str.149:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.149(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.118:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $60, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.120
.data
.L.str.150:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 98
	.byte 101
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.150(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.120
.L.else.120:
.data
.L.str.151:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 108
	.byte 101
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.151(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.120:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store(%rip), %rax
	movq %rax, %r10
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
	jne .L.else.121
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_lhs_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	movq $7, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	jne .L.true.123
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.123
	mov $0, %rax
	jmp .L.end.123
.L.true.123:
	mov $1, %rax
.L.end.123:
	cmpq $1, %rax
	jne .L.else.122
.data
.L.str.152:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.152(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.122
.L.else.122:
.data
.L.str.153:
	.byte 9
	.byte 99
	.byte 109
	.byte 112
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 100
	.byte 105
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 101
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.153(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.122:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $60, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.124
.data
.L.str.154:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 98
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.154(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.124
.L.else.124:
.data
.L.str.155:
	.byte 9
	.byte 115
	.byte 101
	.byte 116
	.byte 108
	.byte 32
	.byte 37
	.byte 37
	.byte 97
	.byte 108
	.byte 10
	.byte 0
.text
	leaq .L.str.155(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.124:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.121
.L.else.121:
.L.end.121:
.data
.L.str.156:
	.byte 103
	.byte 101
	.byte 110
	.byte 95
	.byte 101
	.byte 120
	.byte 112
	.byte 114
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
	leaq .L.str.156(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
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
	jne .L.else.125
.data
.L.str.157:
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
	leaq .L.str.157(%rip), %rax
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
	jmp .L.end.125
.L.else.125:
.L.end.125:
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
.global preprocess
preprocess:
	push %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	leaq -81(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
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
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq strndup(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	leaq dirname(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.126:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.126
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.129
.data
.L.str.158:
	.byte 35
	.byte 0
.text
	leaq .L.str.158(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.129
	movq $1, %rax
	jmp .L.end.129
.L.false.129:
	movq $0, %rax
.L.end.129:
	cmpq $0, %rax
	je .L.false.128
.data
.L.str.159:
	.byte 100
	.byte 101
	.byte 102
	.byte 105
	.byte 110
	.byte 101
	.byte 0
.text
	leaq .L.str.159(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.128
	movq $1, %rax
	jmp .L.end.128
.L.false.128:
	movq $0, %rax
.L.end.128:
	cmpq $1, %rax
	jne .L.else.127
	leaq -73(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq new_macro(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -73(%rbp), %rax
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
	leaq -73(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $64, %rax
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
	movb 44(%rax), %r8b
	movb %r8b, 44(%rdi)
	movb 45(%rax), %r8b
	movb %r8b, 45(%rdi)
	movb 46(%rax), %r8b
	movb %r8b, 46(%rdi)
	movb 47(%rax), %r8b
	movb %r8b, 47(%rdi)
	movb 48(%rax), %r8b
	movb %r8b, 48(%rdi)
	movb 49(%rax), %r8b
	movb %r8b, 49(%rdi)
	movb 50(%rax), %r8b
	movb %r8b, 50(%rdi)
	movb 51(%rax), %r8b
	movb %r8b, 51(%rdi)
	movb 52(%rax), %r8b
	movb %r8b, 52(%rdi)
	movb 53(%rax), %r8b
	movb %r8b, 53(%rdi)
	movb 54(%rax), %r8b
	movb %r8b, 54(%rdi)
	movb 55(%rax), %r8b
	movb %r8b, 55(%rdi)
	movb 56(%rax), %r8b
	movb %r8b, 56(%rdi)
	movb 57(%rax), %r8b
	movb %r8b, 57(%rdi)
	movb 58(%rax), %r8b
	movb %r8b, 58(%rdi)
	movb 59(%rax), %r8b
	movb %r8b, 59(%rdi)
	movb 60(%rax), %r8b
	movb %r8b, 60(%rdi)
	movb 61(%rax), %r8b
	movb %r8b, 61(%rdi)
	movb 62(%rax), %r8b
	movb %r8b, 62(%rdi)
	movb 63(%rax), %r8b
	movb %r8b, 63(%rdi)
	movb 64(%rax), %r8b
	movb %r8b, 64(%rdi)
	movb 65(%rax), %r8b
	movb %r8b, 65(%rdi)
	movb 66(%rax), %r8b
	movb %r8b, 66(%rdi)
	movb 67(%rax), %r8b
	movb %r8b, 67(%rdi)
	movb 68(%rax), %r8b
	movb %r8b, 68(%rdi)
	movb 69(%rax), %r8b
	movb %r8b, 69(%rdi)
	movb 70(%rax), %r8b
	movb %r8b, 70(%rdi)
	movb 71(%rax), %r8b
	movb %r8b, 71(%rdi)
	jmp .L.end.127
.L.else.127:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.132
.data
.L.str.160:
	.byte 35
	.byte 0
.text
	leaq .L.str.160(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.132
	movq $1, %rax
	jmp .L.end.132
.L.false.132:
	movq $0, %rax
.L.end.132:
	cmpq $0, %rax
	je .L.false.131
.data
.L.str.161:
	.byte 105
	.byte 110
	.byte 99
	.byte 108
	.byte 117
	.byte 100
	.byte 101
	.byte 0
.text
	leaq .L.str.161(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.131
	movq $1, %rax
	jmp .L.end.131
.L.false.131:
	movq $0, %rax
.L.end.131:
	cmpq $1, %rax
	jne .L.else.130
	leaq -65(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $3, %rax
	push %rax
	leaq -65(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.133
.data
.L.str.162:
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
	.byte 32
	.byte 115
	.byte 116
	.byte 114
	.byte 105
	.byte 110
	.byte 103
	.byte 0
.text
	leaq .L.str.162(%rip), %rax
	push %rax
	leaq -65(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.133
.L.else.133:
.L.end.133:
	leaq -57(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -65(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq strlen(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
.data
.L.str.163:
	.byte 47
	.byte 0
.text
	leaq .L.str.163(%rip), %rax
	push %rax
	leaq strlen(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -81(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strlen(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	addl %edi, %eax
	pop %rdi
	addl %edi, %eax
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
	leaq -57(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.134
.data
.L.str.164:
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
	leaq .L.str.164(%rip), %rax
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
	jmp .L.end.134
.L.else.134:
.L.end.134:
	leaq -65(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq -81(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $2
.data
.L.str.165:
	.byte 37
	.byte 115
	.byte 47
	.byte 37
	.byte 115
	.byte 0
.text
	leaq .L.str.165(%rip), %rax
	push %rax
	leaq -57(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq sprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $48, %rsp
	leaq -49(%rbp), %rax
	push %rax
	movq $420, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -57(%rbp), %rax
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
	leaq -49(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.135
	leaq -49(%rbp), %rax
	push %rax
	movq $420, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -65(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq get_ibu_lib_path(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
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
	leaq -49(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.136
.data
.L.str.166:
	.byte 110
	.byte 111
	.byte 32
	.byte 115
	.byte 117
	.byte 99
	.byte 104
	.byte 32
	.byte 102
	.byte 105
	.byte 108
	.byte 101
	.byte 32
	.byte 111
	.byte 114
	.byte 32
	.byte 100
	.byte 105
	.byte 114
	.byte 101
	.byte 99
	.byte 116
	.byte 111
	.byte 114
	.byte 121
	.byte 0
.text
	leaq .L.str.166(%rip), %rax
	push %rax
	leaq -65(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.136
.L.else.136:
.L.end.136:
	jmp .L.end.135
.L.else.135:
.L.end.135:
	leaq -45(%rbp), %rax
	push %rax
	leaq -49(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq fd_get_file_full_path(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -37(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -36(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.137:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -36(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.137
	leaq -32(%rbp), %rax
	push %rax
	leaq -36(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -45(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.138
	leaq -37(%rbp), %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	jmp .L.end.138
.L.else.138:
.L.end.138:
	movq $1, %rax
	push %rax
	leaq -36(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -36(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subl %edi, %eax
	jmp .L.while.start.137
.L.while.end.137:
	leaq -37(%rbp), %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.139
	leaq -45(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -24(%rbp), %rax
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
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.140
.data
.L.str.167:
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
	leaq .L.str.167(%rip), %rax
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
	jmp .L.end.140
.L.else.140:
.L.end.140:
	movq $150000, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -49(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq read(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	leaq -49(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq close(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -57(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_tokenizer(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	leaq tokenize(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq preprocess(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq get_eof_from_tokens(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $64, %rax
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
	movb 44(%rax), %r8b
	movb %r8b, 44(%rdi)
	movb 45(%rax), %r8b
	movb %r8b, 45(%rdi)
	movb 46(%rax), %r8b
	movb %r8b, 46(%rdi)
	movb 47(%rax), %r8b
	movb %r8b, 47(%rdi)
	movb 48(%rax), %r8b
	movb %r8b, 48(%rdi)
	movb 49(%rax), %r8b
	movb %r8b, 49(%rdi)
	movb 50(%rax), %r8b
	movb %r8b, 50(%rdi)
	movb 51(%rax), %r8b
	movb %r8b, 51(%rdi)
	movb 52(%rax), %r8b
	movb %r8b, 52(%rdi)
	movb 53(%rax), %r8b
	movb %r8b, 53(%rdi)
	movb 54(%rax), %r8b
	movb %r8b, 54(%rdi)
	movb 55(%rax), %r8b
	movb %r8b, 55(%rdi)
	movb 56(%rax), %r8b
	movb %r8b, 56(%rdi)
	movb 57(%rax), %r8b
	movb %r8b, 57(%rdi)
	movb 58(%rax), %r8b
	movb %r8b, 58(%rdi)
	movb 59(%rax), %r8b
	movb %r8b, 59(%rdi)
	movb 60(%rax), %r8b
	movb %r8b, 60(%rdi)
	movb 61(%rax), %r8b
	movb %r8b, 61(%rdi)
	movb 62(%rax), %r8b
	movb %r8b, 62(%rdi)
	movb 63(%rax), %r8b
	movb %r8b, 63(%rdi)
	movb 64(%rax), %r8b
	movb %r8b, 64(%rdi)
	movb 65(%rax), %r8b
	movb %r8b, 65(%rdi)
	movb 66(%rax), %r8b
	movb %r8b, 66(%rdi)
	movb 67(%rax), %r8b
	movb %r8b, 67(%rdi)
	movb 68(%rax), %r8b
	movb %r8b, 68(%rdi)
	movb 69(%rax), %r8b
	movb %r8b, 69(%rdi)
	movb 70(%rax), %r8b
	movb %r8b, 70(%rdi)
	movb 71(%rax), %r8b
	movb %r8b, 71(%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
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
	movb 44(%rax), %r8b
	movb %r8b, 44(%rdi)
	movb 45(%rax), %r8b
	movb %r8b, 45(%rdi)
	movb 46(%rax), %r8b
	movb %r8b, 46(%rdi)
	movb 47(%rax), %r8b
	movb %r8b, 47(%rdi)
	movb 48(%rax), %r8b
	movb %r8b, 48(%rdi)
	movb 49(%rax), %r8b
	movb %r8b, 49(%rdi)
	movb 50(%rax), %r8b
	movb %r8b, 50(%rdi)
	movb 51(%rax), %r8b
	movb %r8b, 51(%rdi)
	movb 52(%rax), %r8b
	movb %r8b, 52(%rdi)
	movb 53(%rax), %r8b
	movb %r8b, 53(%rdi)
	movb 54(%rax), %r8b
	movb %r8b, 54(%rdi)
	movb 55(%rax), %r8b
	movb %r8b, 55(%rdi)
	movb 56(%rax), %r8b
	movb %r8b, 56(%rdi)
	movb 57(%rax), %r8b
	movb %r8b, 57(%rdi)
	movb 58(%rax), %r8b
	movb %r8b, 58(%rdi)
	movb 59(%rax), %r8b
	movb %r8b, 59(%rdi)
	movb 60(%rax), %r8b
	movb %r8b, 60(%rdi)
	movb 61(%rax), %r8b
	movb %r8b, 61(%rdi)
	movb 62(%rax), %r8b
	movb %r8b, 62(%rdi)
	movb 63(%rax), %r8b
	movb %r8b, 63(%rdi)
	movb 64(%rax), %r8b
	movb %r8b, 64(%rdi)
	movb 65(%rax), %r8b
	movb %r8b, 65(%rdi)
	movb 66(%rax), %r8b
	movb %r8b, 66(%rdi)
	movb 67(%rax), %r8b
	movb %r8b, 67(%rdi)
	movb 68(%rax), %r8b
	movb %r8b, 68(%rdi)
	movb 69(%rax), %r8b
	movb %r8b, 69(%rdi)
	movb 70(%rax), %r8b
	movb %r8b, 70(%rdi)
	movb 71(%rax), %r8b
	movb %r8b, 71(%rdi)
	jmp .L.end.139
.L.else.139:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $64, %rax
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
	movb 44(%rax), %r8b
	movb %r8b, 44(%rdi)
	movb 45(%rax), %r8b
	movb %r8b, 45(%rdi)
	movb 46(%rax), %r8b
	movb %r8b, 46(%rdi)
	movb 47(%rax), %r8b
	movb %r8b, 47(%rdi)
	movb 48(%rax), %r8b
	movb %r8b, 48(%rdi)
	movb 49(%rax), %r8b
	movb %r8b, 49(%rdi)
	movb 50(%rax), %r8b
	movb %r8b, 50(%rdi)
	movb 51(%rax), %r8b
	movb %r8b, 51(%rdi)
	movb 52(%rax), %r8b
	movb %r8b, 52(%rdi)
	movb 53(%rax), %r8b
	movb %r8b, 53(%rdi)
	movb 54(%rax), %r8b
	movb %r8b, 54(%rdi)
	movb 55(%rax), %r8b
	movb %r8b, 55(%rdi)
	movb 56(%rax), %r8b
	movb %r8b, 56(%rdi)
	movb 57(%rax), %r8b
	movb %r8b, 57(%rdi)
	movb 58(%rax), %r8b
	movb %r8b, 58(%rdi)
	movb 59(%rax), %r8b
	movb %r8b, 59(%rdi)
	movb 60(%rax), %r8b
	movb %r8b, 60(%rdi)
	movb 61(%rax), %r8b
	movb %r8b, 61(%rdi)
	movb 62(%rax), %r8b
	movb %r8b, 62(%rdi)
	movb 63(%rax), %r8b
	movb %r8b, 63(%rdi)
	movb 64(%rax), %r8b
	movb %r8b, 64(%rdi)
	movb 65(%rax), %r8b
	movb %r8b, 65(%rdi)
	movb 66(%rax), %r8b
	movb %r8b, 66(%rdi)
	movb 67(%rax), %r8b
	movb %r8b, 67(%rdi)
	movb 68(%rax), %r8b
	movb %r8b, 68(%rdi)
	movb 69(%rax), %r8b
	movb %r8b, 69(%rdi)
	movb 70(%rax), %r8b
	movb %r8b, 70(%rdi)
	movb 71(%rax), %r8b
	movb %r8b, 71(%rdi)
.L.end.139:
	jmp .L.end.130
.L.else.130:
	jmp .L.preprocess.break
.L.end.130:
.L.end.127:
	jmp .L.while.start.126
.L.while.end.126:
.L.preprocess.break:
	leaq -8(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq find_macro(%rip), %rax
	movq %rax, %r10
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
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.141
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq copy_token(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.141
.L.else.141:
.L.end.141:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.142
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq preprocess(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.142
.L.else.142:
.L.end.142:
	leave
	ret
.global fd_get_file_full_path
fd_get_file_full_path:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq -20(%rbp), %rax
	push %rax
	movq $4096, %rax
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.143
.data
.L.str.168:
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
	leaq .L.str.168(%rip), %rax
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
	jmp .L.end.143
.L.else.143:
.L.end.143:
	leaq -12(%rbp), %rax
	push %rax
	movq $64, %rax
	push %rax
	leaq alloc(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.169:
	.byte 47
	.byte 112
	.byte 114
	.byte 111
	.byte 99
	.byte 47
	.byte 115
	.byte 101
	.byte 108
	.byte 102
	.byte 47
	.byte 102
	.byte 100
	.byte 47
	.byte 37
	.byte 100
	.byte 0
.text
	leaq .L.str.169(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq sprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $40, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $4096, %rax
	pop %rdi
	subl %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq readlink(%rip), %rax
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
	jne .L.else.144
.data
.L.str.170:
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
	.byte 114
	.byte 101
	.byte 97
	.byte 100
	.byte 105
	.byte 110
	.byte 103
	.byte 32
	.byte 47
	.byte 112
	.byte 114
	.byte 111
	.byte 99
	.byte 47
	.byte 115
	.byte 101
	.byte 108
	.byte 102
	.byte 47
	.byte 102
	.byte 100
	.byte 32
	.byte 116
	.byte 111
	.byte 32
	.byte 103
	.byte 101
	.byte 116
	.byte 32
	.byte 101
	.byte 120
	.byte 101
	.byte 32
	.byte 112
	.byte 97
	.byte 116
	.byte 104
	.byte 10
	.byte 0
.text
	leaq .L.str.170(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.144
.L.else.144:
.L.end.144:
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global get_ibu_lib_path
get_ibu_lib_path:
	push %rbp
	movq %rsp, %rbp
	subq $4128, %rsp
	leaq -4116(%rbp), %rax
	movq %rax, %rdi
	movq $4096, %rcx
	mov $0, %al
	rep stosb
	leaq -20(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $4096, %rax
	pop %rdi
	subl %edi, %eax
	push %rax
	leaq -4116(%rbp), %rax
	push %rax
.data
.L.str.171:
	.byte 47
	.byte 112
	.byte 114
	.byte 111
	.byte 99
	.byte 47
	.byte 115
	.byte 101
	.byte 108
	.byte 102
	.byte 47
	.byte 101
	.byte 120
	.byte 101
	.byte 0
.text
	leaq .L.str.171(%rip), %rax
	push %rax
	leaq readlink(%rip), %rax
	movq %rax, %r10
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
	jne .L.else.145
.data
.L.str.172:
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
	.byte 114
	.byte 101
	.byte 97
	.byte 100
	.byte 105
	.byte 110
	.byte 103
	.byte 32
	.byte 47
	.byte 112
	.byte 114
	.byte 111
	.byte 99
	.byte 47
	.byte 115
	.byte 101
	.byte 108
	.byte 102
	.byte 47
	.byte 101
	.byte 120
	.byte 101
	.byte 32
	.byte 116
	.byte 111
	.byte 32
	.byte 103
	.byte 101
	.byte 116
	.byte 32
	.byte 105
	.byte 98
	.byte 117
	.byte 95
	.byte 101
	.byte 120
	.byte 101
	.byte 32
	.byte 112
	.byte 97
	.byte 116
	.byte 104
	.byte 10
	.byte 0
.text
	leaq .L.str.172(%rip), %rax
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
	jmp .L.end.145
.L.else.145:
.L.end.145:
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -4116(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -4116(%rbp), %rax
	push %rax
	leaq strndup(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	leaq dirname(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strlen(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
.data
.L.str.173:
	.byte 47
	.byte 108
	.byte 105
	.byte 98
	.byte 47
	.byte 0
.text
	leaq .L.str.173(%rip), %rax
	push %rax
	leaq strlen(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strlen(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	addl %edi, %eax
	pop %rdi
	addl %edi, %eax
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
	jne .L.else.146
.data
.L.str.174:
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
	leaq .L.str.174(%rip), %rax
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
	jmp .L.end.146
.L.else.146:
.L.end.146:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $2
.data
.L.str.175:
	.byte 37
	.byte 115
	.byte 47
	.byte 108
	.byte 105
	.byte 98
	.byte 47
	.byte 37
	.byte 115
	.byte 0
.text
	leaq .L.str.175(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq sprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $48, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global dirname
dirname:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -12(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strlen(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movl %eax, (%rdi)
	movq $2, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setge %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.149
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
	je .L.false.149
	movq $1, %rax
	jmp .L.end.149
.L.false.149:
	movq $0, %rax
.L.end.149:
	cmpq $0, %rax
	je .L.false.148
	movq $47, %rax
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
	je .L.false.148
	movq $1, %rax
	jmp .L.end.148
.L.false.148:
	movq $0, %rax
.L.end.148:
	cmpq $1, %rax
	jne .L.else.147
	movq $2, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	push %rax
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq memmove(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	movq $1, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
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
	jmp .L.end.147
.L.else.147:
.L.end.147:
.L.while.start.150:
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setg %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.151
	movq $47, %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
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
	je .L.false.151
	movq $1, %rax
	jmp .L.end.151
.L.false.151:
	movq $0, %rax
.L.end.151:
	cmpq $1, %rax
	jne .L.while.end.150
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	addl %edi, %eax
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
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	jmp .L.while.start.150
.L.while.end.150:
	leaq -8(%rbp), %rax
	push %rax
	movq $47, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strrchr(%rip), %rax
	movq %rax, %r10
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
	jne .L.else.152
	movq $2, %rax
	push %rax
.data
.L.str.176:
	.byte 46
	.byte 0
.text
	leaq .L.str.176(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq memcpy(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	jmp .L.end.152
.L.else.152:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.153
	movq $1, %rax
	push %rax
	movq $1, %rax
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
	jmp .L.end.153
.L.else.153:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
.L.end.153:
.L.end.152:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
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
.L.while.start.154:
	movq $5, %rax
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
	jne .L.while.end.154
	leaq 16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.154
.L.while.end.154:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
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
.L.while.start.155:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.155
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.156
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.156
.L.else.156:
.L.end.156:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.155
.L.while.end.155:
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
.global new_preprocessor
new_preprocessor:
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
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_vec(%rip), %rax
	movq %rax, %r10
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
	leave
	ret
.global parse
parse:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.L.while.start.157:
	movq $5, %rax
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
	jne .L.while.end.157
.data
.L.str.177:
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 0
.text
	leaq .L.str.177(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.158
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_func(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.158
.L.else.158:
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
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.159
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_struct(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.159
.L.else.159:
.data
.L.str.179:
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
	leaq .L.str.179(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.end.159:
.L.end.158:
	jmp .L.while.start.157
.L.while.end.157:
	leave
	ret
.global parse_func
parse_func:
	push %rbp
	movq %rsp, %rbp
	subq $64, %rsp
.data
.L.str.180:
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 0
.text
	leaq .L.str.180(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -58(%rbp), %rax
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
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -50(%rbp), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_vec(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -42(%rbp), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_vec(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -34(%rbp), %rax
	push %rax
	leaq -42(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -50(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_function_params(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	movzx %al, %eax
	pop %rdi
	movb %al, (%rdi)
	leaq -33(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -25(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -17(%rbp), %rax
	push %rax
	leaq -58(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq find_globals(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -17(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.160
	leaq -42(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -17(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	push %rax
	leaq cmp_func_params(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.161
.data
.L.str.181:
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
	.byte 100
	.byte 111
	.byte 101
	.byte 115
	.byte 110
	.byte 39
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
	.byte 112
	.byte 114
	.byte 111
	.byte 116
	.byte 111
	.byte 116
	.byte 121
	.byte 112
	.byte 101
	.byte 0
.text
	leaq .L.str.181(%rip), %rax
	push %rax
	leaq -58(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.161
.L.else.161:
.L.end.161:
	leaq -17(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq -25(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq cmp_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.162
.data
.L.str.182:
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
	.byte 110
	.byte 39
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
	.byte 112
	.byte 114
	.byte 111
	.byte 116
	.byte 111
	.byte 116
	.byte 121
	.byte 112
	.byte 101
	.byte 0
.text
	leaq .L.str.182(%rip), %rax
	push %rax
	leaq -58(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.162
.L.else.162:
.L.end.162:
	jmp .L.end.160
.L.else.160:
.L.end.160:
	movq $5, %rax
	push %rax
	leaq -25(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.163
.data
.L.str.183:
	.byte 117
	.byte 110
	.byte 115
	.byte 117
	.byte 112
	.byte 112
	.byte 111
	.byte 114
	.byte 116
	.byte 101
	.byte 100
	.byte 32
	.byte 102
	.byte 101
	.byte 97
	.byte 116
	.byte 117
	.byte 114
	.byte 101
	.byte 58
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
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 105
	.byte 110
	.byte 103
	.byte 32
	.byte 115
	.byte 116
	.byte 114
	.byte 117
	.byte 99
	.byte 116
	.byte 0
.text
	leaq .L.str.183(%rip), %rax
	push %rax
	leaq -33(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.163
.L.else.163:
.L.end.163:
	leaq -9(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
.data
.L.str.184:
	.byte 59
	.byte 0
.text
	leaq .L.str.184(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.164
.data
.L.str.185:
	.byte 59
	.byte 0
.text
	leaq .L.str.185(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -9(%rbp), %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	jmp .L.end.164
.L.else.164:
.L.end.164:
	movq $0, %rax
	push %rax
	leaq -17(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.165
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
	jne .L.else.166
.data
.L.str.186:
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
	leaq .L.str.186(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.166
.L.else.166:
.L.end.166:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -58(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq -42(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $62, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -34(%rbp), %rax
	movsbl (%rax), %eax
	push %rax
	leaq -25(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -50(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_func_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_function_object(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -9(%rbp), %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.167
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.167
.L.else.167:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_block(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.end.167:
	jmp .L.end.165
.L.else.165:
	leaq -17(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	je .L.false.169
	leaq -9(%rbp), %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L.false.169
	movq $1, %rax
	jmp .L.end.169
.L.false.169:
	movq $0, %rax
.L.end.169:
	cmpq $1, %rax
	jne .L.else.168
	leaq -17(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -17(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_block(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -17(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.168
.L.else.168:
	leaq -9(%rbp), %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.170
.data
.L.str.187:
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
	leaq .L.str.187(%rip), %rax
	push %rax
	leaq -58(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.170
.L.else.170:
.L.end.170:
.L.end.168:
.L.end.165:
	leave
	ret
.global add_function_object
add_function_object:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
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
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leave
	ret
.global parse_function_params
parse_function_params:
	push %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	leaq -33(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
.data
.L.str.188:
	.byte 40
	.byte 0
.text
	leaq .L.str.188(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.while.start.171:
.data
.L.str.189:
	.byte 41
	.byte 0
.text
	leaq .L.str.189(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.171
	leaq -32(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
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
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.190:
	.byte 46
	.byte 46
	.byte 46
	.byte 0
.text
	leaq .L.str.190(%rip), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.172
.data
.L.str.191:
	.byte 41
	.byte 0
.text
	leaq .L.str.191(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.173
.data
.L.str.192:
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
	leaq .L.str.192(%rip), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.173
.L.else.173:
.L.end.173:
	leaq -33(%rbp), %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $1, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.193:
	.byte 97
	.byte 114
	.byte 103
	.byte 99
	.byte 0
.text
	leaq .L.str.193(%rip), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_local_object(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $48, %rsp
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	push %rax
	leaq new_pointer_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $1, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.194:
	.byte 97
	.byte 114
	.byte 103
	.byte 118
	.byte 0
.text
	leaq .L.str.194(%rip), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_local_object(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $48, %rsp
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.172
.L.else.172:
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $5, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.174
.data
.L.str.195:
	.byte 117
	.byte 110
	.byte 115
	.byte 117
	.byte 112
	.byte 112
	.byte 111
	.byte 114
	.byte 116
	.byte 101
	.byte 100
	.byte 32
	.byte 102
	.byte 101
	.byte 97
	.byte 116
	.byte 117
	.byte 114
	.byte 101
	.byte 58
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
	.byte 101
	.byte 116
	.byte 101
	.byte 114
	.byte 32
	.byte 111
	.byte 102
	.byte 32
	.byte 115
	.byte 116
	.byte 114
	.byte 117
	.byte 99
	.byte 116
	.byte 0
.text
	leaq .L.str.195(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.174
.L.else.174:
.L.end.174:
	movq $13, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.175
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq new_pointer_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.175
.L.else.175:
.L.end.175:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $1, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_local_object(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $48, %rsp
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.196:
	.byte 41
	.byte 0
.text
	leaq .L.str.196(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L.false.177
.data
.L.str.197:
	.byte 44
	.byte 0
.text
	leaq .L.str.197(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L.false.177
	movq $1, %rax
	jmp .L.end.177
.L.false.177:
	movq $0, %rax
.L.end.177:
	cmpq $1, %rax
	jne .L.else.176
	jmp .L.parse_function_params.break
	jmp .L.end.176
.L.else.176:
.data
.L.str.198:
	.byte 41
	.byte 0
.text
	leaq .L.str.198(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.178
.data
.L.str.199:
	.byte 44
	.byte 0
.text
	leaq .L.str.199(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.178
.L.else.178:
.L.end.178:
.L.end.176:
.L.end.172:
	jmp .L.while.start.171
.L.while.end.171:
.L.parse_function_params.break:
.data
.L.str.200:
	.byte 41
	.byte 0
.text
	leaq .L.str.200(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -33(%rbp), %rax
	movsbl (%rax), %eax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_struct
parse_struct:
	push %rbp
	movq %rsp, %rbp
	subq $48, %rsp
.data
.L.str.201:
	.byte 115
	.byte 116
	.byte 114
	.byte 117
	.byte 99
	.byte 116
	.byte 0
.text
	leaq .L.str.201(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -44(%rbp), %rax
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
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -36(%rbp), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_vec(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -28(%rbp), %rax
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
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $5, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -20(%rbp), %rax
	push %rax
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq get_user_defined_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.179
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.179
.L.else.179:
.L.end.179:
.data
.L.str.202:
	.byte 59
	.byte 0
.text
	leaq .L.str.202(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.180
	movq $0, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.181
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	addq $61, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	jmp .L.end.181
.L.else.181:
.L.end.181:
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
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.180
.L.else.180:
.data
.L.str.204:
	.byte 123
	.byte 0
.text
	leaq .L.str.204(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.while.start.182:
.data
.L.str.205:
	.byte 125
	.byte 0
.text
	leaq .L.str.205(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.182
	leaq -12(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_member(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.206:
	.byte 44
	.byte 0
.text
	leaq .L.str.206(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.while.start.182
.L.while.end.182:
.data
.L.str.207:
	.byte 125
	.byte 0
.text
	leaq .L.str.207(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq calc_sizof_struct_members(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movl %eax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.183
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.183
.L.else.183:
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $61, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.184
.data
.L.str.208:
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
	.byte 0
.text
	leaq .L.str.208(%rip), %rax
	push %rax
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.184
.L.else.184:
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $61, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
.L.end.184:
.L.end.183:
.L.end.180:
	leave
	ret
.global calc_sizof_struct_members
calc_sizof_struct_members:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -16(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.185:
	leaq 16(%rbp), %rax
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
	jne .L.while.end.185
	leaq -8(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.187
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	push %rax
	leaq align_to(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	movq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq align_to(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.187
	movq $1, %rax
	jmp .L.end.187
.L.false.187:
	movq $0, %rax
.L.end.187:
	cmpq $1, %rax
	jne .L.else.186
	leaq -16(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq align_to(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.186
.L.else.186:
.L.end.186:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
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
	jmp .L.while.start.185
.L.while.end.185:
	movq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq align_to(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
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
	movq $24, %rax
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
.global initializer
initializer:
	push %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	leaq -28(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -24(%rbp), %rax
	push %rax
	movq $10, %rax
	push %rax
	leaq new_vec(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.189
	movq $5, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.189
	movq $1, %rax
	jmp .L.end.189
.L.false.189:
	movq $0, %rax
.L.end.189:
	cmpq $1, %rax
	jne .L.else.188
.data
.L.str.209:
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
	.byte 105
	.byte 110
	.byte 105
	.byte 116
	.byte 105
	.byte 97
	.byte 108
	.byte 105
	.byte 122
	.byte 101
	.byte 114
	.byte 0
.text
	leaq .L.str.209(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.188
.L.else.188:
.L.end.188:
.data
.L.str.210:
	.byte 123
	.byte 0
.text
	leaq .L.str.210(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.211:
	.byte 125
	.byte 0
.text
	leaq .L.str.211(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.190
	leaq -44(%rbp), %rax
	push %rax
	movq $32, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.190
.L.else.190:
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.191
.L.while.start.192:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $56, %rax
	movslq (%rax), %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.192
	leaq -36(%rbp), %rax
	push %rax
	movq $20, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq new_node_num(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.212:
	.byte 123
	.byte 0
.text
	leaq .L.str.212(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.193
	leaq -44(%rbp), %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq initializer(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.193
.L.else.193:
	leaq -44(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $17, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.193:
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
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
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $56, %rax
	movslq (%rax), %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.194
.data
.L.str.213:
	.byte 44
	.byte 0
.text
	leaq .L.str.213(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.194
.L.else.194:
.L.end.194:
	jmp .L.while.start.192
.L.while.end.192:
	jmp .L.end.191
.L.else.191:
	movq $5, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.195
.L.while.start.196:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.196
	leaq -16(%rbp), %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -36(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $28, %rax
	push %rax
	leaq new_struct_access_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.214:
	.byte 123
	.byte 0
.text
	leaq .L.str.214(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.197
	leaq -44(%rbp), %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq initializer(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.197
.L.else.197:
	leaq -44(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $17, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.197:
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
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
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.198
.data
.L.str.215:
	.byte 44
	.byte 0
.text
	leaq .L.str.215(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.198
.L.else.198:
.L.end.198:
	jmp .L.while.start.196
.L.while.end.196:
	jmp .L.end.195
.L.else.195:
.L.end.195:
.L.end.191:
.L.end.190:
.data
.L.str.216:
	.byte 125
	.byte 0
.text
	leaq .L.str.216(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $21, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type(%rip), %rax
	movq %rax, %r10
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
.global node_true
node_true:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
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
	leaq -24(%rbp), %rax
	push %rax
	movq $21, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_vec(%rip), %rax
	movq %rax, %r10
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
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.while.start.199:
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
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.199
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_stmt(%rip), %rax
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
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.200
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.200
.L.else.200:
.L.end.200:
	jmp .L.while.start.199
.L.while.end.199:
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
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
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
	subq $48, %rsp
.data
.L.str.220:
	.byte 108
	.byte 101
	.byte 116
	.byte 0
.text
	leaq .L.str.220(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.201
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -40(%rbp), %rax
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
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -32(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_local_object(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $48, %rsp
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
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.202
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
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -16(%rbp), %rax
	push %rax
	movq $14, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.223:
	.byte 123
	.byte 0
.text
	leaq .L.str.223(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.203
	leaq -48(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq initializer(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.224:
	.byte 59
	.byte 0
.text
	leaq .L.str.224(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.203
.L.else.203:
	leaq -48(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr_stmt(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $17, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.203:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.202
.L.else.202:
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
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
.L.end.202:
	jmp .L.end.201
.L.else.201:
.L.end.201:
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.226:
	.byte 0
.text
	leaq .L.str.226(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.227:
	.byte 103
	.byte 111
	.byte 116
	.byte 111
	.byte 0
.text
	leaq .L.str.227(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.204
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.228:
	.byte 59
	.byte 0
.text
	leaq .L.str.228(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -48(%rbp), %rax
	push %rax
	movq $23, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.204
.L.else.204:
.L.end.204:
	movq $5, %rax
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
	jne .L.else.205
.data
.L.str.229:
	.byte 58
	.byte 0
.text
	leaq .L.str.229(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.206
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.230:
	.byte 58
	.byte 0
.text
	leaq .L.str.230(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -48(%rbp), %rax
	push %rax
	movq $24, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.206
.L.else.206:
.L.end.206:
	jmp .L.end.205
.L.else.205:
.L.end.205:
.data
.L.str.231:
	.byte 105
	.byte 102
	.byte 0
.text
	leaq .L.str.231(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.207
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -48(%rbp), %rax
	push %rax
	movq $15, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_block(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.232:
	.byte 101
	.byte 108
	.byte 115
	.byte 101
	.byte 0
.text
	leaq .L.str.232(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.208
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_stmt(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.208
.L.else.208:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	movq $29, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.208:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.207
.L.else.207:
.L.end.207:
.data
.L.str.233:
	.byte 119
	.byte 104
	.byte 105
	.byte 108
	.byte 101
	.byte 0
.text
	leaq .L.str.233(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.209
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -48(%rbp), %rax
	push %rax
	movq $16, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.234:
	.byte 123
	.byte 0
.text
	leaq .L.str.234(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.210
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.210
.L.else.210:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq node_true(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.210:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_block(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.209
.L.else.209:
.L.end.209:
.data
.L.str.235:
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 0
.text
	leaq .L.str.235(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.211
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -48(%rbp), %rax
	push %rax
	movq $18, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr_stmt(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.211
.L.else.211:
.L.end.211:
.data
.L.str.236:
	.byte 123
	.byte 0
.text
	leaq .L.str.236(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.212
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_block(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.212
.L.else.212:
.L.end.212:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr_stmt(%rip), %rax
	movq %rax, %r10
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
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.237:
	.byte 59
	.byte 0
.text
	leaq .L.str.237(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
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
	leaq parse_logand(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.213:
.data
.L.str.238:
	.byte 124
	.byte 124
	.byte 0
.text
	leaq .L.str.238(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.while.end.213
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_logand(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $27, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.213
.L.while.end.213:
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
	leaq parse_or(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.214:
.data
.L.str.239:
	.byte 38
	.byte 38
	.byte 0
.text
	leaq .L.str.239(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.while.end.214
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_or(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $26, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.214
.L.while.end.214:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_or
parse_or:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_and(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.215:
.data
.L.str.240:
	.byte 124
	.byte 0
.text
	leaq .L.str.240(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.while.end.215
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_and(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $34, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.215
.L.while.end.215:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_and
parse_and:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_equality(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.216:
.data
.L.str.241:
	.byte 38
	.byte 0
.text
	leaq .L.str.241(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.while.end.216
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_equality(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $33, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.216
.L.while.end.216:
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
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_relational(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.217:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.217
.data
.L.str.242:
	.byte 61
	.byte 61
	.byte 0
.text
	leaq .L.str.242(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.218
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_relational(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.219
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $7, %rax
	push %rax
	leaq new_equality(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.219
.L.else.219:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.220
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $7, %rax
	push %rax
	leaq new_relational(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.220
.L.else.220:
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $7, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.220:
.L.end.219:
	jmp .L.end.218
.L.else.218:
.data
.L.str.243:
	.byte 33
	.byte 61
	.byte 0
.text
	leaq .L.str.243(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.221
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_relational(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.222
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $6, %rax
	push %rax
	leaq new_equality(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.222
.L.else.222:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.223
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $6, %rax
	push %rax
	leaq new_relational(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.223
.L.else.223:
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $6, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.223:
.L.end.222:
	jmp .L.end.221
.L.else.221:
	jmp .L.parse_equality.end
.L.end.221:
.L.end.218:
	jmp .L.while.start.217
.L.while.end.217:
.L.parse_equality.end:
	leaq -16(%rbp), %rax
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
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_shift(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.224:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.224
.data
.L.str.244:
	.byte 60
	.byte 61
	.byte 0
.text
	leaq .L.str.244(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.225
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_shift(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.226
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq new_relational(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.226
.L.else.226:
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.226:
	jmp .L.end.225
.L.else.225:
.data
.L.str.245:
	.byte 62
	.byte 61
	.byte 0
.text
	leaq .L.str.245(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.227
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_shift(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.228
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $10, %rax
	push %rax
	leaq new_relational(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.228
.L.else.228:
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $10, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.228:
	jmp .L.end.227
.L.else.227:
.data
.L.str.246:
	.byte 60
	.byte 0
.text
	leaq .L.str.246(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.229
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_shift(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.230
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $9, %rax
	push %rax
	leaq new_relational(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.230
.L.else.230:
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $9, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.230:
	jmp .L.end.229
.L.else.229:
.data
.L.str.247:
	.byte 62
	.byte 0
.text
	leaq .L.str.247(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.231
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_shift(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.232
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $11, %rax
	push %rax
	leaq new_relational(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.232
.L.else.232:
	leaq -16(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $11, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.232:
	jmp .L.end.231
.L.else.231:
	jmp .L.parse_relational.end
.L.end.231:
.L.end.229:
.L.end.227:
.L.end.225:
	jmp .L.while.start.224
.L.while.end.224:
.L.parse_relational.end:
	leaq -16(%rbp), %rax
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
	leaq is_comparison_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.234
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.234
	movq $1, %rax
	jmp .L.end.234
.L.false.234:
	movq $0, %rax
.L.end.234:
	cmpq $1, %rax
	jne .L.else.233
	leaq -8(%rbp), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq search_relational_lhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq search_relational_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
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
	leaq new_binop(%rip), %rax
	movq %rax, %r10
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
	leaq new_binop(%rip), %rax
	movq %rax, %r10
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
	jmp .L.end.233
.L.else.233:
.L.end.233:
	leaq -8(%rbp), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq search_relational_lhs(%rip), %rax
	movq %rax, %r10
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
	leaq new_binop(%rip), %rax
	movq %rax, %r10
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
	leaq new_binop(%rip), %rax
	movq %rax, %r10
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
	leaq is_comparison_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.236
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.236
	movq $1, %rax
	jmp .L.end.236
.L.false.236:
	movq $0, %rax
.L.end.236:
	cmpq $1, %rax
	jne .L.else.235
	leaq -8(%rbp), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq search_relational_lhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq search_relational_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
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
	leaq new_binop(%rip), %rax
	movq %rax, %r10
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
	leaq new_binop(%rip), %rax
	movq %rax, %r10
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
	jmp .L.end.235
.L.else.235:
.L.end.235:
	leaq -8(%rbp), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq search_relational_rhs(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
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
	leaq new_binop(%rip), %rax
	movq %rax, %r10
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
.L.while.start.237:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.while.end.237
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.237
.L.while.end.237:
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
.L.while.start.238:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq is_comparison_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.while.end.238
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.238
.L.while.end.238:
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
	jne .L.else.239
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.239
.L.else.239:
.L.end.239:
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
	jne .L.else.240
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.240
.L.else.240:
.L.end.240:
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
	jne .L.else.241
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.241
.L.else.241:
.L.end.241:
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
	jne .L.else.242
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.242
.L.else.242:
.L.end.242:
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
	jne .L.else.243
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.243
.L.else.243:
.L.end.243:
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
	jne .L.else.244
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.244
.L.else.244:
.L.end.244:
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
	jne .L.else.245
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.245
.L.else.245:
.L.end.245:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_shift
parse_shift:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_add(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.246:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.246
.data
.L.str.248:
	.byte 60
	.byte 60
	.byte 0
.text
	leaq .L.str.248(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.247
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_add(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $30, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_shift.continue
	jmp .L.end.247
.L.else.247:
.L.end.247:
.data
.L.str.249:
	.byte 62
	.byte 62
	.byte 0
.text
	leaq .L.str.249(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.248
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_add(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $31, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_shift.continue
	jmp .L.end.248
.L.else.248:
.L.end.248:
	jmp .L.parse_shift.break
.L.parse_shift.continue:
	jmp .L.while.start.246
.L.while.end.246:
.L.parse_shift.break:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
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
	leaq parse_mul(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.249:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.249
.data
.L.str.250:
	.byte 43
	.byte 0
.text
	leaq .L.str.250(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.250
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_mul(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.250
.L.else.250:
.data
.L.str.251:
	.byte 45
	.byte 0
.text
	leaq .L.str.251(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.251
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_mul(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.251
.L.else.251:
	jmp .L.parse_add.end
.L.end.251:
.L.end.250:
	jmp .L.while.start.249
.L.while.end.249:
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
	leaq parse_unary(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.252:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.252
.data
.L.str.252:
	.byte 42
	.byte 0
.text
	leaq .L.str.252(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.253
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_unary(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.253
.L.else.253:
.data
.L.str.253:
	.byte 47
	.byte 0
.text
	leaq .L.str.253(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.254
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_unary(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.254
.L.else.254:
.data
.L.str.254:
	.byte 37
	.byte 0
.text
	leaq .L.str.254(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.255
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_unary(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.255
.L.else.255:
	jmp .L.parse_mul.end
.L.end.255:
.L.end.254:
.L.end.253:
	jmp .L.while.start.252
.L.while.end.252:
.L.parse_mul.end:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global params_length_without_argv_argc
params_length_without_argv_argc:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.256
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.256
.L.else.256:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
.L.end.256:
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
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
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
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $20, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_unary(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $7, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.258
	movq $13, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.258
	movq $1, %rax
	jmp .L.end.258
.L.false.258:
	movq $0, %rax
.L.end.258:
	cmpq $1, %rax
	jne .L.else.257
.data
.L.str.255:
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
	leaq .L.str.255(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.257
.L.else.257:
.L.end.257:
	leaq -8(%rbp), %rax
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
	movq $120, %rax
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
	pop %rdi
	movl %eax, (%rdi)
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
	addq $104, %rax
	push %rax
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq 40(%rbp), %rax
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
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.259:
	leaq 16(%rbp), %rax
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
	jne .L.while.end.259
	leaq -8(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.260
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.260
.L.else.260:
.L.end.260:
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
	jmp .L.while.start.259
.L.while.end.259:
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
	jne .L.else.261
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $56, %rax
	movslq (%rax), %rax
	push %rax
	leaq new_node_num(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.261
.L.else.261:
	movq $3, %rax
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
	jne .L.else.262
	leaq -8(%rbp), %rax
	push %rax
	movq $12, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.262
.L.else.262:
.data
.L.str.256:
	.byte 110
	.byte 105
	.byte 108
	.byte 0
.text
	leaq .L.str.256(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.263
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.263
.L.else.263:
.data
.L.str.257:
	.byte 116
	.byte 114
	.byte 117
	.byte 101
	.byte 0
.text
	leaq .L.str.257(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.264
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.264
.L.else.264:
.data
.L.str.258:
	.byte 102
	.byte 97
	.byte 108
	.byte 115
	.byte 101
	.byte 0
.text
	leaq .L.str.258(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.265
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.265
.L.else.265:
.data
.L.str.259:
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
	leaq .L.str.259(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.266
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.260:
	.byte 40
	.byte 0
.text
	leaq .L.str.260(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.261:
	.byte 41
	.byte 0
.text
	leaq .L.str.261(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.266
.L.else.266:
.data
.L.str.262:
	.byte 115
	.byte 105
	.byte 122
	.byte 101
	.byte 111
	.byte 102
	.byte 0
.text
	leaq .L.str.262(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.267
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_sizeof(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.267
.L.else.267:
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
	jne .L.else.268
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ident(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.268
.L.else.268:
.data
.L.str.263:
	.byte 40
	.byte 0
.text
	leaq .L.str.263(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.269
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.264:
	.byte 41
	.byte 0
.text
	leaq .L.str.264(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.269
.L.else.269:
.data
.L.str.265:
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
	leaq .L.str.265(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
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
.L.end.269:
.L.end.268:
.L.end.267:
.L.end.266:
.L.end.265:
.L.end.264:
.L.end.263:
.L.end.262:
.L.end.261:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global new_node_num
new_node_num:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
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
.global parse_ident
parse_ident:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq -24(%rbp), %rax
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
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq find_object(%rip), %rax
	movq %rax, %r10
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
	jne .L.else.270
.data
.L.str.266:
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
	leaq .L.str.266(%rip), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.270
.L.else.270:
.L.end.270:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -16(%rbp), %rax
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
	leaq find_locals(%rip), %rax
	movq %rax, %r10
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
	jne .L.else.271
	leaq -8(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq find_globals(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.271
.L.else.271:
.L.end.271:
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
.data
.L.str.267:
	.byte 115
	.byte 105
	.byte 122
	.byte 101
	.byte 111
	.byte 102
	.byte 0
.text
	leaq .L.str.267(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.268:
	.byte 40
	.byte 0
.text
	leaq .L.str.268(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -12(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_unary(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.269:
	.byte 41
	.byte 0
.text
	leaq .L.str.269(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -4(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $13, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -12(%rbp), %rax
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
	subq $112, %rsp
.data
.L.str.270:
	.byte 42
	.byte 0
.text
	leaq .L.str.270(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.272
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_deref(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.272
.L.else.272:
.L.end.272:
.data
.L.str.271:
	.byte 38
	.byte 0
.text
	leaq .L.str.271(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.273
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -100(%rbp), %rax
	push %rax
	movq $19, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_unary(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.273
.L.else.273:
.L.end.273:
.data
.L.str.272:
	.byte 33
	.byte 0
.text
	leaq .L.str.272(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.274
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -100(%rbp), %rax
	push %rax
	movq $5, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_unary(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.274
.L.else.274:
.L.end.274:
	leaq -100(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_number(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.275:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.275
.data
.L.str.273:
	.byte 40
	.byte 0
.text
	leaq .L.str.273(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.276
	leaq -92(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.274:
	.byte 40
	.byte 0
.text
	leaq .L.str.274(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $6, %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.277
.data
.L.str.275:
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
	.byte 116
	.byte 121
	.byte 112
	.byte 101
	.byte 32
	.byte 111
	.byte 98
	.byte 106
	.byte 101
	.byte 99
	.byte 116
	.byte 10
	.byte 0
.text
	leaq .L.str.275(%rip), %rax
	push %rax
	leaq -92(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.277
.L.else.277:
.L.end.277:
	leaq -84(%rbp), %rax
	push %rax
	movq $25, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_func_call_args(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.276:
	.byte 41
	.byte 0
.text
	leaq .L.str.276(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $40, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.278
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	leaq params_length_without_argv_argc(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.279
.data
.L.str.277:
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
	leaq .L.str.277(%rip), %rax
	push %rax
	leaq -92(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.279
.L.else.279:
.L.end.279:
	jmp .L.end.278
.L.else.278:
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.280
.data
.L.str.278:
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
	leaq .L.str.278(%rip), %rax
	push %rax
	leaq -92(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.280
.L.else.280:
.L.end.280:
.L.end.278:
	leaq -100(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.continue
	jmp .L.end.276
.L.else.276:
.L.end.276:
	leaq -68(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.279:
	.byte 43
	.byte 43
	.byte 0
.text
	leaq .L.str.279(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.281
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -100(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq new_node_num(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	movq $1, %rax
	push %rax
	leaq new_node_num(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $17, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	push %rax
	movq $1, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.continue
	jmp .L.end.281
.L.else.281:
.L.end.281:
.data
.L.str.280:
	.byte 45
	.byte 45
	.byte 0
.text
	leaq .L.str.280(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.282
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -100(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq new_node_num(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	movq $1, %rax
	push %rax
	leaq new_node_num(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $17, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	push %rax
	movq $0, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.continue
	jmp .L.end.282
.L.else.282:
.L.end.282:
.data
.L.str.281:
	.byte 91
	.byte 0
.text
	leaq .L.str.281(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.283
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -60(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.282:
	.byte 93
	.byte 0
.text
	leaq .L.str.282(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $7, %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.285
	movq $13, %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.285
	movq $1, %rax
	jmp .L.end.285
.L.false.285:
	movq $0, %rax
.L.end.285:
	cmpq $1, %rax
	jne .L.else.284
.data
.L.str.283:
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
	leaq .L.str.283(%rip), %rax
	push %rax
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.284
.L.else.284:
.L.end.284:
	leaq -52(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -100(%rbp), %rax
	push %rax
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -100(%rbp), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $20, %rax
	push %rax
	leaq new_struct_access_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.continue
	jmp .L.end.283
.L.else.283:
.L.end.283:
.data
.L.str.284:
	.byte 46
	.byte 0
.text
	leaq .L.str.284(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.286
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -36(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -28(%rbp), %rax
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
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $7, %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.287
	movq $5, %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.288
.data
.L.str.285:
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
	leaq .L.str.285(%rip), %rax
	push %rax
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.288
.L.else.288:
.L.end.288:
	leaq -20(%rbp), %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq search_struct_member(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.289
.data
.L.str.286:
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
	leaq .L.str.286(%rip), %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq unkown_member_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	jmp .L.end.289
.L.else.289:
.L.end.289:
	leaq -100(%rbp), %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $20, %rax
	push %rax
	leaq new_struct_access_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.287
.L.else.287:
	movq $5, %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.290
.data
.L.str.287:
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
	leaq .L.str.287(%rip), %rax
	push %rax
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.290
.L.else.290:
.L.end.290:
	leaq -20(%rbp), %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq search_struct_member(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.291
.data
.L.str.288:
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
	leaq .L.str.288(%rip), %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq unkown_member_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	jmp .L.end.291
.L.else.291:
.L.end.291:
.L.end.287:
	leaq -12(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -100(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -100(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $28, %rax
	push %rax
	leaq new_struct_access_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.continue
	jmp .L.end.286
.L.else.286:
.L.end.286:
	jmp .L.parse_unary.break
.L.parse_unary.continue:
	jmp .L.while.start.275
.L.while.end.275:
.L.parse_unary.break:
	leaq -100(%rbp), %rax
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
	leaq new_vec(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.292:
.data
.L.str.289:
	.byte 41
	.byte 0
.text
	leaq .L.str.289(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.292
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.290:
	.byte 44
	.byte 0
.text
	leaq .L.str.290(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.293
	jmp .L.parse_func_call_args.break
	jmp .L.end.293
.L.else.293:
.L.end.293:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.292
.L.while.end.292:
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
	leaq parse_logor(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.291:
	.byte 61
	.byte 0
.text
	leaq .L.str.291(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.294
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $17, %rax
	push %rax
	leaq new_binop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.294
.L.else.294:
.L.end.294:
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
.L.while.start.295:
.data
.L.str.292:
	.byte 41
	.byte 0
.text
	leaq .L.str.292(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.295
.data
.L.str.293:
	.byte 46
	.byte 46
	.byte 46
	.byte 0
.text
	leaq .L.str.293(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.296
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.296
.L.else.296:
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $13, %rax
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
	jne .L.else.297
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq new_pointer_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.297
.L.else.297:
.L.end.297:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.end.296:
.data
.L.str.294:
	.byte 44
	.byte 0
.text
	leaq .L.str.294(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.298
	jmp .L.parse_params_types.break
	jmp .L.end.298
.L.else.298:
.L.end.298:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.295
.L.while.end.295:
.L.parse_params_types.break:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_ty
parse_ty:
	push %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	leaq -37(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -29(%rbp), %rax
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
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.295:
	.byte 105
	.byte 54
	.byte 52
	.byte 0
.text
	leaq .L.str.295(%rip), %rax
	push %rax
	leaq -37(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.299
	leaq -21(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.299
.L.else.299:
.data
.L.str.296:
	.byte 105
	.byte 51
	.byte 50
	.byte 0
.text
	leaq .L.str.296(%rip), %rax
	push %rax
	leaq -37(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.300
	leaq -21(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.300
.L.else.300:
.data
.L.str.297:
	.byte 105
	.byte 49
	.byte 54
	.byte 0
.text
	leaq .L.str.297(%rip), %rax
	push %rax
	leaq -37(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.301
	leaq -21(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.301
.L.else.301:
.data
.L.str.298:
	.byte 105
	.byte 56
	.byte 0
.text
	leaq .L.str.298(%rip), %rax
	push %rax
	leaq -37(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.302
	leaq -21(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.302
.L.else.302:
.data
.L.str.299:
	.byte 117
	.byte 54
	.byte 52
	.byte 0
.text
	leaq .L.str.299(%rip), %rax
	push %rax
	leaq -37(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.303
	leaq -21(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $96, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.303
.L.else.303:
.data
.L.str.300:
	.byte 117
	.byte 51
	.byte 50
	.byte 0
.text
	leaq .L.str.300(%rip), %rax
	push %rax
	leaq -37(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.304
	leaq -21(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.304
.L.else.304:
.data
.L.str.301:
	.byte 117
	.byte 49
	.byte 54
	.byte 0
.text
	leaq .L.str.301(%rip), %rax
	push %rax
	leaq -37(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.305
	leaq -21(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.305
.L.else.305:
.data
.L.str.302:
	.byte 117
	.byte 56
	.byte 0
.text
	leaq .L.str.302(%rip), %rax
	push %rax
	leaq -37(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.306
	leaq -21(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.306
.L.else.306:
.data
.L.str.303:
	.byte 117
	.byte 48
	.byte 0
.text
	leaq .L.str.303(%rip), %rax
	push %rax
	leaq -37(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.307
	leaq -21(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.307
.L.else.307:
.data
.L.str.304:
	.byte 98
	.byte 111
	.byte 111
	.byte 108
	.byte 0
.text
	leaq .L.str.304(%rip), %rax
	push %rax
	leaq -37(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.308
	leaq -21(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.308
.L.else.308:
.data
.L.str.305:
	.byte 42
	.byte 0
.text
	leaq .L.str.305(%rip), %rax
	push %rax
	leaq -37(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.309
	leaq -21(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq new_pointer_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.309
.L.else.309:
.data
.L.str.306:
	.byte 102
	.byte 117
	.byte 110
	.byte 99
	.byte 0
.text
	leaq .L.str.306(%rip), %rax
	push %rax
	leaq -37(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.310
.data
.L.str.307:
	.byte 40
	.byte 0
.text
	leaq .L.str.307(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -13(%rbp), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_vec(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -5(%rbp), %rax
	push %rax
	leaq -13(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_params_types(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	pop %rdi
	movb %al, (%rdi)
.data
.L.str.308:
	.byte 41
	.byte 0
.text
	leaq .L.str.308(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -21(%rbp), %rax
	push %rax
	leaq -5(%rbp), %rax
	movsbl (%rax), %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq -13(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq new_func_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.310
.L.else.310:
.data
.L.str.309:
	.byte 91
	.byte 0
.text
	leaq .L.str.309(%rip), %rax
	push %rax
	leaq -37(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.311
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
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.312
.data
.L.str.310:
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
	.byte 0
.text
	leaq .L.str.310(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.312
.L.else.312:
.L.end.312:
	leaq -4(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
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
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.311:
	.byte 93
	.byte 0
.text
	leaq .L.str.311(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -21(%rbp), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_ty(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	push %rax
	leaq new_array_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.311
.L.else.311:
	leaq -21(%rbp), %rax
	push %rax
	leaq -37(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq get_user_defined_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -21(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.313
.data
.L.str.312:
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
	leaq .L.str.312(%rip), %rax
	push %rax
	leaq -29(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq unkown_type_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	jmp .L.end.313
.L.else.313:
.L.end.313:
.L.end.311:
.L.end.310:
.L.end.309:
.L.end.308:
.L.end.307:
.L.end.306:
.L.end.305:
.L.end.304:
.L.end.303:
.L.end.302:
.L.end.301:
.L.end.300:
.L.end.299:
	leaq -21(%rbp), %rax
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
	jne .L.else.314
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.314
.L.else.314:
.L.end.314:
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.315:
	leaq 24(%rbp), %rax
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
	jne .L.while.end.315
	leaq -8(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
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
	jmp .L.while.start.315
.L.while.end.315:
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
	jne .L.else.316
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.316
.L.else.316:
.L.end.316:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.317
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.317
.L.else.317:
.L.end.317:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type_block(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq add_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.318
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.319:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
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
	jne .L.while.end.319
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
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
	leaq add_type(%rip), %rax
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
	jmp .L.while.start.319
.L.while.end.319:
	jmp .L.end.318
.L.else.318:
.L.end.318:
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
	jne .L.else.320
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq new_pointer_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.320
.L.else.320:
.L.end.320:
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
	jne .L.else.321
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.321
.L.else.321:
.L.end.321:
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
	jne .L.true.330
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
	jne .L.true.330
	mov $0, %rax
	jmp .L.end.330
.L.true.330:
	mov $1, %rax
.L.end.330:
	cmpq $0, %rax
	jne .L.true.329
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
	jne .L.true.329
	mov $0, %rax
	jmp .L.end.329
.L.true.329:
	mov $1, %rax
.L.end.329:
	cmpq $0, %rax
	jne .L.true.328
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
	jne .L.true.328
	mov $0, %rax
	jmp .L.end.328
.L.true.328:
	mov $1, %rax
.L.end.328:
	cmpq $0, %rax
	jne .L.true.327
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
	jne .L.true.327
	mov $0, %rax
	jmp .L.end.327
.L.true.327:
	mov $1, %rax
.L.end.327:
	cmpq $0, %rax
	jne .L.true.326
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
	jne .L.true.326
	mov $0, %rax
	jmp .L.end.326
.L.true.326:
	mov $1, %rax
.L.end.326:
	cmpq $0, %rax
	jne .L.true.325
	movq $30, %rax
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
	jne .L.true.325
	mov $0, %rax
	jmp .L.end.325
.L.true.325:
	mov $1, %rax
.L.end.325:
	cmpq $0, %rax
	jne .L.true.324
	movq $31, %rax
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
	jne .L.true.324
	mov $0, %rax
	jmp .L.end.324
.L.true.324:
	mov $1, %rax
.L.end.324:
	cmpq $0, %rax
	jne .L.true.323
	movq $32, %rax
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
	jne .L.true.323
	mov $0, %rax
	jmp .L.end.323
.L.true.323:
	mov $1, %rax
.L.end.323:
	cmpq $1, %rax
	jne .L.else.322
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.322
.L.else.322:
.L.end.322:
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
	jne .L.true.342
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
	jne .L.true.342
	mov $0, %rax
	jmp .L.end.342
.L.true.342:
	mov $1, %rax
.L.end.342:
	cmpq $0, %rax
	jne .L.true.341
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
	jne .L.true.341
	mov $0, %rax
	jmp .L.end.341
.L.true.341:
	mov $1, %rax
.L.end.341:
	cmpq $0, %rax
	jne .L.true.340
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
	jne .L.true.340
	mov $0, %rax
	jmp .L.end.340
.L.true.340:
	mov $1, %rax
.L.end.340:
	cmpq $0, %rax
	jne .L.true.339
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
	jne .L.true.339
	mov $0, %rax
	jmp .L.end.339
.L.true.339:
	mov $1, %rax
.L.end.339:
	cmpq $0, %rax
	jne .L.true.338
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
	jne .L.true.338
	mov $0, %rax
	jmp .L.end.338
.L.true.338:
	mov $1, %rax
.L.end.338:
	cmpq $0, %rax
	jne .L.true.337
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
	jne .L.true.337
	mov $0, %rax
	jmp .L.end.337
.L.true.337:
	mov $1, %rax
.L.end.337:
	cmpq $0, %rax
	jne .L.true.336
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
	jne .L.true.336
	mov $0, %rax
	jmp .L.end.336
.L.true.336:
	mov $1, %rax
.L.end.336:
	cmpq $0, %rax
	jne .L.true.335
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
	jne .L.true.335
	mov $0, %rax
	jmp .L.end.335
.L.true.335:
	mov $1, %rax
.L.end.335:
	cmpq $0, %rax
	jne .L.true.334
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
	jne .L.true.334
	mov $0, %rax
	jmp .L.end.334
.L.true.334:
	mov $1, %rax
.L.end.334:
	cmpq $0, %rax
	jne .L.true.333
	movq $33, %rax
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
	jne .L.true.333
	mov $0, %rax
	jmp .L.end.333
.L.true.333:
	mov $1, %rax
.L.end.333:
	cmpq $0, %rax
	jne .L.true.332
	movq $34, %rax
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
	jne .L.true.332
	mov $0, %rax
	jmp .L.end.332
.L.true.332:
	mov $1, %rax
.L.end.332:
	cmpq $1, %rax
	jne .L.else.331
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
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
	jmp .L.end.331
.L.else.331:
.L.end.331:
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
	jne .L.else.343
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.343
.L.else.343:
.L.end.343:
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
	jne .L.else.344
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.345
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq new_pointer_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.345
.L.else.345:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	leaq new_pointer_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.345:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.344
.L.else.344:
.L.end.344:
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
	jne .L.else.346
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.346
.L.else.346:
.L.end.346:
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
	jne .L.else.347
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.347
.L.else.347:
.L.end.347:
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
	leaq check_local_object_already_exist(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
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
	jne .L.else.348
.data
.L.str.313:
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
	leaq .L.str.313(%rip), %rax
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
	jmp .L.end.348
.L.else.348:
.L.end.348:
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
	addq $16, %rax
	push %rax
	leaq 40(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $61, %rax
	push %rax
	leaq 56(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
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
.L.while.start.349:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.349
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.350
.data
.L.str.314:
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
	leaq .L.str.314(%rip), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error_with_code(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.315:
	.byte 46
	.byte 46
	.byte 46
	.byte 0
.text
	leaq .L.str.315(%rip), %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.351
.data
.L.str.316:
	.byte 104
	.byte 101
	.byte 108
	.byte 112
	.byte 58
	.byte 32
	.byte 98
	.byte 121
	.byte 32
	.byte 100
	.byte 101
	.byte 102
	.byte 97
	.byte 117
	.byte 108
	.byte 116
	.byte 44
	.byte 32
	.byte 118
	.byte 97
	.byte 114
	.byte 105
	.byte 97
	.byte 98
	.byte 108
	.byte 101
	.byte 45
	.byte 108
	.byte 101
	.byte 110
	.byte 103
	.byte 116
	.byte 104
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
	.byte 97
	.byte 114
	.byte 101
	.byte 32
	.byte 97
	.byte 99
	.byte 99
	.byte 101
	.byte 115
	.byte 115
	.byte 101
	.byte 100
	.byte 32
	.byte 117
	.byte 115
	.byte 105
	.byte 110
	.byte 103
	.byte 32
	.byte 116
	.byte 104
	.byte 101
	.byte 32
	.byte 98
	.byte 117
	.byte 105
	.byte 108
	.byte 116
	.byte 45
	.byte 105
	.byte 110
	.byte 32
	.byte 118
	.byte 97
	.byte 114
	.byte 105
	.byte 97
	.byte 98
	.byte 108
	.byte 101
	.byte 32
	.byte 96
	.byte 97
	.byte 114
	.byte 103
	.byte 118
	.byte 96
	.byte 32
	.byte 97
	.byte 110
	.byte 100
	.byte 32
	.byte 96
	.byte 97
	.byte 114
	.byte 103
	.byte 99
	.byte 96
	.byte 46
	.byte 10
	.byte 0
.text
	leaq .L.str.316(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.351
.L.else.351:
.L.end.351:
	movq $1, %rax
	push %rax
	leaq exit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.350
.L.else.350:
.L.end.350:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.349
.L.while.end.349:
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
.L.while.start.352:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.352
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.353
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.353
.L.else.353:
.L.end.353:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.352
.L.while.end.352:
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
.L.while.start.354:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.354
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.355
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.355
.L.else.355:
.L.end.355:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.354
.L.while.end.354:
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
	jne .L.else.356
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.356
.L.else.356:
.L.end.356:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.357:
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
	jne .L.while.end.357
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	leaq cmp_func_param(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.358
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.358
.L.else.358:
.L.end.358:
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
	jmp .L.while.start.357
.L.while.end.357:
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
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.359
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq cmp_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.359
	movq $1, %rax
	jmp .L.end.359
.L.false.359:
	movq $0, %rax
.L.end.359:
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global cmp_type_vec
cmp_type_vec:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
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
	jne .L.else.360
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.360
.L.else.360:
.L.end.360:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.361:
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
	jne .L.while.end.361
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	push %rax
	leaq cmp_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.362
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.362
.L.else.362:
.L.end.362:
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
	movq $1, %rax
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
	cmpq $0, %rax
	jne .L.true.364
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmp $0, %rax
	jne .L.true.364
	mov $0, %rax
	jmp .L.end.364
.L.true.364:
	mov $1, %rax
.L.end.364:
	cmpq $1, %rax
	jne .L.else.363
.data
.L.str.317:
	.byte 84
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
	.byte 10
	.byte 0
.text
	leaq .L.str.317(%rip), %rax
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
	jmp .L.end.363
.L.else.363:
.L.end.363:
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
	jne .L.else.365
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.365
.L.else.365:
.L.end.365:
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
	jne .L.else.366
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
	leaq cmp_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.368
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq cmp_type_vec(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.368
	movq $1, %rax
	jmp .L.end.368
.L.false.368:
	movq $0, %rax
.L.end.368:
	cmpq $0, %rax
	je .L.false.367
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movsbl (%rax), %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.367
	movq $1, %rax
	jmp .L.end.367
.L.false.367:
	movq $0, %rax
.L.end.367:
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.366
.L.else.366:
.L.end.366:
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
	jne .L.else.369
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq cmp_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.369
.L.else.369:
.L.end.369:
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
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.371
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	movsbl (%rax), %eax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.371
	movq $1, %rax
	jmp .L.end.371
.L.false.371:
	movq $0, %rax
.L.end.371:
	cmpq $0, %rax
	je .L.false.370
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
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $0, %rax
	je .L.false.370
	movq $1, %rax
	jmp .L.end.370
.L.false.370:
	movq $0, %rax
.L.end.370:
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
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.372
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.372
.L.else.372:
.data
.L.str.318:
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
	leaq .L.str.318(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq unexpected_token_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
.L.end.372:
	leave
	ret
.global new_node
new_node:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $120, %rax
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
	jne .L.else.373
.data
.L.str.319:
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
	leaq .L.str.319(%rip), %rax
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
	jmp .L.end.373
.L.else.373:
.L.end.373:
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
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.374
.data
.L.str.320:
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
	.byte 84
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
	.byte 0
.text
	leaq .L.str.320(%rip), %rax
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
	jmp .L.end.374
.L.else.374:
.L.end.374:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $64, %rax
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
	jne .L.else.375
.data
.L.str.321:
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
	leaq .L.str.321(%rip), %rax
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
	jmp .L.end.375
.L.else.375:
.L.end.375:
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
	leaq new_vec(%rip), %rax
	movq %rax, %r10
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
.L.str.322:
	.byte 105
	.byte 54
	.byte 52
	.byte 0
.text
	leaq .L.str.322(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq new_builtin_type(%rip), %rax
	movq %rax, %r10
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
.L.str.323:
	.byte 105
	.byte 51
	.byte 50
	.byte 0
.text
	leaq .L.str.323(%rip), %rax
	push %rax
	movq $4, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq new_builtin_type(%rip), %rax
	movq %rax, %r10
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
.L.str.324:
	.byte 105
	.byte 49
	.byte 54
	.byte 0
.text
	leaq .L.str.324(%rip), %rax
	push %rax
	movq $2, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq new_builtin_type(%rip), %rax
	movq %rax, %r10
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
.L.str.325:
	.byte 105
	.byte 56
	.byte 0
.text
	leaq .L.str.325(%rip), %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq new_builtin_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	push %rax
	movq $0, %rax
	push %rax
.data
.L.str.326:
	.byte 98
	.byte 111
	.byte 111
	.byte 108
	.byte 0
.text
	leaq .L.str.326(%rip), %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq new_builtin_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $96, %rax
	push %rax
	movq $1, %rax
	push %rax
.data
.L.str.327:
	.byte 117
	.byte 54
	.byte 52
	.byte 0
.text
	leaq .L.str.327(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq new_builtin_type(%rip), %rax
	movq %rax, %r10
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
.L.str.328:
	.byte 117
	.byte 51
	.byte 50
	.byte 0
.text
	leaq .L.str.328(%rip), %rax
	push %rax
	movq $4, %rax
	push %rax
	movq $9, %rax
	push %rax
	leaq new_builtin_type(%rip), %rax
	movq %rax, %r10
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
.L.str.329:
	.byte 117
	.byte 49
	.byte 54
	.byte 0
.text
	leaq .L.str.329(%rip), %rax
	push %rax
	movq $2, %rax
	push %rax
	movq $10, %rax
	push %rax
	leaq new_builtin_type(%rip), %rax
	movq %rax, %r10
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
.L.str.330:
	.byte 117
	.byte 56
	.byte 0
.text
	leaq .L.str.330(%rip), %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $11, %rax
	push %rax
	leaq new_builtin_type(%rip), %rax
	movq %rax, %r10
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
.L.str.331:
	.byte 117
	.byte 48
	.byte 0
.text
	leaq .L.str.331(%rip), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $12, %rax
	push %rax
	leaq new_builtin_type(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
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
	jne .L.else.376
.data
.L.str.332:
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
	leaq .L.str.332(%rip), %rax
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
	jmp .L.end.376
.L.else.376:
.L.end.376:
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
	addq $40, %rax
	push %rax
	leaq 32(%rbp), %rax
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
.global new_array_type
new_array_type:
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
	jne .L.else.377
.data
.L.str.333:
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
	leaq .L.str.333(%rip), %rax
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
	jmp .L.end.377
.L.else.377:
.L.end.377:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $13, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq 24(%rbp), %rax
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
.global new_pointer_type
new_pointer_type:
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
	jne .L.else.378
.data
.L.str.334:
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
	leaq .L.str.334(%rip), %rax
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
	jmp .L.end.378
.L.else.378:
.L.end.378:
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
	addq $48, %rax
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
	jne .L.else.379
.data
.L.str.335:
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
	leaq .L.str.335(%rip), %rax
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
	jmp .L.end.379
.L.else.379:
.L.end.379:
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
	addq $48, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
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
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.380:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
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
	jne .L.while.end.380
	leaq -8(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq strcmp(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movzx %al, %eax
	cmpq $1, %rax
	jne .L.else.381
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.381
.L.else.381:
.L.end.381:
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
	jmp .L.while.start.380
.L.while.end.380:
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
.L.while.start.382:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.382
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
	jne .L.else.383
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.383
.L.else.383:
.L.end.383:
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
	jne .L.else.384
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.384
.L.else.384:
.L.end.384:
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
	jmp .L.while.start.382
.L.while.end.382:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global unkown_member_error
unkown_member_error:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error_with_code(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.385
	movq $1, %rax
	push %rax
	leaq exit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.385
.L.else.385:
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.386
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.336:
	.byte 104
	.byte 101
	.byte 108
	.byte 112
	.byte 58
	.byte 32
	.byte 37
	.byte 100
	.byte 32
	.byte 112
	.byte 111
	.byte 115
	.byte 115
	.byte 105
	.byte 98
	.byte 105
	.byte 108
	.byte 105
	.byte 116
	.byte 121
	.byte 58
	.byte 0
.text
	leaq .L.str.336(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	jmp .L.end.386
.L.else.386:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.337:
	.byte 104
	.byte 101
	.byte 108
	.byte 112
	.byte 58
	.byte 32
	.byte 37
	.byte 100
	.byte 32
	.byte 112
	.byte 111
	.byte 115
	.byte 115
	.byte 105
	.byte 98
	.byte 105
	.byte 108
	.byte 105
	.byte 116
	.byte 105
	.byte 101
	.byte 115
	.byte 58
	.byte 0
.text
	leaq .L.str.337(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.L.end.386:
.L.end.385:
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.387:
	leaq 16(%rbp), %rax
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
	jne .L.while.end.387
	leaq -8(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.388
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.338:
	.byte 32
	.byte 96
	.byte 37
	.byte 115
	.byte 96
	.byte 44
	.byte 0
.text
	leaq .L.str.338(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	jmp .L.end.388
.L.else.388:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.339:
	.byte 32
	.byte 96
	.byte 37
	.byte 115
	.byte 96
	.byte 0
.text
	leaq .L.str.339(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.L.end.388:
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
	jmp .L.while.start.387
.L.while.end.387:
.data
.L.str.340:
	.byte 10
	.byte 0
.text
	leaq .L.str.340(%rip), %rax
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
	leave
	ret
.global unkown_type_error
unkown_type_error:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error_with_code(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.389
	movq $1, %rax
	push %rax
	leaq exit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.389
.L.else.389:
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.390
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.341:
	.byte 104
	.byte 101
	.byte 108
	.byte 112
	.byte 58
	.byte 32
	.byte 37
	.byte 100
	.byte 32
	.byte 112
	.byte 111
	.byte 115
	.byte 115
	.byte 105
	.byte 98
	.byte 105
	.byte 108
	.byte 105
	.byte 116
	.byte 121
	.byte 58
	.byte 0
.text
	leaq .L.str.341(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	jmp .L.end.390
.L.else.390:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.342:
	.byte 104
	.byte 101
	.byte 108
	.byte 112
	.byte 58
	.byte 32
	.byte 37
	.byte 100
	.byte 32
	.byte 112
	.byte 111
	.byte 115
	.byte 115
	.byte 105
	.byte 98
	.byte 105
	.byte 108
	.byte 105
	.byte 116
	.byte 105
	.byte 101
	.byte 115
	.byte 58
	.byte 0
.text
	leaq .L.str.342(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.L.end.390:
.L.end.389:
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.391:
	leaq 16(%rbp), %rax
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
	jne .L.while.end.391
	leaq -8(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.392
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.343:
	.byte 32
	.byte 96
	.byte 37
	.byte 115
	.byte 96
	.byte 44
	.byte 0
.text
	leaq .L.str.343(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	jmp .L.end.392
.L.else.392:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.344:
	.byte 32
	.byte 96
	.byte 37
	.byte 115
	.byte 96
	.byte 0
.text
	leaq .L.str.344(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.L.end.392:
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
	jmp .L.while.start.391
.L.while.end.391:
.data
.L.str.345:
	.byte 10
	.byte 0
.text
	leaq .L.str.345(%rip), %rax
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
	leave
	ret
.global unexpected_token_error
unexpected_token_error:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error_with_code(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $2
.data
.L.str.346:
	.byte 104
	.byte 101
	.byte 108
	.byte 112
	.byte 58
	.byte 32
	.byte 101
	.byte 120
	.byte 112
	.byte 101
	.byte 99
	.byte 116
	.byte 101
	.byte 100
	.byte 32
	.byte 96
	.byte 37
	.byte 115
	.byte 96
	.byte 32
	.byte 98
	.byte 117
	.byte 116
	.byte 32
	.byte 103
	.byte 111
	.byte 116
	.byte 32
	.byte 96
	.byte 37
	.byte 115
	.byte 96
	.byte 10
	.byte 0
.text
	leaq .L.str.346(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $40, %rsp
	movq $1, %rax
	push %rax
	leaq exit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
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
.L.while.start.393:
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
	jne .L.while.end.393
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
	jne .L.else.394
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
	jmp .L.end.394
.L.else.394:
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
	jne .L.else.395
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
	jmp .L.end.395
.L.else.395:
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
	jne .L.else.396
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
	jmp .L.end.396
.L.else.396:
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
	jne .L.else.397
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
	jmp .L.end.397
.L.else.397:
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
	jne .L.else.398
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.398
.L.else.398:
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
	jne .L.else.399
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.399
.L.else.399:
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
	jne .L.else.400
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.400
.L.else.400:
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
	jne .L.else.401
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
	jmp .L.end.401
.L.else.401:
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
.L.str.347:
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
	leaq .L.str.347(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.end.401:
.L.end.400:
.L.end.399:
.L.end.398:
.L.end.397:
.L.end.396:
.L.end.395:
.L.end.394:
	jmp .L.while.start.393
.L.while.end.393:
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
.L.str.348:
	.byte 69
	.byte 79
	.byte 70
	.byte 0
.text
	leaq .L.str.348(%rip), %rax
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
.L.while.start.402:
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
	jne .L.true.404
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
	jne .L.true.404
	mov $0, %rax
	jmp .L.end.404
.L.true.404:
	mov $1, %rax
.L.end.404:
	cmpq $0, %rax
	jne .L.true.403
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
	jne .L.true.403
	mov $0, %rax
	jmp .L.end.403
.L.true.403:
	mov $1, %rax
.L.end.403:
	cmpq $1, %rax
	jne .L.while.end.402
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.402
.L.while.end.402:
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
	jne .L.else.405
.data
.L.str.349:
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
	leaq .L.str.349(%rip), %rax
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
	jmp .L.end.405
.L.else.405:
.L.end.405:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.406:
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
	jne .L.while.end.406
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
	jne .L.else.407
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
	pop %rdi
	movb %al, (%rdi)
	jmp .L.end.407
.L.else.407:
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
.L.end.407:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.406
.L.while.end.406:
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
	leaq -20(%rbp), %rax
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
	leaq -12(%rbp), %rax
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
	jne .L.else.408
	leaq -4(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq read_escaped_char(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.408
.L.else.408:
	leaq -4(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	movl %eax, (%rdi)
.L.end.408:
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strndup(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq -12(%rbp), %rax
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -20(%rbp), %rax
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
.L.while.start.409:
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
	jne .L.while.end.409
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.409
.L.while.end.409:
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
	je .L.false.411
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
	je .L.false.411
	movq $1, %rax
	jmp .L.end.411
.L.false.411:
	movq $0, %rax
.L.end.411:
	cmpq $1, %rax
	jne .L.else.410
	leaq -4(%rbp), %rax
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
	movl %eax, (%rdi)
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
	je .L.false.413
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
	je .L.false.413
	movq $1, %rax
	jmp .L.end.413
.L.false.413:
	movq $0, %rax
.L.end.413:
	cmpq $1, %rax
	jne .L.else.412
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -4(%rbp), %rax
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
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movq %rdi, %rcx
	shl %cl, %eax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
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
	je .L.false.415
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
	je .L.false.415
	movq $1, %rax
	jmp .L.end.415
.L.false.415:
	movq $0, %rax
.L.end.415:
	cmpq $1, %rax
	jne .L.else.414
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -4(%rbp), %rax
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
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movq %rdi, %rcx
	shl %cl, %eax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.414
.L.else.414:
.L.end.414:
	jmp .L.end.412
.L.else.412:
.L.end.412:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.410
.L.else.410:
.L.end.410:
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
	jne .L.else.416
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
	jne .L.else.417
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
.L.str.350:
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
	leaq .L.str.350(%rip), %rax
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
	jmp .L.end.417
.L.else.417:
.L.end.417:
.L.while.start.418:
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
	jne .L.while.end.418
	leaq -4(%rbp), %rax
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
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movq %rdi, %rcx
	shl %cl, %eax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.418
.L.while.end.418:
	jmp .L.end.416
.L.else.416:
.L.end.416:
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
	jne .L.else.419
	movq $7, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.419
.L.else.419:
.L.end.419:
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
	jne .L.else.420
	movq $8, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.420
.L.else.420:
.L.end.420:
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
	jne .L.else.421
	movq $9, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.421
.L.else.421:
.L.end.421:
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
	jne .L.else.422
	movq $10, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.422
.L.else.422:
.L.end.422:
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
	jne .L.else.423
	movq $11, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.423
.L.else.423:
.L.end.423:
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
	jne .L.else.424
	movq $12, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.424
.L.else.424:
.L.end.424:
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
	jne .L.else.425
	movq $13, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.425
.L.else.425:
.L.end.425:
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
	je .L.false.427
	movq $57, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.427
	movq $1, %rax
	jmp .L.end.427
.L.false.427:
	movq $0, %rax
.L.end.427:
	cmpq $1, %rax
	jne .L.else.426
	movq $48, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	subl %edi, %eax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.426
.L.else.426:
.L.end.426:
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	push %rax
	movq $97, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.429
	movq $102, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.429
	movq $1, %rax
	jmp .L.end.429
.L.false.429:
	movq $0, %rax
.L.end.429:
	cmpq $1, %rax
	jne .L.else.428
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
	jmp .L.end.428
.L.else.428:
.L.end.428:
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
	je .L.false.432
	movq $57, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.432
	movq $1, %rax
	jmp .L.end.432
.L.false.432:
	movq $0, %rax
.L.end.432:
	cmpq $0, %rax
	jne .L.true.431
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	push %rax
	movq $65, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.433
	movq $70, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.433
	movq $1, %rax
	jmp .L.end.433
.L.false.433:
	movq $0, %rax
.L.end.433:
	cmp $0, %rax
	jne .L.true.431
	mov $0, %rax
	jmp .L.end.431
.L.true.431:
	mov $1, %rax
.L.end.431:
	cmpq $0, %rax
	jne .L.true.430
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	push %rax
	movq $97, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.434
	movq $102, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.434
	movq $1, %rax
	jmp .L.end.434
.L.false.434:
	movq $0, %rax
.L.end.434:
	cmp $0, %rax
	jne .L.true.430
	mov $0, %rax
	jmp .L.end.430
.L.true.430:
	mov $1, %rax
.L.end.430:
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
.L.while.start.435:
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
	jne .L.while.end.435
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
	jne .L.true.437
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
	jne .L.true.437
	mov $0, %rax
	jmp .L.end.437
.L.true.437:
	mov $1, %rax
.L.end.437:
	cmpq $1, %rax
	jne .L.else.436
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
.L.str.351:
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
	leaq .L.str.351(%rip), %rax
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
	jmp .L.end.436
.L.else.436:
.L.end.436:
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
	jne .L.else.438
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
	jmp .L.end.438
.L.else.438:
.L.end.438:
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
	jmp .L.while.start.435
.L.while.end.435:
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
.L.str.352:
	.byte 47
	.byte 47
	.byte 0
.text
	leaq .L.str.352(%rip), %rax
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
	jne .L.else.439
.L.while.start.440:
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
	je .L.false.441
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
	je .L.false.441
	movq $1, %rax
	jmp .L.end.441
.L.false.441:
	movq $0, %rax
.L.end.441:
	cmpq $1, %rax
	jne .L.while.end.440
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.while.start.440
.L.while.end.440:
	jmp .L.end.439
.L.else.439:
.L.end.439:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
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
.L.while.start.442:
	movq $34, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.442
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
	jne .L.else.443
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
	jmp .L.end.443
.L.else.443:
.L.end.443:
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
	jmp .L.while.start.442
.L.while.end.442:
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
	jne .L.else.444
.data
.L.str.353:
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
	leaq .L.str.353(%rip), %rax
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
	jmp .L.end.444
.L.else.444:
.L.end.444:
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
.L.while.start.445:
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
	jne .L.while.end.445
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
	jmp .L.while.start.445
.L.while.end.445:
	movq $0, %rax
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
	addq $24, %rax
	movq (%rax), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.446
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
	jmp .L.end.446
.L.else.446:
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
.L.end.446:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
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
.L.while.start.447:
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
	jne .L.while.end.447
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
	jne .L.else.448
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.448
.L.else.448:
.L.end.448:
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
	jmp .L.while.start.447
.L.while.end.447:
	movq $1, %rax
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
	jne .L.else.449
.data
.L.str.354:
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
	leaq .L.str.354(%rip), %rax
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
	jmp .L.end.449
.L.else.449:
.L.end.449:
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
.L.str.355:
	.byte 61
	.byte 61
	.byte 0
.text
	leaq .L.str.355(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.356:
	.byte 60
	.byte 61
	.byte 0
.text
	leaq .L.str.356(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $16, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.357:
	.byte 62
	.byte 61
	.byte 0
.text
	leaq .L.str.357(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $24, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.358:
	.byte 33
	.byte 61
	.byte 0
.text
	leaq .L.str.358(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $32, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.359:
	.byte 43
	.byte 43
	.byte 0
.text
	leaq .L.str.359(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $40, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.360:
	.byte 45
	.byte 45
	.byte 0
.text
	leaq .L.str.360(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $48, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.361:
	.byte 124
	.byte 124
	.byte 0
.text
	leaq .L.str.361(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $56, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.362:
	.byte 38
	.byte 38
	.byte 0
.text
	leaq .L.str.362(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $64, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.363:
	.byte 60
	.byte 60
	.byte 0
.text
	leaq .L.str.363(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $72, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.364:
	.byte 62
	.byte 62
	.byte 0
.text
	leaq .L.str.364(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $80, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.365:
	.byte 46
	.byte 46
	.byte 46
	.byte 0
.text
	leaq .L.str.365(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $88, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.366:
	.byte 43
	.byte 0
.text
	leaq .L.str.366(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $96, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.367:
	.byte 45
	.byte 0
.text
	leaq .L.str.367(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $104, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.368:
	.byte 60
	.byte 0
.text
	leaq .L.str.368(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $112, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.369:
	.byte 62
	.byte 0
.text
	leaq .L.str.369(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $120, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.370:
	.byte 59
	.byte 0
.text
	leaq .L.str.370(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $128, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.371:
	.byte 58
	.byte 0
.text
	leaq .L.str.371(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $136, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.372:
	.byte 123
	.byte 0
.text
	leaq .L.str.372(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $144, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.373:
	.byte 125
	.byte 0
.text
	leaq .L.str.373(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $152, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.374:
	.byte 61
	.byte 0
.text
	leaq .L.str.374(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $160, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.375:
	.byte 44
	.byte 0
.text
	leaq .L.str.375(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $168, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.376:
	.byte 40
	.byte 0
.text
	leaq .L.str.376(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $176, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.377:
	.byte 41
	.byte 0
.text
	leaq .L.str.377(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $184, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.378:
	.byte 91
	.byte 0
.text
	leaq .L.str.378(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $192, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.379:
	.byte 93
	.byte 0
.text
	leaq .L.str.379(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $200, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.380:
	.byte 46
	.byte 0
.text
	leaq .L.str.380(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $208, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.381:
	.byte 42
	.byte 0
.text
	leaq .L.str.381(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $216, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.382:
	.byte 35
	.byte 0
.text
	leaq .L.str.382(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $224, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.383:
	.byte 33
	.byte 0
.text
	leaq .L.str.383(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $232, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.384:
	.byte 37
	.byte 0
.text
	leaq .L.str.384(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $240, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.385:
	.byte 38
	.byte 0
.text
	leaq .L.str.385(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $248, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.386:
	.byte 47
	.byte 0
.text
	leaq .L.str.386(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $256, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.387:
	.byte 124
	.byte 0
.text
	leaq .L.str.387(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $264, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.388:
	.byte 38
	.byte 0
.text
	leaq .L.str.388(%rip), %rax
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
.L.str.389:
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
	leaq .L.str.389(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $48, %rsp
.data
.L.str.390:
	.byte 32
	.byte 124
	.byte 32
	.byte 10
	.byte 0
.text
	leaq .L.str.390(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.391:
	.byte 32
	.byte 124
	.byte 32
	.byte 0
.text
	leaq .L.str.391(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.while.start.450:
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
	je .L.false.451
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
	je .L.false.451
	movq $1, %rax
	jmp .L.end.451
.L.false.451:
	movq $0, %rax
.L.end.451:
	cmpq $1, %rax
	jne .L.while.end.450
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
	jne .L.else.452
	movq $1, %rax
	push %rax
.data
.L.str.392:
	.byte 32
	.byte 0
.text
	leaq .L.str.392(%rip), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq write(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	jmp .L.end.452
.L.else.452:
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
.L.end.452:
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
	jmp .L.while.start.450
.L.while.end.450:
.data
.L.str.393:
	.byte 10
	.byte 0
.text
	leaq .L.str.393(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.394:
	.byte 32
	.byte 124
	.byte 32
	.byte 0
.text
	leaq .L.str.394(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.395:
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
	leaq .L.str.395(%rip), %rax
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
.L.str.396:
	.byte 32
	.byte 0
.text
	leaq .L.str.396(%rip), %rax
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
.L.str.397:
	.byte 94
	.byte 0
.text
	leaq .L.str.397(%rip), %rax
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
.L.str.398:
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
	leaq .L.str.398(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.data
.L.str.399:
	.byte 32
	.byte 124
	.byte 32
	.byte 10
	.byte 0
.text
	leaq .L.str.399(%rip), %rax
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
.L.while.start.453:
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
	jne .L.while.end.453
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
	jmp .L.while.start.453
.L.while.end.453:
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
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
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
	addq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
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
	jne .L.else.454
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_realloc(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.454
.L.else.454:
.L.end.454:
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
	movq %rbp, %rsp
	pop %rbp
	retq
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
	jne .L.else.455
.data
.L.str.400:
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
	leaq .L.str.400(%rip), %rax
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
	jmp .L.end.455
.L.else.455:
.L.end.455:
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
	jne .L.else.456
.data
.L.str.401:
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
	leaq .L.str.401(%rip), %rax
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
	jmp .L.end.456
.L.else.456:
.L.end.456:
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
	jne .L.else.457
.data
.L.str.402:
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
	leaq .L.str.402(%rip), %rax
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
	jmp .L.end.457
.L.else.457:
.L.end.457:
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
	movq %rbp, %rsp
	pop %rbp
	retq
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
	movq %rbp, %rsp
	pop %rbp
	retq
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
	movq %rbp, %rsp
	pop %rbp
	retq
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
	movq %rbp, %rsp
	pop %rbp
	retq
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
.L.while.start.458:
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
	jne .L.while.end.458
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
	jne .L.else.459
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
	jne .L.else.460
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
	jmp .L.end.460
.L.else.460:
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
	jne .L.else.461
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
	jmp .L.end.461
.L.else.461:
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
.L.end.461:
.L.end.460:
	jmp .L.end.459
.L.else.459:
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
.L.end.459:
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
	jmp .L.while.start.458
.L.while.end.458:
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
	movq %rbp, %rsp
	pop %rbp
	retq
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
.L.while.start.462:
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
	jne .L.while.end.462
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
	jne .L.else.463
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
	jne .L.else.464
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
	jmp .L.end.464
.L.else.464:
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
	jne .L.else.465
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
	jne .L.else.466
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.403:
	.byte 40
	.byte 110
	.byte 105
	.byte 108
	.byte 41
	.byte 0
.text
	leaq .L.str.403(%rip), %rax
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
	jmp .L.end.466
.L.else.466:
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.404:
	.byte 48
	.byte 120
	.byte 0
.text
	leaq .L.str.404(%rip), %rax
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
.L.end.466:
	jmp .L.end.465
.L.else.465:
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
	jne .L.else.467
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
	jmp .L.end.467
.L.else.467:
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
	jne .L.else.468
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
	jmp .L.end.468
.L.else.468:
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
	jne .L.else.469
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
	jmp .L.end.469
.L.else.469:
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
	jne .L.else.470
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
	jmp .L.end.470
.L.else.470:
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
	jne .L.else.471
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
	jmp .L.end.471
.L.else.471:
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
	jne .L.else.472
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
	jne .L.else.473
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.405:
	.byte 45
	.byte 0
.text
	leaq .L.str.405(%rip), %rax
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
	jmp .L.end.473
.L.else.473:
.L.end.473:
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
	jmp .L.end.472
.L.else.472:
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
.L.end.472:
.L.end.471:
.L.end.470:
.L.end.469:
.L.end.468:
.L.end.467:
.L.end.465:
.L.end.464:
	jmp .L.end.463
.L.else.463:
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
.L.end.463:
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
	jmp .L.while.start.462
.L.while.end.462:
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
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
	jne .L.else.474
.data
.L.str.406:
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
	leaq .L.str.406(%rip), %rax
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
	jmp .L.end.474
.L.else.474:
.L.end.474:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
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
	jne .L.else.475
	leaq -4(%rbp), %rax
	push %rax
	leaq 40(%rbp), %rax
	movsbl (%rax), %eax
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
	jmp .L.end.475
.L.else.475:
.L.end.475:
	leaq 40(%rbp), %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.476
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
.L.str.407:
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
	leaq .L.str.407(%rip), %rax
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
	jmp .L.end.476
.L.else.476:
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
.L.str.408:
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
	leaq .L.str.408(%rip), %rax
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
.L.end.476:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
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
	leaq -9(%rbp), %rax
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
	jne .L.else.477
	movq $1, %rax
	push %rax
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
	leaq -9(%rbp), %rax
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
	jmp .L.end.477
.L.else.477:
.L.end.477:
	leaq -5(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.478
	leaq -5(%rbp), %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
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
	jmp .L.end.478
.L.else.478:
.L.end.478:
.L.while.start.479:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.479
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
	jne .L.else.480
	movq $1, %rax
	push %rax
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
	jmp .L.end.480
.L.else.480:
	movq $1, %rax
	push %rax
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
.L.end.480:
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
	jmp .L.while.start.479
.L.while.end.479:
	leaq -5(%rbp), %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.481
	movq $1, %rax
	push %rax
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
	jmp .L.end.481
.L.else.481:
.L.end.481:
	leaq -9(%rbp), %rax
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
	leaq -9(%rbp), %rax
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
	leaq -9(%rbp), %rax
	movslq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
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
.L.while.start.482:
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
	jne .L.while.end.482
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
	jmp .L.while.start.482
.L.while.end.482:
	leave
	ret
.global atoi
atoi:
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
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -1(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	movq $45, %rax
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
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.483
	leaq -1(%rbp), %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
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
	jmp .L.end.483
.L.else.483:
.L.end.483:
.L.while.start.484:
	movq $0, %rax
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
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.484
	leaq -5(%rbp), %rax
	push %rax
	movq $48, %rax
	push %rax
	movq $1, %rax
	push %rax
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
	leaq -5(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.while.start.484
.L.while.end.484:
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.485
	leaq -5(%rbp), %rax
	push %rax
	leaq -5(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.485
.L.else.485:
.L.end.485:
	leaq -5(%rbp), %rax
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
	movzbl (%rax), %eax
	push %rax
	movq $48, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.487
	movq $57, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.487
	movq $1, %rax
	jmp .L.end.487
.L.false.487:
	movq $0, %rax
.L.end.487:
	cmpq $1, %rax
	jne .L.else.486
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.486
.L.else.486:
.L.end.486:
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
	movzbl (%rax), %eax
	push %rax
	movq $65, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.490
	movq $90, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.490
	movq $1, %rax
	jmp .L.end.490
.L.false.490:
	movq $0, %rax
.L.end.490:
	cmpq $0, %rax
	jne .L.true.489
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	push %rax
	movq $97, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.491
	movq $122, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.491
	movq $1, %rax
	jmp .L.end.491
.L.false.491:
	movq $0, %rax
.L.end.491:
	cmp $0, %rax
	jne .L.true.489
	mov $0, %rax
	jmp .L.end.489
.L.true.489:
	mov $1, %rax
.L.end.489:
	cmpq $1, %rax
	jne .L.else.488
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.488
.L.else.488:
.L.end.488:
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
.L.while.start.492:
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
	jne .L.while.end.492
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
	jmp .L.while.start.492
.L.while.end.492:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
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
.L.while.start.493:
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
	jne .L.while.end.493
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
	jne .L.else.494
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.494
.L.else.494:
.L.end.494:
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
	jmp .L.while.start.493
.L.while.end.493:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
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
	je .L.false.496
	movq $90, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.496
	movq $1, %rax
	jmp .L.end.496
.L.false.496:
	movq $0, %rax
.L.end.496:
	cmpq $1, %rax
	jne .L.else.495
	movq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	subl %edi, %eax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.495
.L.else.495:
.L.end.495:
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	movq %rbp, %rsp
	pop %rbp
	retq
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
	je .L.false.498
	movq $90, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setbe %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.498
	movq $1, %rax
	jmp .L.end.498
.L.false.498:
	movq $0, %rax
.L.end.498:
	cmpq $1, %rax
	jne .L.else.497
	movq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	pop %rdi
	addl %edi, %eax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.497
.L.else.497:
.L.end.497:
	leaq 16(%rbp), %rax
	movzbl (%rax), %eax
	movq %rbp, %rsp
	pop %rbp
	retq
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
	jne .L.else.499
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.499
.L.else.499:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.500:
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
	jne .L.while.end.500
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
	jmp .L.while.start.500
.L.while.end.500:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.501:
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
	jne .L.while.end.501
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
	jmp .L.while.start.501
.L.while.end.501:
.L.end.499:
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
.L.while.start.502:
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
	jne .L.while.end.502
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
	jne .L.else.503
.data
.L.str.409:
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
	leaq .L.str.409(%rip), %rax
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
	jmp .L.end.503
.L.else.503:
.L.end.503:
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
	jmp .L.while.start.502
.L.while.end.502:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
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
	movq %rbp, %rsp
	pop %rbp
	retq
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
.L.while.start.504:
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
	jne .L.while.end.504
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
	jmp .L.while.start.504
.L.while.end.504:
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
.global readlink
readlink:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $89, %rax
	push %rax
	leaq syscall(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
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
	leaq syscall(%rip), %rax
	movq %rax, %r10
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
	leaq syscall(%rip), %rax
	movq %rax, %r10
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
	leaq syscall(%rip), %rax
	movq %rax, %r10
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
	leaq syscall(%rip), %rax
	movq %rax, %r10
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
	leaq syscall(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
