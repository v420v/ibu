.text
.global has_main
has_main:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.L.while.start.1:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.1
.data
.L.str.1:
	.byte 109
	.byte 97
	.byte 105
	.byte 110
	.byte 0
.text
	leaq .L.str.1(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.2
	movq $1, %rax
	leave
	ret
	jmp .L.end.2
.L.else.2:
.L.end.2:
	leaq 16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.1
.L.while.end.1:
	movq $0, %rax
	leave
	ret
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
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.3
	movq $16, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movslq (%rax), %rax
	push %rax
	leaq align_to(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leave
	ret
	jmp .L.end.3
.L.else.3:
.L.end.3:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.4
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
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
	addq $20, %rax
	movslq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movslq (%rax), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.4
.L.else.4:
.L.end.4:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.5
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
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
	jmp .L.end.5
.L.else.5:
.L.end.5:
	movq $16, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movslq (%rax), %rax
	push %rax
	leaq align_to(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leave
	ret
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
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.6
	movq $0, %rax
	leave
	ret
	jmp .L.end.6
.L.else.6:
.L.end.6:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.7
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
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
	jmp .L.end.7
.L.else.7:
.L.end.7:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movslq (%rax), %rax
	cmpq $1, %rax
	jne .L.else.8
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
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movslq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.8
.L.else.8:
.L.end.8:
	movq $0, %rax
	leave
	ret
	leave
	ret
.global gen_jmp_table
gen_jmp_table:
	push %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	leaq -44(%rbp), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
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
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $88, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
.data
.L.str.2:
	.byte 46
	.byte 100
	.byte 97
	.byte 116
	.byte 97
	.byte 10
	.byte 0
.text
	leaq .L.str.2(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.3:
	.byte 46
	.byte 76
	.byte 46
	.byte 106
	.byte 117
	.byte 109
	.byte 112
	.byte 95
	.byte 116
	.byte 97
	.byte 98
	.byte 108
	.byte 101
	.byte 46
	.byte 37
	.byte 100
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.3(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq -32(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.9:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.9
	leaq -28(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -20(%rbp), %rax
	push %rax
	movq $40, %rax
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
	addq $64, %rax
	movq (%rax), %rax
	addq $88, %rax
	movslq (%rax), %rax
	push %rax
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $2
.data
.L.str.4:
	.byte 46
	.byte 76
	.byte 46
	.byte 99
	.byte 97
	.byte 115
	.byte 101
	.byte 46
	.byte 37
	.byte 100
	.byte 46
	.byte 37
	.byte 100
	.byte 0
.text
	leaq .L.str.4(%rip), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq sprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $48, %rsp
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -32(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.10
	leaq -12(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -32(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq vec_get(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $88, %rax
	movslq (%rax), %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $88, %rax
	movslq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.5:
	.byte 9
	.byte 46
	.byte 114
	.byte 101
	.byte 112
	.byte 116
	.byte 32
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.5(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.data
.L.str.6:
	.byte 9
	.byte 46
	.byte 113
	.byte 117
	.byte 97
	.byte 100
	.byte 32
	.byte 48
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
	.byte 46
	.byte 101
	.byte 110
	.byte 100
	.byte 114
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
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.8:
	.byte 9
	.byte 46
	.byte 113
	.byte 117
	.byte 97
	.byte 100
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.8(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	jmp .L.end.10
.L.else.10:
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.9:
	.byte 9
	.byte 46
	.byte 113
	.byte 117
	.byte 97
	.byte 100
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.9(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.L.end.10:
	movq $1, %rax
	push %rax
	leaq -32(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -32(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.9
.L.while.end.9:
.data
.L.str.10:
	.byte 46
	.byte 116
	.byte 101
	.byte 120
	.byte 116
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
	leaq -36(%rbp), %rax
	movslq (%rax), %rax
	leave
	ret
	leave
	ret
.global sort_switch_cases
sort_switch_cases:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq -24(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.11:
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.11
	leaq -20(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.12:
	movq $1, %rax
	push %rax
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.12
	leaq -16(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
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
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
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
	addq $64, %rax
	movq (%rax), %rax
	addq $88, %rax
	movslq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $88, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setg %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.13
	movq $8, %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imulq %rdi, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	imulq %rdi, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.13
.L.else.13:
.L.end.13:
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.12
.L.while.end.12:
	movq $1, %rax
	push %rax
	leaq -24(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.11
.L.while.end.11:
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
.L.while.start.14:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.14
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
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.14
.L.while.end.14:
	movq $0, %rax
	leave
	ret
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
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.15
	movq $0, %rax
	leave
	ret
	jmp .L.end.15
.L.else.15:
.L.end.15:
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
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.16:
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	cmpq %rdi, %rax
	setle %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.16
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
.L.str.11:
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 0
.text
	leaq .L.str.11(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_push(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -20(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je .L.false.18
	movq $2, %rax
	push %rax
	leaq 32(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
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
	subq %rdi, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setg %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.19
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
	subq %rdi, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.19
.L.else.19:
.L.end.19:
.data
.L.str.12:
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
	leaq .L.str.12(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.13:
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 0
.text
	leaq .L.str.13(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_push(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_push_num(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -20(%rbp), %rax
	push %rax
	movq $16, %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.17
.L.else.17:
.L.end.17:
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	addq %rdi, %rax
	jmp .L.while.start.16
.L.while.end.16:
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	leave
	ret
	leave
	ret
.global gen_condition_store
gen_condition_store:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.data
.L.str.14:
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
	leaq .L.str.14(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
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
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	jne .L.true.22
	movq $13, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmp $0, %rax
	jne .L.true.22
	mov $0, %rax
	jmp .L.end.22
.L.true.22:
	mov $1, %rax
.L.end.22:
	cmpq $0, %rax
	jne .L.true.21
	movq $6, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmp $0, %rax
	jne .L.true.21
	mov $0, %rax
	jmp .L.end.21
.L.true.21:
	mov $1, %rax
.L.end.21:
	cmpq $1, %rax
	jne .L.else.20
	movq $0, %rax
	leave
	ret
	jmp .L.end.20
.L.else.20:
.L.end.20:
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.23
.data
.L.str.15:
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
	leaq .L.str.15(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.23
.L.else.23:
	movq $4, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.24
.data
.L.str.16:
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
	leaq .L.str.16(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.24
.L.else.24:
	movq $2, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.25
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	movslq (%rax), %rax
	cmpq $1, %rax
	jne .L.else.26
.data
.L.str.17:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 119
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
	leaq .L.str.17(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.26
.L.else.26:
.data
.L.str.18:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 115
	.byte 119
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
	leaq .L.str.18(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.26:
	jmp .L.end.25
.L.else.25:
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.27
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	movslq (%rax), %rax
	cmpq $1, %rax
	jne .L.else.28
.data
.L.str.19:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 98
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
	leaq .L.str.19(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.28
.L.else.28:
.data
.L.str.20:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 115
	.byte 98
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
	leaq .L.str.20(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.28:
	jmp .L.end.27
.L.else.27:
.data
.L.str.21:
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
	leaq .L.str.21(%rip), %rax
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
.L.end.27:
.L.end.25:
.L.end.24:
.L.end.23:
	movq $0, %rax
	leave
	ret
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
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.29
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.30:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.30
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.22:
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
	leaq .L.str.22(%rip), %rax
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
.L.str.23:
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
	leaq .L.str.23(%rip), %rax
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
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.30
.L.while.end.30:
	movq $0, %rax
	leave
	ret
	jmp .L.end.29
.L.else.29:
.L.end.29:
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.31
.data
.L.str.24:
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
	leaq .L.str.24(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.31
.L.else.31:
	movq $2, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.32
.data
.L.str.25:
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
	leaq .L.str.25(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.32
.L.else.32:
	movq $4, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.33
.data
.L.str.26:
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
	leaq .L.str.26(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.33
.L.else.33:
.data
.L.str.27:
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
	leaq .L.str.27(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.33:
.L.end.32:
.L.end.31:
	movq $0, %rax
	leave
	ret
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
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.34
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
	addq $128, %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.28:
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
	leaq .L.str.28(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	jmp .L.end.34
.L.else.34:
	movq $14, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.35
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	addq $68, %rax
	movslq (%rax), %rax
	cmpq $1, %rax
	jne .L.else.36
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.29:
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
	leaq .L.str.29(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	jmp .L.end.36
.L.else.36:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	addq $24, %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.30:
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
	leaq .L.str.30(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.L.end.36:
	jmp .L.end.35
.L.else.35:
	movq $20, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.37
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
	jmp .L.end.37
.L.else.37:
.L.end.37:
.L.end.35:
.L.end.34:
	movq $0, %rax
	leave
	ret
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
.L.str.31:
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 0
.text
	leaq .L.str.31(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_push(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
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
.L.str.32:
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 0
.text
	leaq .L.str.32(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_pop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leave
	ret
.global alloc_stack
alloc_stack:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cqto
	idivq %rdi
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.33:
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
	leaq .L.str.33(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leave
	ret
.global gen_pop_size
gen_pop_size:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cqto
	idivq %rdi
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.34:
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
	leaq .L.str.34(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leave
	ret
.global gen_pop
gen_pop:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.35:
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
	leaq .L.str.35(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
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
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	addq %rdi, %rax
	leave
	ret
.global gen_push_num
gen_push_num:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.36:
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
	leaq .L.str.36(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
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
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	leave
	ret
.global gen_push
gen_push:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.37:
	.byte 9
	.byte 112
	.byte 117
	.byte 115
	.byte 104
	.byte 32
	.byte 37
	.byte 115
	.byte 10
	.byte 0
.text
	leaq .L.str.37(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
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
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	leave
	ret
.global gen_stmt
gen_stmt:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.data
.L.jump_table.38:
	.quad .L.case.38.15
	.rept 0
	.quad 0
	.endr
	.quad .L.case.38.16
	.rept 0
	.quad 0
	.endr
	.quad .L.case.38.17
	.rept 0
	.quad 0
	.endr
	.quad .L.case.38.18
	.rept 2
	.quad 0
	.endr
	.quad .L.case.38.21
	.rept 0
	.quad 0
	.endr
	.quad .L.case.38.22
	.rept 0
	.quad 0
	.endr
	.quad .L.case.38.23
	.rept 0
	.quad 0
	.endr
	.quad .L.case.38.24
	.rept 4
	.quad 0
	.endr
	.quad .L.case.38.29
	.rept 2
	.quad 0
	.endr
	.quad .L.case.38.32
	.rept 2
	.quad 0
	.endr
	.quad .L.case.38.35
	.rept 0
	.quad 0
	.endr
	.quad .L.case.38.36
.text
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	subq $15, %rax
	movq .L.jump_table.38(, %rax, 8), %rax
	jmp *%rax
.L.case.38.29:
	movq $0, %rax
	leave
	ret
.L.case.38.21:
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
	leave
	ret
.L.case.38.22:
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
	leave
	ret
.L.case.38.35:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq sort_switch_cases(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
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
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -4(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_jmp_table(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
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
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.38:
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
	.byte 97
	.byte 120
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
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.39:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 113
	.byte 32
	.byte 46
	.byte 76
	.byte 46
	.byte 106
	.byte 117
	.byte 109
	.byte 112
	.byte 95
	.byte 116
	.byte 97
	.byte 98
	.byte 108
	.byte 101
	.byte 46
	.byte 37
	.byte 100
	.byte 40
	.byte 44
	.byte 32
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 44
	.byte 32
	.byte 56
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
	leaq .L.str.39(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.data
.L.str.40:
	.byte 9
	.byte 106
	.byte 109
	.byte 112
	.byte 32
	.byte 42
	.byte 37
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 10
	.byte 0
.text
	leaq .L.str.40(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
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
	movq $0, %rax
	leave
	ret
.L.case.38.36:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.41:
	.byte 37
	.byte 115
	.byte 58
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
	movq $0, %rax
	leave
	ret
.L.case.38.32:
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
.L.str.42:
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
	leaq .L.str.42(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.43:
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
	leaq .L.str.43(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.data
.L.str.44:
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
	leaq .L.str.44(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.45:
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
	leaq .L.str.45(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.L.case.38.18:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.39
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
	jmp .L.end.39
.L.else.39:
.L.end.39:
.data
.L.str.46:
	.byte 9
	.byte 108
	.byte 101
	.byte 97
	.byte 118
	.byte 101
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
.data
.L.str.47:
	.byte 9
	.byte 114
	.byte 101
	.byte 116
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
	movq $0, %rax
	leave
	ret
.L.case.38.15:
	leaq -12(%rbp), %rax
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
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
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
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
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
	leaq .L.str.49(%rip), %rax
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
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
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
	.byte 101
	.byte 110
	.byte 100
	.byte 46
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.50(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.51:
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
	leaq .L.str.51(%rip), %rax
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
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.40
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
	jmp .L.end.40
.L.else.40:
.L.end.40:
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.52:
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
	leaq .L.str.52(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq $0, %rax
	leave
	ret
.L.case.38.23:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
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
.L.str.53:
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
	leaq .L.str.53(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $40, %rsp
	movq $0, %rax
	leave
	ret
.L.case.38.24:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
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
.L.str.54:
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
	leaq .L.str.54(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $40, %rsp
	movq $0, %rax
	leave
	ret
.L.case.38.16:
	leaq -12(%rbp), %rax
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
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.41
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
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
	jmp .L.end.41
.L.else.41:
.L.end.41:
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.55:
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
	leaq .L.str.55(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
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
.L.str.56:
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
	leaq .L.str.56(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.57:
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
	leaq .L.str.57(%rip), %rax
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
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.42
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
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
	jmp .L.end.42
.L.else.42:
.L.end.42:
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.58:
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
	leaq .L.str.58(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.59:
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
	leaq .L.str.59(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq $0, %rax
	leave
	ret
.L.case.38.17:
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
.L.str.60:
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 0
.text
	leaq .L.str.60(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_push(%rip), %rax
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
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.61:
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 0
.text
	leaq .L.str.61(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_pop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_store(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.data
.L.str.62:
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
	leaq .L.str.62(%rip), %rax
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
.global gen_expr
gen_expr:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq -24(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.data
.L.jump_table.43:
	.quad .L.case.43.0
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.1
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.2
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.3
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.4
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.5
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.6
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.7
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.8
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.9
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.10
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.11
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.12
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.13
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.14
	.rept 2
	.quad 0
	.endr
	.quad .L.case.43.17
	.rept 1
	.quad 0
	.endr
	.quad .L.case.43.19
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.20
	.rept 1
	.quad 0
	.endr
	.quad .L.case.43.22
	.rept 2
	.quad 0
	.endr
	.quad .L.case.43.25
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.26
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.27
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.28
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.29
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.30
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.31
	.rept 1
	.quad 0
	.endr
	.quad .L.case.43.33
	.rept 0
	.quad 0
	.endr
	.quad .L.case.43.34
.text
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	subq $0, %rax
	movq .L.jump_table.43(, %rax, 8), %rax
	jmp *%rax
.L.case.43.29:
	movq $0, %rax
	leave
	ret
.L.case.43.28:
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
	addq $112, %rax
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
	leave
	ret
.L.case.43.12:
	leaq -24(%rbp), %rax
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
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
.data
.L.str.63:
	.byte 46
	.byte 100
	.byte 97
	.byte 116
	.byte 97
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
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.64:
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
	leaq .L.str.64(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq -20(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $96, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.44:
	movq $0, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.44
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.65:
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
	leaq .L.str.65(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.44
.L.while.end.44:
.data
.L.str.66:
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
	leaq .L.str.66(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.67:
	.byte 46
	.byte 116
	.byte 101
	.byte 120
	.byte 116
	.byte 10
	.byte 0
.text
	leaq .L.str.67(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.68:
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
	leaq .L.str.68(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.13:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.69:
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
	leaq .L.str.69(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.17:
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
.L.str.70:
	.byte 37
	.byte 114
	.byte 97
	.byte 120
	.byte 0
.text
	leaq .L.str.70(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_push(%rip), %rax
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
	leaq gen_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.data
.L.str.71:
	.byte 37
	.byte 114
	.byte 100
	.byte 105
	.byte 0
.text
	leaq .L.str.71(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_pop(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_store(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.14:
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
	addq $112, %rax
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
	leave
	ret
.L.case.43.25:
	leaq -12(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $7, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.45
	leaq -12(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.45
.L.else.45:
.L.end.45:
	leaq -4(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $136, %rax
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
.L.str.72:
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
	leaq .L.str.72(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.73:
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
	leaq .L.str.73(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.74:
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
	leaq .L.str.74(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq gen_pop_size(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $4, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.46
.data
.L.str.75:
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
	addq $8, %rsp
	jmp .L.end.46
.L.else.46:
	movq $3, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.47
.data
.L.str.76:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 115
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
	leaq .L.str.76(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.47
.L.else.47:
	movq $11, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.48
.data
.L.str.77:
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
	leaq .L.str.77(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.48
.L.else.48:
	movq $2, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.49
.data
.L.str.78:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 115
	.byte 119
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 97
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
	leaq .L.str.78(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.49
.L.else.49:
	movq $10, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.50
.data
.L.str.79:
	.byte 9
	.byte 109
	.byte 111
	.byte 118
	.byte 122
	.byte 119
	.byte 113
	.byte 32
	.byte 37
	.byte 37
	.byte 97
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
	leaq .L.str.79(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.50
.L.else.50:
.L.end.50:
.L.end.49:
.L.end.48:
.L.end.47:
.L.end.46:
	movq $0, %rax
	leave
	ret
.L.case.43.22:
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
	leave
	ret
.L.case.43.19:
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
	leave
	ret
.L.case.43.20:
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
	addq $112, %rax
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
	leave
	ret
.L.case.43.5:
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
.L.str.80:
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
	leaq .L.str.81(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.82:
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
	leaq .L.str.82(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.0:
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
.L.str.83:
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
	leaq .L.str.83(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.30:
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
.L.str.84:
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
	leaq .L.str.84(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.85:
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
	leaq .L.str.85(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.31:
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
.L.str.86:
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
	leaq .L.str.86(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.87:
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
	leaq .L.str.87(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.1:
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
.L.str.88:
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
	leaq .L.str.88(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.33:
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
.L.str.89:
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
	leaq .L.str.89(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.34:
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
.L.str.90:
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
	leaq .L.str.90(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.2:
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
.L.str.91:
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
	leaq .L.str.91(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.3:
.L.case.43.4:
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
	addq $112, %rax
	movq (%rax), %rax
	addq $60, %rax
	movslq (%rax), %rax
	cmpq $1, %rax
	jne .L.else.51
.data
.L.str.92:
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
	leaq .L.str.92(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.93:
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
	leaq .L.str.93(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.51
.L.else.51:
.data
.L.str.94:
	.byte 9
	.byte 99
	.byte 113
	.byte 116
	.byte 111
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
.data
.L.str.95:
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
	leaq .L.str.95(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.51:
	movq $4, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.52
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
	leaq .L.str.96(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.52
.L.else.52:
.L.end.52:
	movq $0, %rax
	leave
	ret
.L.case.43.7:
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
.L.str.97:
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
	leaq .L.str.97(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.98:
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
	leaq .L.str.98(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.6:
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
.L.str.99:
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
	leaq .L.str.99(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.100:
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
	leaq .L.str.100(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.26:
	leaq -24(%rbp), %rax
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
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
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
.L.str.101:
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
	leaq .L.str.101(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.102:
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
	leaq .L.str.102(%rip), %rax
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
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.104:
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
	leaq .L.str.104(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.data
.L.str.105:
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
	leaq .L.str.105(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.106:
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
	leaq .L.str.106(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.107:
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
	leaq .L.str.107(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.data
.L.str.108:
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
	leaq .L.str.108(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.109:
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
	leaq .L.str.109(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.27:
	leaq -24(%rbp), %rax
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
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
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
.L.str.110:
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
	leaq .L.str.110(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.111:
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
	leaq .L.str.111(%rip), %rax
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
.L.str.112:
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
	leaq .L.str.112(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.113:
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
	leaq .L.str.113(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.data
.L.str.114:
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
	leaq .L.str.114(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.115:
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
	leaq .L.str.115(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.116:
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
	leaq .L.str.116(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.data
.L.str.117:
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
	leaq .L.str.117(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.118:
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
	leaq .L.str.118(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.10:
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
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $60, %rax
	movslq (%rax), %rax
	cmpq $1, %rax
	jne .L.else.53
.data
.L.str.120:
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
	leaq .L.str.120(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.53
.L.else.53:
.data
.L.str.121:
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
	leaq .L.str.121(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.53:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.11:
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
.L.str.122:
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
	leaq .L.str.122(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $60, %rax
	movslq (%rax), %rax
	cmpq $1, %rax
	jne .L.else.54
.data
.L.str.123:
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
	leaq .L.str.123(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.54
.L.else.54:
.data
.L.str.124:
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
	leaq .L.str.124(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.54:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.8:
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
.L.str.125:
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
	leaq .L.str.125(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $60, %rax
	movslq (%rax), %rax
	cmpq $1, %rax
	jne .L.else.55
.data
.L.str.126:
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
	leaq .L.str.126(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.55
.L.else.55:
.data
.L.str.127:
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
	leaq .L.str.127(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.55:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.L.case.43.9:
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
.L.str.128:
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
	leaq .L.str.128(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $60, %rax
	movslq (%rax), %rax
	cmpq $1, %rax
	jne .L.else.56
.data
.L.str.129:
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
	leaq .L.str.129(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.56
.L.else.56:
.data
.L.str.130:
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
	leaq .L.str.130(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L.end.56:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	push %rax
	leaq gen_condition_store(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
.data
.L.str.131:
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
	leaq .L.str.131(%rip), %rax
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
.global gen
gen:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.data
.L.str.132:
	.byte 46
	.byte 116
	.byte 101
	.byte 120
	.byte 116
	.byte 10
	.byte 0
.text
	leaq .L.str.132(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.57
.data
.L.str.133:
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
	leaq .L.str.133(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.134:
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
	leaq .L.str.134(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.135:
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
	leaq .L.str.135(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.136:
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
	leaq .L.str.136(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.137:
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
	leaq .L.str.137(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.138:
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
	leaq .L.str.138(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.139:
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
	leaq .L.str.139(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.140:
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
	leaq .L.str.140(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.141:
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
	leaq .L.str.141(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.142:
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
	leaq .L.str.142(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.143:
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
	leaq .L.str.143(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L.end.57
.L.else.57:
.L.end.57:
.L.while.start.58:
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.58
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L.false.60
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L.false.60
	movq $1, %rax
	jmp .L.end.60
.L.false.60:
	movq $0, %rax
.L.end.60:
	cmpq $1, %rax
	jne .L.else.59
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
	addq $20, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
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
.L.str.144:
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
	leaq .L.str.144(%rip), %rax
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
.L.str.145:
	.byte 37
	.byte 115
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.145(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.data
.L.str.146:
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
	leaq .L.str.146(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.147:
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
	leaq .L.str.147(%rip), %rax
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
.L.str.148:
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
	leaq .L.str.148(%rip), %rax
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
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.61
.data
.L.str.149:
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
	.byte 117
	.byte 110
	.byte 99
	.byte 108
	.byte 111
	.byte 115
	.byte 101
	.byte 100
	.byte 32
	.byte 112
	.byte 117
	.byte 115
	.byte 104
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
	leaq .L.str.149(%rip), %rax
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
	jmp .L.end.61
.L.else.61:
.L.end.61:
.data
.L.str.150:
	.byte 9
	.byte 108
	.byte 101
	.byte 97
	.byte 118
	.byte 101
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
.data
.L.str.151:
	.byte 9
	.byte 114
	.byte 101
	.byte 116
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
	jmp .L.end.59
.L.else.59:
	movq $1, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.62
.data
.L.str.152:
	.byte 46
	.byte 100
	.byte 97
	.byte 116
	.byte 97
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
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.153:
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
	leaq .L.str.153(%rip), %rax
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
.L.str.154:
	.byte 37
	.byte 115
	.byte 58
	.byte 10
	.byte 0
.text
	leaq .L.str.154(%rip), %rax
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
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	leaq (%rsp), %rax
	push %rax
	push $1
.data
.L.str.155:
	.byte 9
	.byte 46
	.byte 122
	.byte 101
	.byte 114
	.byte 111
	.byte 32
	.byte 37
	.byte 100
	.byte 10
	.byte 0
.text
	leaq .L.str.155(%rip), %rax
	push %rax
	leaq printf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.data
.L.str.156:
	.byte 46
	.byte 116
	.byte 101
	.byte 120
	.byte 116
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
	jmp .L.end.62
.L.else.62:
.L.end.62:
.L.end.59:
	leaq 24(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.58
.L.while.end.58:
	leave
	ret
.global new_gen
new_gen:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $32, %rax
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
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.63
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
	jmp .L.end.63
.L.else.63:
.L.end.63:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
	leave
	ret
