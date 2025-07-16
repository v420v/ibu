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
.L..112.while.start:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	push %rax
	leaq isalpha(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %rax
	cmpq $0, %rax
	jne .L..113.true
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	push %rax
	leaq isdigit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %rax
	cmp $0, %rax
	jne .L..113.true
	mov $0, %rax
	jmp .L..113.end
.L..113.true:
	mov $1, %rax
.L..113.end:
	cmpq $0, %rax
	jne .L..114.true
	movq $95, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmp $0, %rax
	jne .L..114.true
	mov $0, %rax
	jmp .L..114.end
.L..114.true:
	mov $1, %rax
.L..114.end:
	cmpq $1, %rax
	jne .L..112.while.end
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L..112.while.start
.L..112.while.end:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
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
	leave
	ret
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
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..108.ifelse
.data
.L..109:
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
	leaq .L..109(%rip), %rax
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
	jmp .L..108.ifend
.L..108.ifelse:
.L..108.ifend:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L..110.while.start:
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..110.while.end
	movq $92, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..111.ifelse
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
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	imulq %rdi, %rax
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
	movzbq %al, %rax
	pop %rdi
	movb %al, (%rdi)
	jmp .L..111.ifend
.L..111.ifelse:
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
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	imulq %rdi, %rax
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
	movzbq (%rax), %rax
	pop %rdi
	movb %al, (%rdi)
.L..111.ifend:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L..110.while.start
.L..110.while.end:
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imulq %rdi, %rax
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
	leave
	ret
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
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..107.ifelse
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
	movzbq %al, %rax
	pop %rdi
	movb %al, (%rdi)
	jmp .L..107.ifend
.L..107.ifelse:
	leaq -1(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	movb %al, (%rdi)
.L..107.ifend:
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
	movzbq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -17(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
	leave
	ret
.global tokenize_number
tokenize_number:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	leaq -8(%rbp), %rax
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
	movq $48, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..106.false
	movq $120, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	jne .L..105.true
	movq $88, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmp $0, %rax
	jne .L..105.true
	mov $0, %rax
	jmp .L..105.end
.L..105.true:
	mov $1, %rax
.L..105.end:
	cmpq $0, %rax
	je .L..106.false
	movq $1, %rax
	jmp .L..106.end
.L..106.false:
	movq $0, %rax
.L..106.end:
	cmpq $1, %rax
	jne .L..104.ifelse
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
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenize_hex_number(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L..104.ifend
.L..104.ifelse:
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenize_decimal_number(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L..104.ifend:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
	leave
	ret
.global tokenize_decimal_number
tokenize_decimal_number:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq -24(%rbp), %rax
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
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L..103.while.start:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	push %rax
	leaq isdigit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %rax
	cmpq $1, %rax
	jne .L..103.while.end
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L..103.while.start
.L..103.while.end:
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strndup(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq atoi(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
	leave
	ret
.global tokenize_hex_number
tokenize_hex_number:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq -24(%rbp), %rax
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
	leaq -16(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
.L..102.while.start:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	push %rax
	leaq is_hex_digit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %rax
	cmpq $1, %rax
	jne .L..102.while.end
	leaq -8(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	push %rax
	leaq from_hex(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzbq %al, %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rdi, %rcx
	shl %cl, %rax
	pop %rdi
	addq %rdi, %rax
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
	jmp .L..102.while.start
.L..102.while.end:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
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
	movzbq (%rax), %rax
	push %rax
	movq $48, %rax
	pop %rdi
	cmpq %rdi, %rax
	setle %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..86.false
	movq $55, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setbe %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..86.false
	movq $1, %rax
	jmp .L..86.end
.L..86.false:
	movq $0, %rax
.L..86.end:
	cmpq $1, %rax
	jne .L..85.ifelse
	leaq -1(%rbp), %rax
	push %rax
	movq $48, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
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
	movzbq (%rax), %rax
	push %rax
	movq $48, %rax
	pop %rdi
	cmpq %rdi, %rax
	setle %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..88.false
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
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setbe %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..88.false
	movq $1, %rax
	jmp .L..88.end
.L..88.false:
	movq $0, %rax
.L..88.end:
	cmpq $1, %rax
	jne .L..87.ifelse
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
	movzbq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq -1(%rbp), %rax
	movzbq (%rax), %rax
	pop %rdi
	movq %rdi, %rcx
	shl %cl, %rax
	pop %rdi
	addq %rdi, %rax
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
	movzbq (%rax), %rax
	push %rax
	movq $48, %rax
	pop %rdi
	cmpq %rdi, %rax
	setle %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..90.false
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
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setbe %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..90.false
	movq $1, %rax
	jmp .L..90.end
.L..90.false:
	movq $0, %rax
.L..90.end:
	cmpq $1, %rax
	jne .L..89.ifelse
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
	movzbq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq -1(%rbp), %rax
	movzbq (%rax), %rax
	pop %rdi
	movq %rdi, %rcx
	shl %cl, %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movb %al, (%rdi)
	jmp .L..89.ifend
.L..89.ifelse:
.L..89.ifend:
	jmp .L..87.ifend
.L..87.ifelse:
.L..87.ifend:
	leaq -1(%rbp), %rax
	movzbq (%rax), %rax
	leave
	ret
	jmp .L..85.ifend
.L..85.ifelse:
.L..85.ifend:
	movq $120, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..91.ifelse
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
	movzbq (%rax), %rax
	push %rax
	leaq is_hex_digit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %rax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..92.ifelse
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
.L..93:
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
	leaq .L..93(%rip), %rax
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
	jmp .L..92.ifend
.L..92.ifelse:
.L..92.ifend:
.L..94.while.start:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	push %rax
	leaq is_hex_digit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %rax
	cmpq $1, %rax
	jne .L..94.while.end
	leaq -1(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	push %rax
	leaq from_hex(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzbq %al, %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq -1(%rbp), %rax
	movzbq (%rax), %rax
	pop %rdi
	movq %rdi, %rcx
	shl %cl, %rax
	pop %rdi
	addq %rdi, %rax
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
	jmp .L..94.while.start
.L..94.while.end:
	jmp .L..91.ifend
.L..91.ifelse:
.L..91.ifend:
	movq $97, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..95.ifelse
	movq $7, %rax
	leave
	ret
	jmp .L..95.ifend
.L..95.ifelse:
.L..95.ifend:
	movq $98, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..96.ifelse
	movq $8, %rax
	leave
	ret
	jmp .L..96.ifend
.L..96.ifelse:
.L..96.ifend:
	movq $116, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..97.ifelse
	movq $9, %rax
	leave
	ret
	jmp .L..97.ifend
.L..97.ifelse:
.L..97.ifend:
	movq $110, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..98.ifelse
	movq $10, %rax
	leave
	ret
	jmp .L..98.ifend
.L..98.ifelse:
.L..98.ifend:
	movq $118, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..99.ifelse
	movq $11, %rax
	leave
	ret
	jmp .L..99.ifend
.L..99.ifelse:
.L..99.ifend:
	movq $102, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..100.ifelse
	movq $12, %rax
	leave
	ret
	jmp .L..100.ifend
.L..100.ifelse:
.L..100.ifend:
	movq $114, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..101.ifelse
	movq $13, %rax
	leave
	ret
	jmp .L..101.ifend
.L..101.ifelse:
.L..101.ifend:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	leave
	ret
	leave
	ret
.global from_hex
from_hex:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movzbq (%rax), %rax
	push %rax
	movq $48, %rax
	pop %rdi
	cmpq %rdi, %rax
	setle %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..82.false
	movq $57, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setbe %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..82.false
	movq $1, %rax
	jmp .L..82.end
.L..82.false:
	movq $0, %rax
.L..82.end:
	cmpq $1, %rax
	jne .L..81.ifelse
	movq $48, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	leave
	ret
	jmp .L..81.ifend
.L..81.ifelse:
.L..81.ifend:
	leaq 16(%rbp), %rax
	movzbq (%rax), %rax
	push %rax
	movq $97, %rax
	pop %rdi
	cmpq %rdi, %rax
	setle %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..84.false
	movq $102, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setbe %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..84.false
	movq $1, %rax
	jmp .L..84.end
.L..84.false:
	movq $0, %rax
.L..84.end:
	cmpq $1, %rax
	jne .L..83.ifelse
	movq $10, %rax
	push %rax
	movq $97, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	addq %rdi, %rax
	leave
	ret
	jmp .L..83.ifend
.L..83.ifelse:
.L..83.ifend:
	movq $10, %rax
	push %rax
	movq $65, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	addq %rdi, %rax
	leave
	ret
	leave
	ret
.global is_hex_digit
is_hex_digit:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	leaq 16(%rbp), %rax
	movzbq (%rax), %rax
	push %rax
	movq $48, %rax
	pop %rdi
	cmpq %rdi, %rax
	setle %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..76.false
	movq $57, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setbe %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..76.false
	movq $1, %rax
	jmp .L..76.end
.L..76.false:
	movq $0, %rax
.L..76.end:
	cmpq $0, %rax
	jne .L..78.true
	leaq 16(%rbp), %rax
	movzbq (%rax), %rax
	push %rax
	movq $65, %rax
	pop %rdi
	cmpq %rdi, %rax
	setle %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..77.false
	movq $70, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setbe %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..77.false
	movq $1, %rax
	jmp .L..77.end
.L..77.false:
	movq $0, %rax
.L..77.end:
	cmp $0, %rax
	jne .L..78.true
	mov $0, %rax
	jmp .L..78.end
.L..78.true:
	mov $1, %rax
.L..78.end:
	cmpq $0, %rax
	jne .L..80.true
	leaq 16(%rbp), %rax
	movzbq (%rax), %rax
	push %rax
	movq $97, %rax
	pop %rdi
	cmpq %rdi, %rax
	setle %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..79.false
	movq $102, %rax
	push %rax
	leaq 16(%rbp), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setbe %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..79.false
	movq $1, %rax
	jmp .L..79.end
.L..79.false:
	movq $0, %rax
.L..79.end:
	cmp $0, %rax
	jne .L..80.true
	mov $0, %rax
	jmp .L..80.end
.L..80.true:
	mov $1, %rax
.L..80.end:
	leave
	ret
	leave
	ret
.global string_end
string_end:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.L..71.while.start:
	movq $34, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..71.while.end
	movq $10, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	jne .L..73.true
	movq $0, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmp $0, %rax
	jne .L..73.true
	mov $0, %rax
	jmp .L..73.end
.L..73.true:
	mov $1, %rax
.L..73.end:
	cmpq $1, %rax
	jne .L..72.ifelse
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
.L..74:
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
	leaq .L..74(%rip), %rax
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
	jmp .L..72.ifend
.L..72.ifelse:
.L..72.ifend:
	movq $92, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..75.ifelse
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
	jmp .L..75.ifend
.L..75.ifelse:
.L..75.ifend:
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
	jmp .L..71.while.start
.L..71.while.end:
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
	leave
	ret
.global skip_single_line_comment
skip_single_line_comment:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.data
.L..68:
	.byte 47
	.byte 47
	.byte 0
.text
	leaq .L..68(%rip), %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L..67.ifelse
.L..69.while.start:
	movq $10, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..70.false
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..70.false
	movq $1, %rax
	jmp .L..70.end
.L..70.false:
	movq $0, %rax
.L..70.end:
	cmpq $1, %rax
	jne .L..69.while.end
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L..69.while.start
.L..69.while.end:
	jmp .L..67.ifend
.L..67.ifelse:
.L..67.ifend:
	leave
	ret
.global tokenize_punct
tokenize_punct:
	push %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq -20(%rbp), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L..65.while.start:
	movq $34, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..65.while.end
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imulq %rdi, %rax
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
	movzx %al, %rax
	cmpq $1, %rax
	jne .L..66.ifelse
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
	imulq %rdi, %rax
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
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
	leave
	ret
	jmp .L..66.ifend
.L..66.ifelse:
.L..66.ifend:
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
	jmp .L..65.while.start
.L..65.while.end:
	movq $0, %rax
	leave
	ret
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
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..63.ifelse
.data
.L..64:
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
	leaq .L..64(%rip), %rax
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
	jmp .L..63.ifend
.L..63.ifelse:
.L..63.ifend:
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
	addq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
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
	leave
	ret
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
.L..62.while.start:
	leaq 24(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..62.while.end
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
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L..62.while.start
.L..62.while.end:
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
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..61.ifelse
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
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
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
	jmp .L..61.ifend
.L..61.ifelse:
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
.L..61.ifend:
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
.L..59.while.start:
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
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..59.while.end
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imulq %rdi, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imulq %rdi, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..60.ifelse
	movq $0, %rax
	leave
	ret
	jmp .L..60.ifend
.L..60.ifelse:
.L..60.ifend:
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
	jmp .L..59.while.start
.L..59.while.end:
	movq $1, %rax
	leave
	ret
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
.L..4.while.start:
	leaq 32(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..4.while.end
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
	addq %rdi, %rax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L..4.while.start
.L..4.while.end:
	movq $0, %rax
	leave
	ret
	leave
	ret
.global tokenize
tokenize:
	push %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	leaq -24(%rbp), %rax
	push %rax
	leaq -96(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
.L..115.while.start:
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..115.while.end
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
	movzbq (%rax), %rax
	push %rax
	leaq isdigit(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %rax
	cmpq $1, %rax
	jne .L..116.ifelse
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
	jmp .L..116.ifend
.L..116.ifelse:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	push %rax
	leaq isalpha(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movzx %al, %rax
	cmpq $1, %rax
	jne .L..117.ifelse
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
	jmp .L..117.ifend
.L..117.ifelse:
	movq $39, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..118.ifelse
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
	jmp .L..118.ifend
.L..118.ifelse:
	movq $34, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..119.ifelse
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
	jmp .L..119.ifend
.L..119.ifelse:
	movq $32, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..120.ifelse
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L..120.ifend
.L..120.ifelse:
	movq $10, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..121.ifelse
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L..121.ifend
.L..121.ifelse:
	movq $9, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..122.ifelse
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq tokenizer_next(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	jmp .L..122.ifend
.L..122.ifelse:
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
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..123.ifelse
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
	jmp .L..123.ifend
.L..123.ifelse:
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
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
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
.L..124:
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
	leaq .L..124(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq print_error(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $16, %rsp
.L..123.ifend:
.L..122.ifend:
.L..121.ifend:
.L..120.ifend:
.L..119.ifend:
.L..118.ifend:
.L..117.ifend:
.L..116.ifend:
	jmp .L..115.while.start
.L..115.while.end:
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
	addq $40, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -96(%rbp), %rax
	addq $64, %rax
	movq (%rax), %rax
	leave
	ret
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
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..23.ifelse
.data
.L..24:
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
	leaq .L..24(%rip), %rax
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
	jmp .L..23.ifend
.L..23.ifelse:
.L..23.ifend:
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
.L..25:
	.byte 61
	.byte 61
	.byte 0
.text
	leaq .L..25(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..26:
	.byte 60
	.byte 61
	.byte 0
.text
	leaq .L..26(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $16, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..27:
	.byte 62
	.byte 61
	.byte 0
.text
	leaq .L..27(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $24, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..28:
	.byte 33
	.byte 61
	.byte 0
.text
	leaq .L..28(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $32, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..29:
	.byte 43
	.byte 43
	.byte 0
.text
	leaq .L..29(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $40, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..30:
	.byte 45
	.byte 45
	.byte 0
.text
	leaq .L..30(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $48, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..31:
	.byte 124
	.byte 124
	.byte 0
.text
	leaq .L..31(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $56, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..32:
	.byte 38
	.byte 38
	.byte 0
.text
	leaq .L..32(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $64, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..33:
	.byte 60
	.byte 60
	.byte 0
.text
	leaq .L..33(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $72, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..34:
	.byte 62
	.byte 62
	.byte 0
.text
	leaq .L..34(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $80, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..35:
	.byte 46
	.byte 46
	.byte 46
	.byte 0
.text
	leaq .L..35(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $88, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..36:
	.byte 43
	.byte 0
.text
	leaq .L..36(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $96, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..37:
	.byte 45
	.byte 0
.text
	leaq .L..37(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $104, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..38:
	.byte 60
	.byte 0
.text
	leaq .L..38(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $112, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..39:
	.byte 62
	.byte 0
.text
	leaq .L..39(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $120, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..40:
	.byte 59
	.byte 0
.text
	leaq .L..40(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $128, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..41:
	.byte 58
	.byte 0
.text
	leaq .L..41(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $136, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..42:
	.byte 123
	.byte 0
.text
	leaq .L..42(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $144, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..43:
	.byte 125
	.byte 0
.text
	leaq .L..43(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $152, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..44:
	.byte 61
	.byte 0
.text
	leaq .L..44(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $160, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..45:
	.byte 44
	.byte 0
.text
	leaq .L..45(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $168, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..46:
	.byte 40
	.byte 0
.text
	leaq .L..46(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $176, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..47:
	.byte 41
	.byte 0
.text
	leaq .L..47(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $184, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..48:
	.byte 91
	.byte 0
.text
	leaq .L..48(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $192, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..49:
	.byte 93
	.byte 0
.text
	leaq .L..49(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $200, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..50:
	.byte 46
	.byte 0
.text
	leaq .L..50(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $208, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..51:
	.byte 42
	.byte 0
.text
	leaq .L..51(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $216, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..52:
	.byte 35
	.byte 0
.text
	leaq .L..52(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $224, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..53:
	.byte 33
	.byte 0
.text
	leaq .L..53(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $232, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..54:
	.byte 37
	.byte 0
.text
	leaq .L..54(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $240, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..55:
	.byte 38
	.byte 0
.text
	leaq .L..55(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $248, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..56:
	.byte 47
	.byte 0
.text
	leaq .L..56(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $256, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..57:
	.byte 124
	.byte 0
.text
	leaq .L..57(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $264, %rax
	push %rax
	leaq -272(%rbp), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L..58:
	.byte 38
	.byte 0
.text
	leaq .L..58(%rip), %rax
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
	leave
	ret
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
.L..5:
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
	leaq .L..5(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $48, %rsp
.data
.L..6:
	.byte 32
	.byte 124
	.byte 32
	.byte 10
	.byte 0
.text
	leaq .L..6(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L..7:
	.byte 32
	.byte 124
	.byte 32
	.byte 0
.text
	leaq .L..7(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.L..8.while.start:
	movq $10, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..9.false
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $0, %rax
	je .L..9.false
	movq $1, %rax
	jmp .L..9.end
.L..9.false:
	movq $0, %rax
.L..9.end:
	cmpq $1, %rax
	jne .L..8.while.end
	movq $9, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..10.ifelse
	movq $1, %rax
	push %rax
.data
.L..11:
	.byte 32
	.byte 0
.text
	leaq .L..11(%rip), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq write(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $24, %rsp
	jmp .L..10.ifend
.L..10.ifelse:
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
.L..10.ifend:
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
	jmp .L..8.while.start
.L..8.while.end:
.data
.L..12:
	.byte 10
	.byte 0
.text
	leaq .L..12(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L..13:
	.byte 32
	.byte 124
	.byte 32
	.byte 0
.text
	leaq .L..13(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
.data
.L..14:
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
	leaq .L..14(%rip), %rax
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
.L..15:
	.byte 32
	.byte 0
.text
	leaq .L..15(%rip), %rax
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
.L..16:
	.byte 94
	.byte 0
.text
	leaq .L..16(%rip), %rax
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
.L..17:
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
	leaq .L..17(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $32, %rsp
.data
.L..18:
	.byte 32
	.byte 124
	.byte 32
	.byte 10
	.byte 0
.text
	leaq .L..18(%rip), %rax
	push %rax
	leaq eprintf(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	movq $0, %rax
	leave
	ret
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
	addq $40, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
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
.global is_token
is_token:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq $0, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..0.ifelse
	movq $0, %rax
	leave
	ret
	jmp .L..0.ifend
.L..0.ifelse:
.L..0.ifend:
	leaq -8(%rbp), %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq strlen(%rip), %rax
	movq %rax, %r10
	movq $0, %rax
	callq *%r10
	addq $8, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movslq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..1.ifelse
	movq $0, %rax
	leave
	ret
	jmp .L..1.ifend
.L..1.ifelse:
.L..1.ifend:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L..2.while.start:
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..2.while.end
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imulq %rdi, %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imulq %rdi, %rax
	push %rax
	leaq 24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movzbq (%rax), %rax
	pop %rdi
	cmpq %rdi, %rax
	setne %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..3.ifelse
	movq $0, %rax
	leave
	ret
	jmp .L..3.ifend
.L..3.ifelse:
.L..3.ifend:
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
	jmp .L..2.while.start
.L..2.while.end:
	movq $1, %rax
	leave
	ret
	leave
	ret
.global get_token_lit
get_token_lit:
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
	movq $3, %rax
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
	jne .L..19.ifelse
	leaq -16(%rbp), %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L..19.ifend
.L..19.ifelse:
.L..19.ifend:
	movq $1, %rax
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
	jne .L..20.ifelse
	leaq -16(%rbp), %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L..20.ifend
.L..20.ifelse:
.L..20.ifend:
	leaq -8(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movslq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq 16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq strndup(%rip), %rax
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
	cmpq %rdi, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L..21.ifelse
.data
.L..22:
	.byte 101
	.byte 114
	.byte 114
	.byte 111
	.byte 114
	.byte 58
	.byte 32
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
	leaq .L..22(%rip), %rax
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
	jmp .L..21.ifend
.L..21.ifelse:
.L..21.ifend:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	leave
	ret
	leave
	ret
