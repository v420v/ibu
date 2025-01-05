.text
.global parse_case
parse_case:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.1
.data
.L.str.1:
	.byte 99
	.byte 97
	.byte 115
	.byte 101
	.byte 32
	.byte 111
	.byte 117
	.byte 116
	.byte 115
	.byte 105
	.byte 100
	.byte 101
	.byte 32
	.byte 111
	.byte 102
	.byte 32
	.byte 115
	.byte 119
	.byte 105
	.byte 116
	.byte 99
	.byte 104
	.byte 0
.text
	leaq .L.str.1(%rip), %rax
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
	jmp .L.end.1
.L.else.1:
.L.end.1:
.data
.L.str.2:
	.byte 99
	.byte 97
	.byte 115
	.byte 101
	.byte 0
.text
	leaq .L.str.2(%rip), %rax
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
	movq $36, %rax
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
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
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
	movq $13, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.2
.data
.L.str.3:
	.byte 99
	.byte 97
	.byte 115
	.byte 101
	.byte 32
	.byte 118
	.byte 97
	.byte 108
	.byte 117
	.byte 101
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
	.byte 32
	.byte 105
	.byte 110
	.byte 116
	.byte 101
	.byte 103
	.byte 101
	.byte 114
	.byte 32
	.byte 99
	.byte 111
	.byte 110
	.byte 115
	.byte 116
	.byte 97
	.byte 110
	.byte 116
	.byte 0
.text
	leaq .L.str.3(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.2
.L.else.2:
.L.end.2:
.data
.L.str.4:
	.byte 58
	.byte 0
.text
	leaq .L.str.4(%rip), %rax
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
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
	leave
	ret
.global parse_switch
parse_switch:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.3
.data
.L.str.5:
	.byte 110
	.byte 101
	.byte 115
	.byte 116
	.byte 101
	.byte 100
	.byte 32
	.byte 115
	.byte 119
	.byte 105
	.byte 116
	.byte 99
	.byte 104
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
	.byte 115
	.byte 32
	.byte 97
	.byte 114
	.byte 101
	.byte 32
	.byte 110
	.byte 111
	.byte 116
	.byte 32
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
	.byte 121
	.byte 101
	.byte 116
	.byte 0
.text
	leaq .L.str.5(%rip), %rax
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
	jmp .L.end.3
.L.else.3:
.L.end.3:
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.6:
	.byte 115
	.byte 119
	.byte 105
	.byte 116
	.byte 99
	.byte 104
	.byte 0
.text
	leaq .L.str.6(%rip), %rax
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
	movq $35, %rax
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
	addq $32, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
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
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
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
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.4
.data
.L.str.7:
	.byte 115
	.byte 119
	.byte 105
	.byte 116
	.byte 99
	.byte 104
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
	.byte 109
	.byte 117
	.byte 115
	.byte 116
	.byte 32
	.byte 104
	.byte 97
	.byte 118
	.byte 101
	.byte 32
	.byte 97
	.byte 116
	.byte 32
	.byte 108
	.byte 101
	.byte 97
	.byte 115
	.byte 116
	.byte 32
	.byte 111
	.byte 110
	.byte 101
	.byte 32
	.byte 99
	.byte 97
	.byte 115
	.byte 101
	.byte 0
.text
	leaq .L.str.7(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.4
.L.else.4:
.L.end.4:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
	leave
	ret
.global parse_label
parse_label:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
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
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
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
.L.str.8:
	.byte 58
	.byte 0
.text
	leaq .L.str.8(%rip), %rax
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
	leave
	ret
	leave
	ret
.global parse_while
parse_while:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
.data
.L.str.9:
	.byte 119
	.byte 104
	.byte 105
	.byte 108
	.byte 101
	.byte 0
.text
	leaq .L.str.9(%rip), %rax
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
.L.str.10:
	.byte 123
	.byte 0
.text
	leaq .L.str.10(%rip), %rax
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
	movzx %al, %rax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.5
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
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
	jmp .L.end.5
.L.else.5:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq node_true(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.5:
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
	leave
	ret
	leave
	ret
.global parse_for
parse_for:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
.data
.L.str.11:
	.byte 102
	.byte 111
	.byte 114
	.byte 0
.text
	leaq .L.str.11(%rip), %rax
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
.L.str.12:
	.byte 123
	.byte 0
.text
	leaq .L.str.12(%rip), %rax
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
	movzx %al, %rax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.6
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq enter_scope(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L.str.13:
	.byte 59
	.byte 0
.text
	leaq .L.str.13(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.7
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.14:
	.byte 59
	.byte 0
.text
	leaq .L.str.14(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.7
.L.else.7:
.data
.L.str.15:
	.byte 108
	.byte 101
	.byte 116
	.byte 0
.text
	leaq .L.str.15(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.8
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_let(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.8
.L.else.8:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
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
.L.end.8:
.L.end.7:
.data
.L.str.16:
	.byte 59
	.byte 0
.text
	leaq .L.str.16(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.9
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.9
.L.else.9:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
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
.L.end.9:
.data
.L.str.17:
	.byte 59
	.byte 0
.text
	leaq .L.str.17(%rip), %rax
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
.L.str.18:
	.byte 123
	.byte 0
.text
	leaq .L.str.18(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.10
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.10
.L.else.10:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
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
.L.end.10:
	jmp .L.end.6
.L.else.6:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq node_true(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.6:
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
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq leave_scope(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
	leave
	ret
.global parse_return
parse_return:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
.data
.L.str.19:
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 0
.text
	leaq .L.str.19(%rip), %rax
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
.L.str.20:
	.byte 59
	.byte 0
.text
	leaq .L.str.20(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.11
.data
.L.str.21:
	.byte 59
	.byte 0
.text
	leaq .L.str.21(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	movq $18, %rax
	push %rax
	leaq new_node(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
	jmp .L.end.11
.L.else.11:
.L.end.11:
	leaq -8(%rbp), %rax
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
	leaq -8(%rbp), %rax
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
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
	leave
	ret
.global parse_if
parse_if:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
.data
.L.str.22:
	.byte 105
	.byte 102
	.byte 0
.text
	leaq .L.str.22(%rip), %rax
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
	movq $15, %rax
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
	movq (%rax), %rax
	push %rax
	leaq parse_expr(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
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
.data
.L.str.23:
	.byte 101
	.byte 108
	.byte 115
	.byte 101
	.byte 0
.text
	leaq .L.str.23(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.12
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leaq -8(%rbp), %rax
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
	jmp .L.end.12
.L.else.12:
	leaq -8(%rbp), %rax
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
.L.end.12:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
	leave
	ret
.global parse_goto
parse_goto:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
.data
.L.str.24:
	.byte 103
	.byte 111
	.byte 116
	.byte 111
	.byte 0
.text
	leaq .L.str.24(%rip), %rax
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
.L.str.25:
	.byte 59
	.byte 0
.text
	leaq .L.str.25(%rip), %rax
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
	movq $23, %rax
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
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
	leave
	ret
.global parse_let
parse_let:
	push %rbp
	movq %rsp, %rbp
	subq $48, %rsp
.data
.L.str.26:
	.byte 108
	.byte 101
	.byte 116
	.byte 0
.text
	leaq .L.str.26(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	leaq -32(%rbp), %rax
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
	leaq -24(%rbp), %rax
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
	leaq -16(%rbp), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
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
.L.str.27:
	.byte 61
	.byte 0
.text
	leaq .L.str.27(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.13
.data
.L.str.28:
	.byte 61
	.byte 0
.text
	leaq .L.str.28(%rip), %rax
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
	movq (%rax), %rax
	addq $104, %rax
	push %rax
	leaq -16(%rbp), %rax
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
.data
.L.str.29:
	.byte 123
	.byte 0
.text
	leaq .L.str.29(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.14
	leaq -40(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
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
.L.str.30:
	.byte 59
	.byte 0
.text
	leaq .L.str.30(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.14
.L.else.14:
	leaq -40(%rbp), %rax
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
.L.end.14:
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
	jmp .L.end.13
.L.else.13:
.data
.L.str.31:
	.byte 59
	.byte 0
.text
	leaq .L.str.31(%rip), %rax
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
	leave
	ret
.L.end.13:
	leave
	ret
.global initializer
initializer:
	push %rbp
	movq %rsp, %rbp
	subq $64, %rsp
	leaq -56(%rbp), %rax
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
	addq $112, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L.false.16
	movq $5, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L.false.16
	movq $1, %rax
	jmp .L.end.16
.L.false.16:
	movq $0, %rax
.L.end.16:
	cmpq $1, %rax
	jne .L.else.15
.data
.L.str.32:
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
	leaq .L.str.32(%rip), %rax
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
	jmp .L.end.15
.L.else.15:
.L.end.15:
.data
.L.str.33:
	.byte 123
	.byte 0
.text
	leaq .L.str.33(%rip), %rax
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
.L.str.34:
	.byte 125
	.byte 0
.text
	leaq .L.str.34(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.17
	leaq -48(%rbp), %rax
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
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.17
.L.else.17:
	movq $13, %rax
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
	jne .L.else.18
	leaq -40(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.19:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $56, %rax
	movslq (%rax), %rax
	push %rax
	leaq -40(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.19
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
	leaq -40(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	imulq %rdi, %rax
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
.L.str.35:
	.byte 123
	.byte 0
.text
	leaq .L.str.35(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.20
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
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.20
.L.else.20:
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
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.end.20:
	movq $1, %rax
	push %rax
	leaq -40(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -40(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $56, %rax
	movslq (%rax), %rax
	push %rax
	leaq -40(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.21
.data
.L.str.36:
	.byte 44
	.byte 0
.text
	leaq .L.str.36(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.21
.L.else.21:
.L.end.21:
	jmp .L.while.start.19
.L.while.end.19:
	jmp .L.end.18
.L.else.18:
	movq $5, %rax
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
	jne .L.else.22
	leaq -28(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.23:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.23
	leaq -24(%rbp), %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
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
	leaq -16(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
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
.L.str.37:
	.byte 123
	.byte 0
.text
	leaq .L.str.37(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.24
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
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.24
.L.else.24:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr(%rip), %rax
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
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq vec_append(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L.end.24:
	movq $1, %rax
	push %rax
	leaq -28(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.25
.data
.L.str.38:
	.byte 44
	.byte 0
.text
	leaq .L.str.38(%rip), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parser_skip(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	jmp .L.end.25
.L.else.25:
.L.end.25:
	jmp .L.while.start.23
.L.while.end.23:
	jmp .L.end.22
.L.else.22:
.L.end.22:
.L.end.18:
.L.end.17:
.data
.L.str.39:
	.byte 125
	.byte 0
.text
	leaq .L.str.39(%rip), %rax
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
	leaq -56(%rbp), %rax
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
	leave
	ret
	leave
	ret
.global parse_stmt
parse_stmt:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.data
.L.str.40:
	.byte 115
	.byte 119
	.byte 105
	.byte 116
	.byte 99
	.byte 104
	.byte 0
.text
	leaq .L.str.40(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.26
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_switch(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
	jmp .L.end.26
.L.else.26:
.L.end.26:
.data
.L.str.41:
	.byte 99
	.byte 97
	.byte 115
	.byte 101
	.byte 0
.text
	leaq .L.str.41(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.27
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_case(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
	jmp .L.end.27
.L.else.27:
.L.end.27:
.data
.L.str.42:
	.byte 108
	.byte 101
	.byte 116
	.byte 0
.text
	leaq .L.str.42(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.28
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_let(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
	jmp .L.end.28
.L.else.28:
.L.end.28:
.data
.L.str.43:
	.byte 103
	.byte 111
	.byte 116
	.byte 111
	.byte 0
.text
	leaq .L.str.43(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.29
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_goto(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
	jmp .L.end.29
.L.else.29:
.L.end.29:
.data
.L.str.44:
	.byte 105
	.byte 102
	.byte 0
.text
	leaq .L.str.44(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.30
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_if(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
	jmp .L.end.30
.L.else.30:
.L.end.30:
.data
.L.str.45:
	.byte 102
	.byte 111
	.byte 114
	.byte 0
.text
	leaq .L.str.45(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.31
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_for(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
	jmp .L.end.31
.L.else.31:
.L.end.31:
.data
.L.str.46:
	.byte 119
	.byte 104
	.byte 105
	.byte 108
	.byte 101
	.byte 0
.text
	leaq .L.str.46(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.32
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_while(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
	jmp .L.end.32
.L.else.32:
.L.end.32:
.data
.L.str.47:
	.byte 114
	.byte 101
	.byte 116
	.byte 117
	.byte 114
	.byte 110
	.byte 0
.text
	leaq .L.str.47(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.33
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_return(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
	jmp .L.end.33
.L.else.33:
.L.end.33:
.data
.L.str.48:
	.byte 123
	.byte 0
.text
	leaq .L.str.48(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.34
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_block(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
	jmp .L.end.34
.L.else.34:
.L.end.34:
	movq $5, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.35
.data
.L.str.49:
	.byte 58
	.byte 0
.text
	leaq .L.str.49(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L.else.36
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_label(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
	jmp .L.end.36
.L.else.36:
.L.end.36:
	jmp .L.end.35
.L.else.35:
.L.end.35:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq parse_expr_stmt(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	leave
	ret
	leave
	ret
