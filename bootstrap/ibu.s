.text
.global _start
_start:
	push %rbp
	movq %rsp, %rbp
	movq 8(%rbp), %rdi
	leaq 16(%rbp), %rsi
	callq main
	movq %rax, %rdi
	movq $60, %rax
	syscall
.global main
main:
	push %rbp
	movq %rsp, %rbp
	subq $64, %rsp
	movl %edi, -64(%rbp)
	movq %rsi, -60(%rbp)
	movq $2, %rax
	push %rax
	leaq -64(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.0
.data
.L.str.0:
	.string "usage\n\tibu <filename>.ibu\n"
.text
	leaq .L.str.0(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	movq $0, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
	jmp .L.end.0
.L.else.0:
.L.end.0:
	leaq -52(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $420, %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call open
	addq $0, %rsp
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
	jne .L.else.1
.data
.L.str.1:
	.string "error: opening file %s\n"
.text
	leaq .L.str.1(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
	jmp .L.end.1
.L.else.1:
.L.end.1:
	leaq -48(%rbp), %rax
	push %rax
	movq $55000, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $55000, %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call read
	addq $0, %rsp
	leaq -52(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call close
	addq $0, %rsp
	leaq -40(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_tokenizer
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call tokenize
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call preprocess
	addq $0, %rsp
	leaq -16(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_parser
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	call new_gen
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen
	addq $0, %rsp
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
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
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
.data
.L.str.2:
	.string "name: %s, token lit: %s\n"
.text
	leaq .L.str.2(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call eprintf
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
	subq $32, %rsp
	movq %rdi, -32(%rbp)
	movq %rsi, -24(%rbp)
.L.while.start.3:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.3
	movq $0, %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.4
	jmp .L.preprocess.next
	jmp .L.end.4
.L.else.4:
.L.end.4:
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.3:
	.string "#"
.text
	leaq .L.str.3(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.5
	jmp .L.preprocess.next
	jmp .L.end.5
.L.else.5:
.L.end.5:
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.4:
	.string "define"
.text
	leaq .L.str.4(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.6
	jmp .L.preprocess.next
	jmp .L.end.6
.L.else.6:
.L.end.6:
	leaq -16(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_macro
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	addq $24, %rax
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
	jmp .L.while.start.3
.L.while.end.3:
.L.preprocess.next:
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call find_macro
	addq $0, %rsp
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
	jne .L.else.7
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call copy_token
	addq $0, %rsp
	jmp .L.end.7
.L.else.7:
.L.end.7:
	movq $0, %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.8
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call preprocess
	addq $0, %rsp
	jmp .L.end.8
.L.else.8:
.L.end.8:
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -16(%rbp), %rax
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.9:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.9
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.10
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.10
.L.else.10:
.L.end.10:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.9
.L.while.end.9:
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $24, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
.data
.L.str.5:
	.string ".text\n"
.text
	leaq .L.str.5(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.6:
	.string ".global _start\n"
.text
	leaq .L.str.6(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.7:
	.string "_start:\n"
.text
	leaq .L.str.7(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.8:
	.string "\tpush %rbp\n"
.text
	leaq .L.str.8(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.9:
	.string "\tmovq %rsp, %rbp\n"
.text
	leaq .L.str.9(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.10:
	.string "\tmovq 8(%rbp), %rdi\n"
.text
	leaq .L.str.10(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.11:
	.string "\tleaq 16(%rbp), %rsi\n"
.text
	leaq .L.str.11(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.12:
	.string "\tcallq main\n"
.text
	leaq .L.str.12(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.13:
	.string "\tmovq %rax, %rdi\n"
.text
	leaq .L.str.13(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.14:
	.string "\tmovq $60, %rax\n"
.text
	leaq .L.str.14(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.15:
	.string "\tsyscall\n"
.text
	leaq .L.str.15(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.11:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.11
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
	cmpq $1, %rax
	jne .L.else.12
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.13
	jmp .L.gen.next
	jmp .L.end.13
.L.else.13:
.L.end.13:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $54, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.14
	jmp .L.gen.next
	jmp .L.end.14
.L.else.14:
.L.end.14:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call assign_offset
	addq $0, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.16:
	.string ".global %s\n"
.text
	leaq .L.str.16(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.17:
	.string "%s:\n"
.text
	leaq .L.str.17(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.18:
	.string "\tpush %rbp\n"
.text
	leaq .L.str.18(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.19:
	.string "\tmovq %rsp, %rbp\n"
.text
	leaq .L.str.19(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.20:
	.string "\tsubq $%d, %rsp\n"
.text
	leaq .L.str.20(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_func_params
	addq $0, %rsp
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_node_block
	addq $0, %rsp
.data
.L.str.21:
	.string "\tleave\n"
.text
	leaq .L.str.21(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.22:
	.string "\tret\n"
.text
	leaq .L.str.22(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.12
.L.else.12:
.data
.L.str.23:
	.string "unreachable\n"
.text
	leaq .L.str.23(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
.L.end.12:
.L.gen.next:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.11
.L.while.end.11:
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	leaq -16(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -4(%rbp), %rax
	push %rax
	movq $16, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.15:
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.15
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $53, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.16
	movq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setg %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.17
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -4(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
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
	jmp .L.assign_offset.next
	jmp .L.end.17
.L.else.17:
.L.end.17:
	jmp .L.end.16
.L.else.16:
.L.end.16:
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
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
.L.assign_offset.next:
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.15
.L.while.end.15:
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global gen_func_params
gen_func_params:
	push %rbp
	movq %rsp, %rbp
	subq $20, %rsp
	movq %rdi, -20(%rbp)
	movq %rsi, -12(%rbp)
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.18:
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.18
	movq $5, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.19
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setg %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.20
	jmp .L.gen_func_params.next
	jmp .L.end.20
.L.else.20:
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.21
.data
.L.str.24:
	.string "\tmovq (%s), %s\n"
.text
	leaq .L.str.24(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.21
.L.else.21:
	movq $4, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.22
.data
.L.str.25:
	.string "\tmovslq (%s), %s\n"
.text
	leaq .L.str.25(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.22
.L.else.22:
	movq $2, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.23
.data
.L.str.26:
	.string "\tmovswl (%s), %s\n"
.text
	leaq .L.str.26(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.23
.L.else.23:
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.24
.data
.L.str.27:
	.string "\tmovsbl (%s), %s\n"
.text
	leaq .L.str.27(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.24
.L.else.24:
.data
.L.str.28:
	.string "unreachable\n"
.text
	leaq .L.str.28(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
.L.end.24:
.L.end.23:
.L.end.22:
.L.end.21:
.L.end.20:
	jmp .L.end.19
.L.else.19:
.L.end.19:
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.25
.data
.L.str.29:
	.string "\tmovb %s, %d(%rbp)\n"
.text
	leaq .L.str.29(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.25
.L.else.25:
	movq $2, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.26
.data
.L.str.30:
	.string "\tmovw %s, %d(%rbp)\n"
.text
	leaq .L.str.30(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.26
.L.else.26:
	movq $4, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.27
.data
.L.str.31:
	.string "\tmovl %s, %d(%rbp)\n"
.text
	leaq .L.str.31(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.27
.L.else.27:
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.28
.data
.L.str.32:
	.string "\tmovq %s, %d(%rbp)\n"
.text
	leaq .L.str.32(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.28
.L.else.28:
.data
.L.str.33:
	.string "unreachable\n"
.text
	leaq .L.str.33(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
.L.end.28:
.L.end.27:
.L.end.26:
.L.end.25:
.L.gen_func_params.next:
	leaq -12(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $63, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
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
	jmp .L.while.start.18
.L.while.end.18:
	leave
	ret
.global gen_node_block
gen_node_block:
	push %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.29:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.29
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_stmt
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $108, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.29
.L.while.end.29:
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
	subq $20, %rsp
	movq %rdi, -20(%rbp)
	movq %rsi, -12(%rbp)
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	movq $21, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.30
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_node_block
	addq $0, %rsp
	jmp .L.end.30
.L.else.30:
	movq $22, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.31
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
	jmp .L.end.31
.L.else.31:
	movq $18, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.32
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
.data
.L.str.34:
	.string "\tmovq %rbp, %rsp\n"
.text
	leaq .L.str.34(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.35:
	.string "\tpop %rbp\n"
.text
	leaq .L.str.35(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.36:
	.string "\tretq\n"
.text
	leaq .L.str.36(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.32
.L.else.32:
	movq $15, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.33
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
.data
.L.str.37:
	.string "\tcmpq $1, %rax\n"
.text
	leaq .L.str.37(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.38:
	.string "\tjne .L.else.%d\n"
.text
	leaq .L.str.38(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_stmt
	addq $0, %rsp
.data
.L.str.39:
	.string "\tjmp .L.end.%d\n"
.text
	leaq .L.str.39(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.40:
	.string ".L.else.%d:\n"
.text
	leaq .L.str.40(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.34
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_stmt
	addq $0, %rsp
	jmp .L.end.34
.L.else.34:
.L.end.34:
.data
.L.str.41:
	.string ".L.end.%d:\n"
.text
	leaq .L.str.41(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.33
.L.else.33:
	movq $23, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.35
.data
.L.str.42:
	.string "\tjmp .L.%s.%s\n"
.text
	leaq .L.str.42(%rip), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.35
.L.else.35:
	movq $24, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.36
.data
.L.str.43:
	.string ".L.%s.%s:\n"
.text
	leaq .L.str.43(%rip), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.36
.L.else.36:
	movq $16, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.37
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
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
.data
.L.str.44:
	.string ".L.while.start.%d:\n"
.text
	leaq .L.str.44(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
.data
.L.str.45:
	.string "\tcmpq $1, %rax\n"
.text
	leaq .L.str.45(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.46:
	.string "\tjne .L.while.end.%d\n"
.text
	leaq .L.str.46(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_stmt
	addq $0, %rsp
.data
.L.str.47:
	.string "\tjmp .L.while.start.%d\n"
.text
	leaq .L.str.47(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.48:
	.string ".L.while.end.%d:\n"
.text
	leaq .L.str.48(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.37
.L.else.37:
	movq $17, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.38
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_addr
	addq $0, %rsp
.data
.L.str.49:
	.string "\tpush %rax\n"
.text
	leaq .L.str.49(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
.data
.L.str.50:
	.string "\tpop %rdi\n"
.text
	leaq .L.str.50(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_store
	addq $0, %rsp
	jmp .L.end.38
.L.else.38:
.data
.L.str.51:
	.string "kind: %d\n"
.text
	leaq .L.str.51(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
.data
.L.str.52:
	.string "gen_stmt unreachable\n"
.text
	leaq .L.str.52(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
.L.end.38:
.L.end.37:
.L.end.36:
.L.end.35:
.L.end.33:
.L.end.32:
.L.end.31:
.L.end.30:
	leave
	ret
.global func_call_args_to_regi
func_call_args_to_regi:
	push %rbp
	movq %rsp, %rbp
	subq $28, %rsp
	movq %rdi, -28(%rbp)
	movq %rsi, -20(%rbp)
	movq $0, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
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
	leaq -12(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.40:
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.40
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.41
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
.data
.L.str.53:
	.string "\tpush %rax\n"
.text
	leaq .L.str.53(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.41
.L.else.41:
.L.end.41:
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
	leaq -12(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $108, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.40
.L.while.end.40:
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
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call pop_arg_regi
	addq $0, %rsp
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
	subq $28, %rsp
	movq %rdi, -28(%rbp)
	movq %rsi, -20(%rbp)
	movq $0, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.42
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.42
.L.else.42:
.L.end.42:
	leaq -12(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.43:
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.43
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
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
	jne .L.else.44
	leaq -4(%rbp), %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call func_call_copy_val_rsp
	addq $0, %rsp
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.44
.L.else.44:
.L.end.44:
	leaq -12(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $108, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.43
.L.while.end.43:
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
	subq $20, %rsp
	movq %rdi, -20(%rbp)
	movq %rsi, -12(%rbp)
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
.data
.L.str.54:
	.string "\tsubq $%d, %rsp\n"
.text
	leaq .L.str.54(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.45:
	leaq -12(%rbp), %rax
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
	jne .L.while.end.45
.data
.L.str.55:
	.string "\tmovb %d(%rax), %r10b\n"
.text
	leaq .L.str.55(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.56:
	.string "\tmovb %r10b, %d(%rsp)\n"
.text
	leaq .L.str.56(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
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
	jmp .L.while.start.45
.L.while.end.45:
	leaq -12(%rbp), %rax
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
.global pop_arg_regi
pop_arg_regi:
	push %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	movq %rdx, -8(%rbp)
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $108, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.46
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $108, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call pop_arg_regi
	addq $0, %rsp
	jmp .L.end.46
.L.else.46:
.L.end.46:
	movq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jne .L.else.47
.data
.L.str.57:
	.string "\tpop %s\n"
.text
	leaq .L.str.57(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.47
.L.else.47:
.L.end.47:
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	pop %rdi
	addl %edi, %eax
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global gen_condition_store
gen_condition_store:
	push %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq %rdi, -8(%rbp)
	movq $7, %rax
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
	jne .L.else.48
.data
.L.str.58:
	.string "\tmovzbq %al, %rax\n"
.text
	leaq .L.str.58(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.48
.L.else.48:
	movq $0, %rax
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
	jne .L.else.49
.data
.L.str.59:
	.string "\tmovzbq %al, %rax\n"
.text
	leaq .L.str.59(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.49
.L.else.49:
.data
.L.str.60:
	.string "\tmovzbl %al, %eax\n"
.text
	leaq .L.str.60(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.L.end.49:
.L.end.48:
	leave
	ret
.global gen_binop
gen_binop:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rdi, -16(%rbp)
	movq %rsi, -8(%rbp)
	movq $7, %rax
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
	jne .L.else.50
.data
.L.str.61:
	.string "\t%sq %rdi, %rax\n"
.text
	leaq .L.str.61(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.50
.L.else.50:
.data
.L.str.62:
	.string "\t%sl %edi, %eax\n"
.text
	leaq .L.str.62(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.L.end.50:
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
	subq $20, %rsp
	movq %rdi, -20(%rbp)
	movq %rsi, -12(%rbp)
	movl %edx, -4(%rbp)
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.51
.data
.L.str.63:
	.string "\tmovq (%s), %s\n"
.text
	leaq .L.str.63(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.51
.L.else.51:
	movq $4, %rax
	push %rax
	leaq -12(%rbp), %rax
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
.L.str.64:
	.string "\tmovslq (%s), %s\n"
.text
	leaq .L.str.64(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.52
.L.else.52:
	movq $2, %rax
	push %rax
	leaq -12(%rbp), %rax
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
.L.str.65:
	.string "\tmovswl (%s), %s\n"
.text
	leaq .L.str.65(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.53
.L.else.53:
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.54
.data
.L.str.66:
	.string "\tmovsbl (%s), %s\n"
.text
	leaq .L.str.66(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.54
.L.else.54:
.data
.L.str.67:
	.string "unreachable\n"
.text
	leaq .L.str.67(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
.L.end.54:
.L.end.53:
.L.end.52:
.L.end.51:
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
	subq $8, %rsp
	movq %rdi, -8(%rbp)
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
	jne .L.else.55
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.55
.L.else.55:
.L.end.55:
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.56
.data
.L.str.68:
	.string "\tmovq (%rax), %rax\n"
.text
	leaq .L.str.68(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.56
.L.else.56:
	movq $4, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.57
.data
.L.str.69:
	.string "\tmovslq (%rax), %rax\n"
.text
	leaq .L.str.69(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.57
.L.else.57:
	movq $2, %rax
	push %rax
	leaq -8(%rbp), %rax
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
.L.str.70:
	.string "\tmovswl (%rax), %eax\n"
.text
	leaq .L.str.70(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.58
.L.else.58:
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
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
.L.str.71:
	.string "\tmovsbl (%rax), %eax\n"
.text
	leaq .L.str.71(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.59
.L.else.59:
.data
.L.str.72:
	.string "unreachable\n"
.text
	leaq .L.str.72(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
.L.end.59:
.L.end.58:
.L.end.57:
.L.end.56:
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
	subq $12, %rsp
	movq %rdi, -12(%rbp)
	movq $5, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.60
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.61:
	leaq -12(%rbp), %rax
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
	jne .L.while.end.61
.data
.L.str.73:
	.string "\tmovb %d(%rax), %r8b\n"
.text
	leaq .L.str.73(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.74:
	.string "\tmovb %r8b, %d(%rdi)\n"
.text
	leaq .L.str.74(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
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
	jmp .L.while.start.61
.L.while.end.61:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.60
.L.else.60:
.L.end.60:
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.62
.data
.L.str.75:
	.string "\tmovb %al, (%rdi)\n"
.text
	leaq .L.str.75(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.62
.L.else.62:
	movq $2, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.63
.data
.L.str.76:
	.string "\tmovw %ax, (%rdi)\n"
.text
	leaq .L.str.76(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.63
.L.else.63:
	movq $4, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.64
.data
.L.str.77:
	.string "\tmovl %eax, (%rdi)\n"
.text
	leaq .L.str.77(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.64
.L.else.64:
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.65
.data
.L.str.78:
	.string "\tmovq %rax, (%rdi)\n"
.text
	leaq .L.str.78(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.65
.L.else.65:
.data
.L.str.79:
	.string "unreachable\n"
.text
	leaq .L.str.79(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
.L.end.65:
.L.end.64:
.L.end.63:
.L.end.62:
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
	subq $16, %rsp
	movq %rdi, -16(%rbp)
	movq %rsi, -8(%rbp)
	movq $27, %rax
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
	jne .L.else.66
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_addr
	addq $0, %rsp
.data
.L.str.80:
	.string "\taddq $%d, %rax\n"
.text
	leaq .L.str.80(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $96, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.66
.L.else.66:
	movq $14, %rax
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
	jne .L.else.67
.data
.L.str.81:
	.string "\tleaq %d(%rbp), %rax\n"
.text
	leaq .L.str.81(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $12, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.67
.L.else.67:
	movq $20, %rax
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
	jne .L.else.68
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
	jmp .L.end.68
.L.else.68:
.data
.L.str.82:
	.string "kind: %d\n"
.text
	leaq .L.str.82(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.83:
	.string "unreachable\n"
.text
	leaq .L.str.83(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
.L.end.68:
.L.end.67:
.L.end.66:
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	movq %rdx, -8(%rbp)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
.data
.L.str.84:
	.string "\tpush %rax\n"
.text
	leaq .L.str.84(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
.data
.L.str.85:
	.string "\tpop %rdi\n"
.text
	leaq .L.str.85(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leave
	ret
.global gen_expr
gen_expr:
	push %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.69
.data
.L.str.86:
	.string "node == nil. this shoult not happen!\n"
.text
	leaq .L.str.86(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
	jmp .L.end.69
.L.else.69:
.L.end.69:
	movq $27, %rax
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
	jne .L.else.70
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_addr
	addq $0, %rsp
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_load
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.70
.L.else.70:
.L.end.70:
	movq $12, %rax
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
	jne .L.else.71
	leaq -8(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -24(%rbp), %rax
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
.L.str.87:
	.string ".data\n"
.text
	leaq .L.str.87(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.88:
	.string ".L.str.%d:\n"
.text
	leaq .L.str.88(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.89:
	.string "\t.string %s\n"
.text
	leaq .L.str.89(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.90:
	.string ".text\n"
.text
	leaq .L.str.90(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.91:
	.string "\tleaq .L.str.%d(%rip), %rax\n"
.text
	leaq .L.str.91(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.71
.L.else.71:
.L.end.71:
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
	jne .L.else.72
.data
.L.str.92:
	.string "\tmovq $%d, %rax\n"
.text
	leaq .L.str.92(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.72
.L.else.72:
.L.end.72:
	movq $17, %rax
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
	jne .L.else.73
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_addr
	addq $0, %rsp
.data
.L.str.93:
	.string "\tpush %rax\n"
.text
	leaq .L.str.93(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
.data
.L.str.94:
	.string "\tpop %rdi\n"
.text
	leaq .L.str.94(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_store
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.73
.L.else.73:
.L.end.73:
	movq $14, %rax
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
	jne .L.else.74
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_addr
	addq $0, %rsp
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_load
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.74
.L.else.74:
.L.end.74:
	movq $25, %rax
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
	jne .L.else.75
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $100, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call func_call_args_to_regi
	addq $0, %rsp
	leaq -4(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $100, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call func_call_args_to_stack
	addq $0, %rsp
	pop %rdi
	movl %eax, (%rdi)
.data
.L.str.95:
	.string "\tmovq $0, %rax\n"
.text
	leaq .L.str.95(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.96:
	.string "\tcall %s\n"
.text
	leaq .L.str.96(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.97:
	.string "\taddq $%d, %rsp\n"
.text
	leaq .L.str.97(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.75
.L.else.75:
.L.end.75:
	movq $22, %rax
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
	jne .L.else.76
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.76
.L.else.76:
.L.end.76:
	movq $19, %rax
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
	jne .L.else.77
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_addr
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.77
.L.else.77:
.L.end.77:
	movq $20, %rax
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
	jne .L.else.78
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_load
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.78
.L.else.78:
.L.end.78:
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
	jne .L.else.79
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
.data
.L.str.98:
	.string "\tcmpq $0, %rax\n"
.text
	leaq .L.str.98(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.99:
	.string "\tsete %al\n"
.text
	leaq .L.str.99(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.100:
	.string "\tmovzbq %al, %rax\n"
.text
	leaq .L.str.100(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.79
.L.else.79:
.L.end.79:
	movq $0, %rax
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
	jne .L.else.80
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
	addq $0, %rsp
.data
.L.str.101:
	.string "add"
.text
	leaq .L.str.101(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.80
.L.else.80:
.L.end.80:
	movq $1, %rax
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
	jne .L.else.81
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
	addq $0, %rsp
.data
.L.str.102:
	.string "sub"
.text
	leaq .L.str.102(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.81
.L.else.81:
.L.end.81:
	movq $2, %rax
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
	jne .L.else.82
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
	addq $0, %rsp
.data
.L.str.103:
	.string "imul"
.text
	leaq .L.str.103(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.82
.L.else.82:
.L.end.82:
	movq $3, %rax
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
	jne .L.else.83
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
	addq $0, %rsp
	movq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jne .L.else.84
.data
.L.str.104:
	.string "\tcqto\n"
.text
	leaq .L.str.104(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.84
.L.else.84:
.data
.L.str.105:
	.string "\tcltd\n"
.text
	leaq .L.str.105(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.L.end.84:
	movq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jne .L.else.85
.data
.L.str.106:
	.string "\tidivq %rdi\n"
.text
	leaq .L.str.106(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.85
.L.else.85:
.data
.L.str.107:
	.string "\tidivl %edi\n"
.text
	leaq .L.str.107(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.L.end.85:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.83
.L.else.83:
.L.end.83:
	movq $4, %rax
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
	jne .L.else.86
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
	addq $0, %rsp
	movq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jne .L.else.87
.data
.L.str.108:
	.string "\tcqto\n"
.text
	leaq .L.str.108(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.87
.L.else.87:
.data
.L.str.109:
	.string "\tcltd\n"
.text
	leaq .L.str.109(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.L.end.87:
	movq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jne .L.else.88
.data
.L.str.110:
	.string "\tidivq %rdi\n"
.text
	leaq .L.str.110(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.88
.L.else.88:
.data
.L.str.111:
	.string "\tidivl %edi\n"
.text
	leaq .L.str.111(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.L.end.88:
.data
.L.str.112:
	.string "\tmovq %rdx, %rax\n"
.text
	leaq .L.str.112(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.86
.L.else.86:
.L.end.86:
	movq $7, %rax
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
	jne .L.else.89
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
	addq $0, %rsp
.data
.L.str.113:
	.string "cmp"
.text
	leaq .L.str.113(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
	addq $0, %rsp
.data
.L.str.114:
	.string "\tsete %al\n"
.text
	leaq .L.str.114(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.89
.L.else.89:
.L.end.89:
	movq $6, %rax
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
	jne .L.else.90
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
	addq $0, %rsp
.data
.L.str.115:
	.string "cmp"
.text
	leaq .L.str.115(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
	addq $0, %rsp
.data
.L.str.116:
	.string "\tsetne %al\n"
.text
	leaq .L.str.116(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.90
.L.else.90:
.L.end.90:
	movq $26, %rax
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
	jne .L.else.91
	leaq -8(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -24(%rbp), %rax
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
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
.data
.L.str.117:
	.string "\tcmpq $0, %rax\n"
.text
	leaq .L.str.117(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.118:
	.string "\tje .L.false.%d\n"
.text
	leaq .L.str.118(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	addq $0, %rsp
.data
.L.str.119:
	.string "\tcmpq $0, %rax\n"
.text
	leaq .L.str.119(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.120:
	.string "\tje .L.false.%d\n"
.text
	leaq .L.str.120(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.121:
	.string "\tmovq $1, %rax\n"
.text
	leaq .L.str.121(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.122:
	.string "\tjmp .L.end.%d\n"
.text
	leaq .L.str.122(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.123:
	.string ".L.false.%d:\n"
.text
	leaq .L.str.123(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.124:
	.string "\tmovq $0, %rax\n"
.text
	leaq .L.str.124(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
.data
.L.str.125:
	.string ".L.end.%d:\n"
.text
	leaq .L.str.125(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.91
.L.else.91:
.L.end.91:
	movq $10, %rax
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
	jne .L.else.92
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
	addq $0, %rsp
.data
.L.str.126:
	.string "cmp"
.text
	leaq .L.str.126(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
	addq $0, %rsp
.data
.L.str.127:
	.string "\tsetge %al\n"
.text
	leaq .L.str.127(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.92
.L.else.92:
.L.end.92:
	movq $11, %rax
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
	jne .L.else.93
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
	addq $0, %rsp
.data
.L.str.128:
	.string "cmp"
.text
	leaq .L.str.128(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
	addq $0, %rsp
.data
.L.str.129:
	.string "\tsetg %al\n"
.text
	leaq .L.str.129(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.93
.L.else.93:
.L.end.93:
	movq $8, %rax
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
	jne .L.else.94
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
	addq $0, %rsp
.data
.L.str.130:
	.string "cmp"
.text
	leaq .L.str.130(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
	addq $0, %rsp
.data
.L.str.131:
	.string "\tsetle %al\n"
.text
	leaq .L.str.131(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.94
.L.else.94:
.L.end.94:
	movq $9, %rax
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
	jne .L.else.95
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
	addq $0, %rsp
.data
.L.str.132:
	.string "cmp"
.text
	leaq .L.str.132(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
	addq $0, %rsp
.data
.L.str.133:
	.string "\tsetl %al\n"
.text
	leaq .L.str.133(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.95
.L.else.95:
.L.end.95:
.data
.L.str.134:
	.string "kind: %d unreachable\n"
.text
	leaq .L.str.134(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
	leave
	ret
.global new_gen
new_gen:
	push %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $48, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $6, %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.135:
	.string "%rdi"
.text
	leaq .L.str.135(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.136:
	.string "%rsi"
.text
	leaq .L.str.136(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $2, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.137:
	.string "%rdx"
.text
	leaq .L.str.137(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $3, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.138:
	.string "%rcx"
.text
	leaq .L.str.138(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $4, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.139:
	.string "%r8"
.text
	leaq .L.str.139(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $5, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.140:
	.string "%r9"
.text
	leaq .L.str.140(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	movq $6, %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.141:
	.string "%edi"
.text
	leaq .L.str.141(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.142:
	.string "%esi"
.text
	leaq .L.str.142(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $2, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.143:
	.string "%edx"
.text
	leaq .L.str.143(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $3, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.144:
	.string "%ecx"
.text
	leaq .L.str.144(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $4, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.145:
	.string "%r8d"
.text
	leaq .L.str.145(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $5, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.146:
	.string "%r9d"
.text
	leaq .L.str.146(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	movq $6, %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.147:
	.string "%di"
.text
	leaq .L.str.147(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.148:
	.string "%si"
.text
	leaq .L.str.148(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $2, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.149:
	.string "%dx"
.text
	leaq .L.str.149(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $3, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.150:
	.string "%cx"
.text
	leaq .L.str.150(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $4, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.151:
	.string "%r8w"
.text
	leaq .L.str.151(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $5, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.152:
	.string "%r9w"
.text
	leaq .L.str.152(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	movq $6, %rax
	push %rax
	movq $8, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.153:
	.string "%dil"
.text
	leaq .L.str.153(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.154:
	.string "%sil"
.text
	leaq .L.str.154(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $2, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.155:
	.string "%dl"
.text
	leaq .L.str.155(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $3, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.156:
	.string "%cl"
.text
	leaq .L.str.156(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $4, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.157:
	.string "%r8b"
.text
	leaq .L.str.157(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $8, %rax
	push %rax
	movq $5, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
.data
.L.str.158:
	.string "%r9b"
.text
	leaq .L.str.158(%rip), %rax
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
.global parse
parse:
	push %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq %rdi, -8(%rbp)
.L.while.start.96:
	movq $4, %rax
	push %rax
	leaq -8(%rbp), %rax
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
	jne .L.while.end.96
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.159:
	.string "func"
.text
	leaq .L.str.159(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.97
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_func
	addq $0, %rsp
	jmp .L.end.97
.L.else.97:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.160:
	.string "struct"
.text
	leaq .L.str.160(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.98
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_struct
	addq $0, %rsp
	jmp .L.end.98
.L.else.98:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.161:
	.string "expected `func` or `struct`"
.text
	leaq .L.str.161(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
.L.end.98:
.L.end.97:
	jmp .L.while.start.96
.L.while.end.96:
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
	subq $48, %rsp
	movq %rdi, -48(%rbp)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -40(%rbp), %rax
	push %rax
	movq $71, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -32(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.162:
	.string "("
.text
	leaq .L.str.162(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.163:
	.string ")"
.text
	leaq .L.str.163(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.99
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_func_params
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.99
.L.else.99:
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
.L.end.99:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.164:
	.string ")"
.text
	leaq .L.str.164(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	leaq -16(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_ty
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.165:
	.string ";"
.text
	leaq .L.str.165(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.100
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.166:
	.string ";"
.text
	leaq .L.str.166(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	movq $0, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call find_globals
	addq $0, %rsp
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.101
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.167:
	.string "function is already declared somewhere."
.text
	leaq .L.str.167(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	jmp .L.end.101
.L.else.101:
.L.end.101:
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_func_type
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.100
.L.else.100:
	leaq -8(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call find_globals
	addq $0, %rsp
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
	jne .L.else.102
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.103
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.168:
	.string "function is already defined somewhere"
.text
	leaq .L.str.168(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	jmp .L.end.103
.L.else.103:
.L.end.103:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call cmp_func_params
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.104
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.169:
	.string "function declaration paramaters does not match to definition"
.text
	leaq .L.str.169(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	jmp .L.end.104
.L.else.104:
.L.end.104:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call cmp_type
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.105
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.170:
	.string "function declaration return type does not match to definition"
.text
	leaq .L.str.170(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	jmp .L.end.105
.L.else.105:
.L.end.105:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_block
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -48(%rbp), %rax
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
	addq $24, %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.102
.L.else.102:
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_func_type
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_block
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.end.102:
.L.end.100:
	leave
	ret
.global cmp_func_params
cmp_func_params:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rdi, -16(%rbp)
	movq %rsi, -8(%rbp)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.106
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.106
.L.else.106:
.L.end.106:
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.107
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.107
.L.else.107:
.L.end.107:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.108
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.108
.L.else.108:
.L.end.108:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call cmp_func_param
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.109
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.109
.L.else.109:
.L.end.109:
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.110
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call cmp_func_params
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.111
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.111
.L.else.111:
.L.end.111:
	jmp .L.end.110
.L.else.110:
.L.end.110:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.112
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call cmp_func_params
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.113
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.113
.L.else.113:
.L.end.113:
	jmp .L.end.112
.L.else.112:
.L.end.112:
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
	subq $16, %rsp
	movq %rdi, -16(%rbp)
	movq %rsi, -8(%rbp)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.114
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.114
.L.else.114:
.L.end.114:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.115
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.115
.L.else.115:
.L.end.115:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call cmp_type
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.116
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.116
.L.else.116:
.L.end.116:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_struct
parse_struct:
	push %rbp
	movq %rsp, %rbp
	subq $84, %rsp
	movq %rdi, -84(%rbp)
	leaq -76(%rbp), %rax
	addq $20, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	push %rax
	leaq -76(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.171:
	.string "struct"
.text
	leaq .L.str.171(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	leaq -40(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -24(%rbp), %rax
	push %rax
	movq $49, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $5, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.172:
	.string ";"
.text
	leaq .L.str.172(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.117
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.173:
	.string ";"
.text
	leaq .L.str.173(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	movq $0, %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call get_user_defined_type
	addq $0, %rsp
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.118
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_user_defined_type
	addq $0, %rsp
	jmp .L.end.118
.L.else.118:
.L.end.118:
	jmp .L.end.117
.L.else.117:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.174:
	.string "{"
.text
	leaq .L.str.174(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
.L.while.start.119:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.175:
	.string "}"
.text
	leaq .L.str.175(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.119
	leaq -16(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -48(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_ty
	addq $0, %rsp
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_member
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.176:
	.string ";"
.text
	leaq .L.str.176(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	jmp .L.while.start.119
.L.while.end.119:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.177:
	.string "}"
.text
	leaq .L.str.177(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -76(%rbp), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -76(%rbp), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call calc_sizof_struct_members
	addq $0, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call get_user_defined_type
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
	jne .L.else.120
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_user_defined_type
	addq $0, %rsp
	jmp .L.end.120
.L.else.120:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.121
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.178:
	.string "struct is already defined somewhere"
.text
	leaq .L.str.178(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	jmp .L.end.121
.L.else.121:
.L.end.121:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -76(%rbp), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -76(%rbp), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call calc_sizof_struct_members
	addq $0, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
.L.end.120:
.L.end.117:
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
	subq $20, %rsp
	movq %rdi, -20(%rbp)
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.122:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.122
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
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
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.122
.L.while.end.122:
	leaq -12(%rbp), %rax
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $28, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
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
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_func_params
parse_func_params:
	push %rbp
	movq %rsp, %rbp
	subq $103, %rsp
	movq %rdi, -103(%rbp)
	leaq -24(%rbp), %rax
	push %rax
	leaq -95(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.123:
	leaq -103(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.179:
	.string ")"
.text
	leaq .L.str.179(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.123
	leaq -8(%rbp), %rax
	push %rax
	leaq -103(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	leaq -103(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -103(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -24(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $63, %rax
	push %rax
	leaq -103(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -103(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_ty
	addq $0, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_local_object
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $53, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -103(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.180:
	.string ","
.text
	leaq .L.str.180(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.124
	leaq -103(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.181:
	.string ","
.text
	leaq .L.str.181(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	jmp .L.end.124
.L.else.124:
.L.end.124:
	leaq -103(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.182:
	.string ")"
.text
	leaq .L.str.182(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.125
	jmp .L.parse_func_params.end
	jmp .L.end.125
.L.else.125:
.L.end.125:
	jmp .L.while.start.123
.L.while.end.123:
.L.parse_func_params.end:
	leaq -95(%rbp), %rax
	addq $63, %rax
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
	subq $8, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $116, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
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
	subq $148, %rsp
	movq %rdi, -148(%rbp)
	leaq -140(%rbp), %rax
	push %rax
	movq $21, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -132(%rbp), %rax
	addq $108, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	leaq -132(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -148(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.183:
	.string "{"
.text
	leaq .L.str.183(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
.L.while.start.126:
	leaq -148(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.184:
	.string "}"
.text
	leaq .L.str.184(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.126
	leaq -8(%rbp), %rax
	push %rax
	leaq -148(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_stmt
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -148(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	addq $0, %rsp
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.127
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $108, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.127
.L.else.127:
.L.end.127:
	jmp .L.while.start.126
.L.while.end.126:
	leaq -148(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.185:
	.string "}"
.text
	leaq .L.str.185(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	leaq -140(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq -132(%rbp), %rax
	addq $108, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -140(%rbp), %rax
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
	movq %rdi, -64(%rbp)
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.186:
	.string "var"
.text
	leaq .L.str.186(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.128
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -48(%rbp), %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -32(%rbp), %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_ty
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_local_object
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.187:
	.string "="
.text
	leaq .L.str.187(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.129
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.188:
	.string "="
.text
	leaq .L.str.188(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	leaq -16(%rbp), %rax
	push %rax
	movq $14, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	push %rax
	movq $17, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr_stmt
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.129
.L.else.129:
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.189:
	.string ";"
.text
	leaq .L.str.189(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
.L.end.129:
	jmp .L.end.128
.L.else.128:
.L.end.128:
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.190:
	.string "goto"
.text
	leaq .L.str.190(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.130
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.191:
	.string ";"
.text
	leaq .L.str.191(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	leaq -56(%rbp), %rax
	push %rax
	movq $23, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.130
.L.else.130:
.L.end.130:
	movq $4, %rax
	push %rax
	leaq -64(%rbp), %rax
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
	jne .L.else.131
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.192:
	.string ":"
.text
	leaq .L.str.192(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.132
	leaq -8(%rbp), %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.193:
	.string ":"
.text
	leaq .L.str.193(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	leaq -56(%rbp), %rax
	push %rax
	movq $24, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $52, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.132
.L.else.132:
.L.end.132:
	jmp .L.end.131
.L.else.131:
.L.end.131:
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.194:
	.string "if"
.text
	leaq .L.str.194(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.133
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -56(%rbp), %rax
	push %rax
	movq $15, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_block
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.195:
	.string "else"
.text
	leaq .L.str.195(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.134
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_stmt
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.134
.L.else.134:
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
.L.end.134:
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.133
.L.else.133:
.L.end.133:
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.196:
	.string "while"
.text
	leaq .L.str.196(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.135
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -56(%rbp), %rax
	push %rax
	movq $16, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.197:
	.string "{"
.text
	leaq .L.str.197(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.136
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.136
.L.else.136:
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	movq $0, %rax
	call node_true
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.136:
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_block
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.135
.L.else.135:
.L.end.135:
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.198:
	.string "return"
.text
	leaq .L.str.198(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.137
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -56(%rbp), %rax
	push %rax
	movq $18, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr_stmt
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.137
.L.else.137:
.L.end.137:
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.199:
	.string "{"
.text
	leaq .L.str.199(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.138
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_block
	addq $0, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.138
.L.else.138:
.L.end.138:
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr_stmt
	addq $0, %rsp
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
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $22, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.200:
	.string ";"
.text
	leaq .L.str.200(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	leaq -16(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_relational
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.139:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.139
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.201:
	.string "=="
.text
	leaq .L.str.201(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.140
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_relational
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.141
	leaq -16(%rbp), %rax
	push %rax
	movq $7, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_equality
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.141
.L.else.141:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.142
	leaq -16(%rbp), %rax
	push %rax
	movq $7, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_relational
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.142
.L.else.142:
	leaq -16(%rbp), %rax
	push %rax
	movq $7, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.142:
.L.end.141:
	jmp .L.parse_equality.continue
	jmp .L.end.140
.L.else.140:
.L.end.140:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.202:
	.string "!="
.text
	leaq .L.str.202(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.143
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_relational
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.144
	leaq -16(%rbp), %rax
	push %rax
	movq $6, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_equality
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.144
.L.else.144:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.145
	leaq -16(%rbp), %rax
	push %rax
	movq $6, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_relational
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.145
.L.else.145:
	leaq -16(%rbp), %rax
	push %rax
	movq $6, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.145:
.L.end.144:
	jmp .L.parse_equality.continue
	jmp .L.end.143
.L.else.143:
.L.end.143:
	jmp .L.parse_equality.end
.L.parse_equality.continue:
	jmp .L.while.start.139
.L.while.end.139:
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	leaq -16(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_add
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.146:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.146
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.203:
	.string "<="
.text
	leaq .L.str.203(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.147
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_add
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.148
	leaq -16(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_relational
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.148
.L.else.148:
	leaq -16(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.148:
	jmp .L.parse_relational.again
	jmp .L.end.147
.L.else.147:
.L.end.147:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.204:
	.string ">="
.text
	leaq .L.str.204(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.149
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_add
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.150
	leaq -16(%rbp), %rax
	push %rax
	movq $10, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_relational
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.150
.L.else.150:
	leaq -16(%rbp), %rax
	push %rax
	movq $10, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.150:
	jmp .L.parse_relational.again
	jmp .L.end.149
.L.else.149:
.L.end.149:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.205:
	.string "<"
.text
	leaq .L.str.205(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.151
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_add
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.152
	leaq -16(%rbp), %rax
	push %rax
	movq $9, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_relational
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.152
.L.else.152:
	leaq -16(%rbp), %rax
	push %rax
	movq $9, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.152:
	jmp .L.parse_relational.again
	jmp .L.end.151
.L.else.151:
.L.end.151:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.206:
	.string ">"
.text
	leaq .L.str.206(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.153
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_add
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.154
	leaq -16(%rbp), %rax
	push %rax
	movq $11, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_relational
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.154
.L.else.154:
	leaq -16(%rbp), %rax
	push %rax
	movq $11, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.end.154:
	jmp .L.parse_relational.again
	jmp .L.end.153
.L.else.153:
.L.end.153:
	jmp .L.parse_relational.end
.L.parse_relational.again:
	jmp .L.while.start.146
.L.while.end.146:
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
	subq $28, %rsp
	movl %edi, -28(%rbp)
	movq %rsi, -24(%rbp)
	movq %rdx, -16(%rbp)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.155
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.156
	leaq -8(%rbp), %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call search_relational_rhs
	addq $0, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call search_relational_lhs
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $26, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $26, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.156
.L.else.156:
.L.end.156:
	jmp .L.end.155
.L.else.155:
.L.end.155:
	leaq -8(%rbp), %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call search_relational_lhs
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $26, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
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
	subq $28, %rsp
	movl %edi, -28(%rbp)
	movq %rsi, -24(%rbp)
	movq %rdx, -16(%rbp)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.157
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.158
	leaq -8(%rbp), %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call search_relational_rhs
	addq $0, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call search_relational_lhs
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $26, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $26, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.158
.L.else.158:
.L.end.158:
	jmp .L.end.157
.L.else.157:
.L.end.157:
	leaq -8(%rbp), %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call search_relational_rhs
	addq $0, %rsp
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	movq $26, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
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
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.159:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.while.end.159
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.159
.L.while.end.159:
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
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.160:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.while.end.160
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.160
.L.while.end.160:
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
	subq $8, %rsp
	movq %rdi, -8(%rbp)
	movq $8, %rax
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
	jne .L.else.161
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.161
.L.else.161:
.L.end.161:
	movq $10, %rax
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
	jne .L.else.162
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.162
.L.else.162:
.L.end.162:
	movq $9, %rax
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
	jne .L.else.163
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.163
.L.else.163:
.L.end.163:
	movq $11, %rax
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
	jne .L.else.164
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.164
.L.else.164:
.L.end.164:
	movq $7, %rax
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
	jne .L.else.165
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.165
.L.else.165:
.L.end.165:
	movq $6, %rax
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
	jne .L.else.166
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.166
.L.else.166:
.L.end.166:
	movq $26, %rax
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
	jne .L.else.167
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.167
.L.else.167:
.L.end.167:
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
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_mul
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.168:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.168
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.207:
	.string "+"
.text
	leaq .L.str.207(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.169
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_mul
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_add.again
	jmp .L.end.169
.L.else.169:
.L.end.169:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.208:
	.string "-"
.text
	leaq .L.str.208(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.170
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_mul
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_add.again
	jmp .L.end.170
.L.else.170:
.L.end.170:
	jmp .L.parse_add.end
.L.parse_add.again:
	jmp .L.while.start.168
.L.while.end.168:
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
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_unary
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.171:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.171
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.209:
	.string "*"
.text
	leaq .L.str.209(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.172
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_unary
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_mul.again
	jmp .L.end.172
.L.else.172:
.L.end.172:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.210:
	.string "/"
.text
	leaq .L.str.210(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.173
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_unary
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_mul.again
	jmp .L.end.173
.L.else.173:
.L.end.173:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.211:
	.string "%"
.text
	leaq .L.str.211(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.174
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_unary
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_mul.again
	jmp .L.end.174
.L.else.174:
.L.end.174:
	jmp .L.parse_mul.end
.L.parse_mul.again:
	jmp .L.while.start.171
.L.while.end.171:
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
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
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
	leaq -16(%rbp), %rax
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
	subq $28, %rsp
	movl %edi, -28(%rbp)
	movq %rsi, -24(%rbp)
	movq %rdx, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
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
.global parse_deref
parse_deref:
	push %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	leaq -16(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $20, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_unary
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	addq $0, %rsp
	movq $7, %rax
	push %rax
	leaq -8(%rbp), %rax
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
	jne .L.else.175
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.212:
	.string "invalid pointer dereference"
.text
	leaq .L.str.212(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	jmp .L.end.175
.L.else.175:
.L.end.175:
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
	subq $40, %rsp
	movl %edi, -40(%rbp)
	movq %rsi, -36(%rbp)
	movl %edx, -28(%rbp)
	movq %rcx, -24(%rbp)
	movq %r8, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $116, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -40(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $96, %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
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
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global search_struct_member
search_struct_member:
	push %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.176:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.176
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.177
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.177
.L.else.177:
.L.end.177:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.176
.L.while.end.176:
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
	movq %rdi, -16(%rbp)
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jne .L.else.178
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call atoi
	addq $0, %rsp
	pop %rdi
	movl %eax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	jmp .L.end.178
.L.else.178:
	movq $2, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jne .L.else.179
	leaq -8(%rbp), %rax
	push %rax
	movq $12, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	jmp .L.end.179
.L.else.179:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.213:
	.string "nil"
.text
	leaq .L.str.213(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.180
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.180
.L.else.180:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.214:
	.string "true"
.text
	leaq .L.str.214(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.181
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.181
.L.else.181:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.215:
	.string "false"
.text
	leaq .L.str.215(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.182
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.182
.L.else.182:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.216:
	.string "typesize"
.text
	leaq .L.str.216(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.183
	leaq -8(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.217:
	.string "("
.text
	leaq .L.str.217(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_ty
	addq $0, %rsp
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.218:
	.string ")"
.text
	leaq .L.str.218(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	jmp .L.end.183
.L.else.183:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.219:
	.string "sizeof"
.text
	leaq .L.str.219(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.184
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_sizeof
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.184
.L.else.184:
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_ident
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.185
.L.else.185:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.220:
	.string "("
.text
	leaq .L.str.220(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.186
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.221:
	.string ")"
.text
	leaq .L.str.221(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	jmp .L.end.186
.L.else.186:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.222:
	.string "expected number or identifier"
.text
	leaq .L.str.222(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
.L.end.186:
.L.end.185:
.L.end.184:
.L.end.183:
.L.end.182:
.L.end.181:
.L.end.180:
.L.end.179:
.L.end.178:
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
	subq $40, %rsp
	movq %rdi, -40(%rbp)
	leaq -16(%rbp), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.223:
	.string "("
.text
	leaq .L.str.223(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.187
	leaq -32(%rbp), %rax
	push %rax
	movq $25, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.224:
	.string "("
.text
	leaq .L.str.224(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $100, %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_args
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.225:
	.string ")"
.text
	leaq .L.str.225(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	leaq -24(%rbp), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call find_globals
	addq $0, %rsp
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
	jne .L.else.188
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.226:
	.string "unkown function"
.text
	leaq .L.str.226(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	jmp .L.end.188
.L.else.188:
.L.end.188:
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.187
.L.else.187:
	leaq -32(%rbp), %rax
	push %rax
	movq $14, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call find_locals
	addq $0, %rsp
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
	jne .L.else.189
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.227:
	.string "unkown object"
.text
	leaq .L.str.227(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	jmp .L.end.189
.L.else.189:
.L.end.189:
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.end.187:
	leaq -32(%rbp), %rax
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
	subq $20, %rsp
	movq %rdi, -20(%rbp)
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.228:
	.string "("
.text
	leaq .L.str.228(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	leaq -12(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_unary
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.229:
	.string ")"
.text
	leaq .L.str.229(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	addq $0, %rsp
	leaq -4(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
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
	addq $60, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -20(%rbp), %rax
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
	subq $84, %rsp
	movq %rdi, -84(%rbp)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.230:
	.string "*"
.text
	leaq .L.str.230(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.190
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_deref
	addq $0, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.190
.L.else.190:
.L.end.190:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.231:
	.string "&"
.text
	leaq .L.str.231(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.191
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -76(%rbp), %rax
	push %rax
	movq $19, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_unary
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.191
.L.else.191:
.L.end.191:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.232:
	.string "!"
.text
	leaq .L.str.232(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.192
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -76(%rbp), %rax
	push %rax
	movq $5, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_unary
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.192
.L.else.192:
.L.end.192:
	leaq -76(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_number
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.193:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.193
	leaq -68(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.233:
	.string "++"
.text
	leaq .L.str.233(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.194
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -76(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $17, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call node_num_one
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call node_num_one
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.again
	jmp .L.end.194
.L.else.194:
.L.end.194:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.234:
	.string "--"
.text
	leaq .L.str.234(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.195
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -76(%rbp), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $17, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call node_num_one
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call node_num_one
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.again
	jmp .L.end.195
.L.else.195:
.L.end.195:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.235:
	.string "["
.text
	leaq .L.str.235(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.196
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	addq $0, %rsp
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -60(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.236:
	.string "]"
.text
	leaq .L.str.236(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	movq $7, %rax
	push %rax
	leaq -76(%rbp), %rax
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
	jne .L.else.197
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.237:
	.string "`[]` cannot access to none pointer type."
.text
	leaq .L.str.237(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	jmp .L.end.197
.L.else.197:
.L.end.197:
	leaq -52(%rbp), %rax
	push %rax
	movq $13, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $60, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	push %rax
	movq $20, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $0, %rax
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_struct_access_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.again
	jmp .L.end.196
.L.else.196:
.L.end.196:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.238:
	.string "."
.text
	leaq .L.str.238(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.198
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -36(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -28(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	addq $0, %rsp
	movq $7, %rax
	push %rax
	leaq -76(%rbp), %rax
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
	jne .L.else.199
	movq $5, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.200
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.239:
	.string "cannot access from none struct type"
.text
	leaq .L.str.239(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	jmp .L.end.200
.L.else.200:
.L.end.200:
	leaq -20(%rbp), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call search_struct_member
	addq $0, %rsp
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
	jne .L.else.201
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.240:
	.string "member name not found"
.text
	leaq .L.str.240(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	jmp .L.end.201
.L.else.201:
.L.end.201:
	leaq -76(%rbp), %rax
	push %rax
	movq $20, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_struct_access_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.199
.L.else.199:
	movq $5, %rax
	push %rax
	leaq -76(%rbp), %rax
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
	jne .L.else.202
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.241:
	.string "cannot access from none struct type"
.text
	leaq .L.str.241(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	jmp .L.end.202
.L.else.202:
.L.end.202:
	leaq -20(%rbp), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call search_struct_member
	addq $0, %rsp
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
	jne .L.else.203
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.242:
	.string "member name not found"
.text
	leaq .L.str.242(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	jmp .L.end.203
.L.else.203:
.L.end.203:
.L.end.199:
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
	leaq -76(%rbp), %rax
	push %rax
	movq $27, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_struct_access_node
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.again
	jmp .L.end.198
.L.else.198:
.L.end.198:
	jmp .L.parse_unary.end
.L.parse_unary.again:
	jmp .L.while.start.193
.L.while.end.193:
.L.parse_unary.end:
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global parse_args
parse_args:
	push %rbp
	movq %rsp, %rbp
	subq $132, %rsp
	movq %rdi, -132(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -124(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -132(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.243:
	.string ")"
.text
	leaq .L.str.243(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.204
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.204
.L.else.204:
.L.end.204:
.L.parse_args.loop:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $108, %rax
	push %rax
	leaq -132(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq -132(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	addq $0, %rsp
	leaq -132(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.244:
	.string ","
.text
	leaq .L.str.244(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.205
	leaq -132(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.245:
	.string ","
.text
	leaq .L.str.245(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	jmp .L.parse_args.loop
	jmp .L.end.205
.L.else.205:
.L.end.205:
	leaq -124(%rbp), %rax
	addq $108, %rax
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
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_equality
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.246:
	.string "="
.text
	leaq .L.str.246(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.206
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_skip
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $17, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	addq $0, %rsp
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.206
.L.else.206:
.L.end.206:
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
	movq %rdi, -32(%rbp)
	leaq -24(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.247:
	.string "i64"
.text
	leaq .L.str.247(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.207
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.207
.L.else.207:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.248:
	.string "i32"
.text
	leaq .L.str.248(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.208
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.208
.L.else.208:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.249:
	.string "i16"
.text
	leaq .L.str.249(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.209
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.209
.L.else.209:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.250:
	.string "i8"
.text
	leaq .L.str.250(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.210
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.210
.L.else.210:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.251:
	.string "bool"
.text
	leaq .L.str.251(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.211
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.211
.L.else.211:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.252:
	.string "*"
.text
	leaq .L.str.252(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.212
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_ty
	addq $0, %rsp
	push %rax
	pop %rdi
	movq $0, %rax
	call new_pointer_type
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.212
.L.else.212:
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call get_user_defined_type
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
	jne .L.else.213
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.253:
	.string "unkown type found"
.text
	leaq .L.str.253(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	jmp .L.end.213
.L.else.213:
.L.end.213:
.L.end.212:
.L.end.211:
.L.end.210:
.L.end.209:
.L.end.208:
.L.end.207:
	leaq -8(%rbp), %rax
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.214:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.214
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $108, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.while.start.214
.L.while.end.214:
	leave
	ret
.global add_type
add_type:
	push %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.215
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.215
.L.else.215:
.L.end.215:
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.216
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.216
.L.else.216:
.L.end.216:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	addq $0, %rsp
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	addq $0, %rsp
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	addq $0, %rsp
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type_block
	addq $0, %rsp
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type_block
	addq $0, %rsp
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type_block
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $100, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.217:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.217
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $108, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.217
.L.while.end.217:
	movq $12, %rax
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
	jne .L.else.218
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_pointer_type
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.218
.L.else.218:
.L.end.218:
	movq $23, %rax
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
	jne .L.else.219
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.219
.L.else.219:
.L.end.219:
	movq $24, %rax
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
	jne .L.else.220
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.220
.L.else.220:
.L.end.220:
	movq $25, %rax
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
	jne .L.else.221
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.221
.L.else.221:
.L.end.221:
	movq $15, %rax
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
	jne .L.else.222
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.222
.L.else.222:
.L.end.222:
	movq $16, %rax
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
	jne .L.else.223
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.223
.L.else.223:
.L.end.223:
	movq $18, %rax
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
	jne .L.else.224
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.224
.L.else.224:
.L.end.224:
	movq $0, %rax
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
	jne .L.else.225
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.225
.L.else.225:
.L.end.225:
	movq $1, %rax
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
	jne .L.else.226
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.226
.L.else.226:
.L.end.226:
	movq $2, %rax
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
	jne .L.else.227
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.227
.L.else.227:
.L.end.227:
	movq $3, %rax
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
	jne .L.else.228
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.228
.L.else.228:
.L.end.228:
	movq $4, %rax
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
	jne .L.else.229
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.229
.L.else.229:
.L.end.229:
	movq $17, %rax
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
	jne .L.else.230
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.230
.L.else.230:
.L.end.230:
	movq $0, %rax
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
	jne .L.else.231
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.231
.L.else.231:
.L.end.231:
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
	jne .L.else.232
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.232
.L.else.232:
.L.end.232:
	movq $7, %rax
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
	jne .L.else.233
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.233
.L.else.233:
.L.end.233:
	movq $6, %rax
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
	jne .L.else.234
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.234
.L.else.234:
.L.end.234:
	movq $8, %rax
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
	jne .L.else.235
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.235
.L.else.235:
.L.end.235:
	movq $9, %rax
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
	jne .L.else.236
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.236
.L.else.236:
.L.end.236:
	movq $11, %rax
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
	jne .L.else.237
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.237
.L.else.237:
.L.end.237:
	movq $10, %rax
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
	jne .L.else.238
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.238
.L.else.238:
.L.end.238:
	movq $26, %rax
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
	jne .L.else.239
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.239
.L.else.239:
.L.end.239:
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
	jne .L.else.240
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.240
.L.else.240:
.L.end.240:
	movq $14, %rax
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
	jne .L.else.241
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	addq $44, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.241
.L.else.241:
.L.end.241:
	movq $19, %rax
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
	jne .L.else.242
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_pointer_type
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.242
.L.else.242:
.L.end.242:
	movq $20, %rax
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
	jne .L.else.243
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.243
.L.else.243:
.L.end.243:
	movq $22, %rax
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
	jne .L.else.244
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.244
.L.else.244:
.L.end.244:
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
	subq $16, %rsp
	movq %rdi, -16(%rbp)
	movq %rsi, -8(%rbp)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $41, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
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
.global new_local_object
new_local_object:
	push %rbp
	movq %rsp, %rbp
	subq $44, %rsp
	movq %rdi, -44(%rbp)
	movl %esi, -36(%rbp)
	movq %rdx, -32(%rbp)
	movq %rcx, -24(%rbp)
	movq %r8, -16(%rbp)
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call check_local_object_already_exist
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	movq $71, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
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
	jne .L.else.245
.data
.L.str.254:
	.string "nil"
.text
	leaq .L.str.254(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
	jmp .L.end.245
.L.else.245:
.L.end.245:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -36(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	push %rax
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
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
	subq $32, %rsp
	movq %rdi, -32(%rbp)
	movq %rsi, -24(%rbp)
	movq %rdx, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.246:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.246
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.247
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.255:
	.string "name already exist"
.text
	leaq .L.str.255(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	jmp .L.end.247
.L.else.247:
.L.end.247:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.246
.L.while.end.246:
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.248:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.248
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.249
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.249
.L.else.249:
.L.end.249:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.248
.L.while.end.248:
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.250:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.250
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.251
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.251
.L.else.251:
.L.end.251:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.250
.L.while.end.250:
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
	subq $16, %rsp
	movq %rdi, -16(%rbp)
	movq %rsi, -8(%rbp)
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.252
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.252
.L.else.252:
.L.end.252:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.253
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.253
.L.else.253:
.L.end.253:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.254
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.254
.L.else.254:
.L.end.254:
	movq $6, %rax
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
	jne .L.else.255
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call cmp_type
	addq $0, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.255
.L.else.255:
.L.end.255:
	movq $7, %rax
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
	jne .L.else.256
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call cmp_type
	addq $0, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.256
.L.else.256:
.L.end.256:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.257
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.257
.L.else.257:
.L.end.257:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.258
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.258
.L.else.258:
.L.end.258:
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
	subq $16, %rsp
	movq %rdi, -16(%rbp)
	movq %rsi, -8(%rbp)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.259
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	addq $0, %rsp
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.259
.L.else.259:
.L.end.259:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.256:
	.string "unexpected token"
.text
	leaq .L.str.256(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
	leave
	ret
.global new_node
new_node:
	push %rbp
	movq %rsp, %rbp
	subq $12, %rsp
	movl %edi, -12(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $116, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
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
	jne .L.else.260
.data
.L.str.257:
	.string "nil"
.text
	leaq .L.str.257(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
	jmp .L.end.260
.L.else.260:
.L.end.260:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
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
	subq $8, %rsp
	movq %rdi, -8(%rbp)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.261
.data
.L.str.258:
	.string "parser_next got nil!!!\n"
.text
	leaq .L.str.258(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
	jmp .L.end.261
.L.else.261:
.L.end.261:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global atoi
atoi:
	push %rbp
	movq %rsp, %rbp
	subq $17, %rsp
	movq %rdi, -17(%rbp)
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
	leaq -17(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.262
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
	jmp .L.end.262
.L.else.262:
.L.end.262:
.L.while.start.263:
	movq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -9(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -17(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.263
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
	leaq -17(%rbp), %rax
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
	jmp .L.while.start.263
.L.while.end.263:
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.264
	leaq -5(%rbp), %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq -5(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -5(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.end.264
.L.else.264:
.L.end.264:
	leaq -5(%rbp), %rax
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
	subq $24, %rsp
	movl %edi, -24(%rbp)
	movq %rsi, -20(%rbp)
	movl %edx, -12(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.265
	movq $1, %rax
	push %rax
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
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	movq $48, %rax
	pop %rdi
	movb %al, (%rdi)
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
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
	jmp .L.end.265
.L.else.265:
.L.end.265:
.L.while.start.266:
	movq $0, %rax
	push %rax
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.266
	leaq -4(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
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
	jne .L.else.267
	movq $1, %rax
	push %rax
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
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
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
	jmp .L.end.267
.L.else.267:
	movq $1, %rax
	push %rax
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
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
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
.L.end.267:
	leaq -24(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cltd
	idivl %edi
	pop %rdi
	movl %eax, (%rdi)
	jmp .L.while.start.266
.L.while.end.266:
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
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
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call reverse
	addq $0, %rsp
	leaq -20(%rbp), %rax
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
	subq $21, %rsp
	movq %rdi, -21(%rbp)
	movl %esi, -13(%rbp)
	leaq -9(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -5(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -13(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.268:
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
	jne .L.while.end.268
	leaq -1(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -9(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -21(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movsbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
	movq $1, %rax
	push %rax
	leaq -9(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -21(%rbp), %rax
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
	leaq -21(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movsbl (%rax), %eax
	pop %rdi
	movb %al, (%rdi)
	movq $1, %rax
	push %rax
	leaq -5(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -21(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	push %rax
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
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
	jmp .L.while.start.268
.L.while.end.268:
	leave
	ret
.global new_parser
new_parser:
	push %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $80, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
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
	jne .L.else.269
.data
.L.str.259:
	.string "nil"
.text
	leaq .L.str.259(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
	jmp .L.end.269
.L.else.269:
.L.end.269:
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
	addq $16, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $8, %rax
	push %rax
.data
.L.str.260:
	.string "i64"
.text
	leaq .L.str.260(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_builtin_type
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	movq $1, %rax
	push %rax
	movq $4, %rax
	push %rax
.data
.L.str.261:
	.string "i32"
.text
	leaq .L.str.261(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_builtin_type
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	movq $2, %rax
	push %rax
	movq $2, %rax
	push %rax
.data
.L.str.262:
	.string "i16"
.text
	leaq .L.str.262(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_builtin_type
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	movq $3, %rax
	push %rax
	movq $1, %rax
	push %rax
.data
.L.str.263:
	.string "i8"
.text
	leaq .L.str.263(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_builtin_type
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	movq $4, %rax
	push %rax
	movq $1, %rax
	push %rax
.data
.L.str.264:
	.string "bool"
.text
	leaq .L.str.264(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_builtin_type
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.265:
	.string "alloc"
.text
	leaq .L.str.265(%rip), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_pointer_type
	addq $0, %rsp
	push %rax
	pop %rdi
	movq $0, %rax
	call new_func_type
	addq $0, %rsp
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	addq $0, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.266:
	.string "open"
.text
	leaq .L.str.266(%rip), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_func_type
	addq $0, %rsp
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	addq $0, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.267:
	.string "close"
.text
	leaq .L.str.267(%rip), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_func_type
	addq $0, %rsp
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	addq $0, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.268:
	.string "read"
.text
	leaq .L.str.268(%rip), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_func_type
	addq $0, %rsp
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	addq $0, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.269:
	.string "write"
.text
	leaq .L.str.269(%rip), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_func_type
	addq $0, %rsp
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	addq $0, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.270:
	.string "exit"
.text
	leaq .L.str.270(%rip), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_func_type
	addq $0, %rsp
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	addq $0, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.271:
	.string "printf"
.text
	leaq .L.str.271(%rip), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_func_type
	addq $0, %rsp
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	addq $0, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.272:
	.string "eprintf"
.text
	leaq .L.str.272(%rip), %rax
	push %rax
	movq $0, %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_func_type
	addq $0, %rsp
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	addq $0, %rsp
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	push %rax
	leaq -24(%rbp), %rax
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
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $49, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
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
	addq $24, %rax
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
.global new_pointer_type
new_pointer_type:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $49, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
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
	addq $32, %rax
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
.global new_builtin_type
new_builtin_type:
	push %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	movl %edi, -24(%rbp)
	movl %esi, -20(%rbp)
	movq %rdx, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $49, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.270:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.270
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.271
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.271
.L.else.271:
.L.end.271:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $41, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.270
.L.while.end.270:
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	leaq -16(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.272:
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.272
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
	jne .L.else.273
.data
.L.str.273:
	.string "struct %s {\n"
.text
	leaq .L.str.273(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.274:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.274
.data
.L.str.274:
	.string "  %s\n"
.text
	leaq .L.str.274(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.274
.L.while.end.274:
.data
.L.str.275:
	.string "}\n"
.text
	leaq .L.str.275(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	jmp .L.end.273
.L.else.273:
.data
.L.str.276:
	.string "got unkown userdefined type `%s`"
.text
	leaq .L.str.276(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
.L.end.273:
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $41, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.272
.L.while.end.272:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global add_builtin_object
add_builtin_object:
	push %rbp
	movq %rsp, %rbp
	subq $44, %rsp
	movq %rdi, -44(%rbp)
	movq %rsi, -36(%rbp)
	movl %edx, -28(%rbp)
	movq %rcx, -24(%rbp)
	movq %r8, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $71, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
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
	jne .L.else.275
.data
.L.str.277:
	.string "nil"
.text
	leaq .L.str.277(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
	jmp .L.end.275
.L.else.275:
.L.end.275:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
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
	addq $44, %rax
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
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $55, %rax
	push %rax
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
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
.global strcmp
strcmp:
	push %rbp
	movq %rsp, %rbp
	subq $20, %rsp
	movq %rdi, -20(%rbp)
	movq %rsi, -12(%rbp)
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.276:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.276
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
	movsbl (%rax), %eax
	push %rax
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
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.277
	movq $0, %rax
	push %rax
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
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.278
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.278
.L.else.278:
.L.end.278:
	jmp .L.strcmp.ok_next
	jmp .L.end.277
.L.else.277:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
.L.end.277:
.L.strcmp.ok_next:
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
	jmp .L.while.start.276
.L.while.end.276:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global print_all_tokens
print_all_tokens:
	push %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq %rdi, -8(%rbp)
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
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
.data
.L.str.278:
	.string "kind = %d\n lit = %s\n----------\n"
.text
	leaq .L.str.278(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	addq $0, %rsp
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.280
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print_all_tokens
	addq $0, %rsp
	jmp .L.end.280
.L.else.280:
.L.end.280:
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
	subq $56, %rsp
	movq %rdi, -56(%rbp)
	leaq -16(%rbp), %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.281:
	movq $0, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.281
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call skip_single_line_comment
	addq $0, %rsp
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call isdigit
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.282
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call tokenize_number
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.282
.L.else.282:
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call isalpha
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.283
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call tokenize_ident
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.283
.L.else.283:
	movq $34, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.284
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call tokenize_string
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.284
.L.else.284:
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_two_c_punct
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.285
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	movq $2, %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_token
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.285
.L.else.285:
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call ispunct
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.else.286
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	movq $3, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_token
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	movq $1, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.end.286
.L.else.286:
	movq $32, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.287
	movq $1, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.end.287
.L.else.287:
	movq $10, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.288
	movq $1, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.end.288
.L.else.288:
	movq $9, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.289
	movq $1, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.end.289
.L.else.289:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $5, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_token
	addq $0, %rsp
	push %rax
.data
.L.str.279:
	.string "unkown character found"
.text
	leaq .L.str.279(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	addq $0, %rsp
.L.end.289:
.L.end.288:
.L.end.287:
.L.end.286:
.L.end.285:
.L.end.284:
.L.end.283:
.L.end.282:
	jmp .L.while.start.281
.L.while.end.281:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	movq $4, %rax
	push %rax
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_token
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
.data
.L.str.280:
	.string "EOF"
.text
	leaq .L.str.280(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	addq $24, %rax
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
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.290:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.290
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call isalpha
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.291
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call isdigit
	addq $0, %rsp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.292
	movq $95, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.293
	jmp .L.tokenize_ident.ident_end
	jmp .L.end.293
.L.else.293:
.L.end.293:
	jmp .L.end.292
.L.else.292:
.L.end.292:
	jmp .L.end.291
.L.else.291:
.L.end.291:
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.290
.L.while.end.290:
.L.tokenize_ident.ident_end:
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_token
	addq $0, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global tokenize_string
tokenize_string:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
.L.while.start.294:
	movq $34, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.294
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.294
.L.while.end.294:
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	movq $2, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_token
	addq $0, %rsp
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global skip_single_line_comment
skip_single_line_comment:
	push %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq %rdi, -8(%rbp)
	movq $47, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.295
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.295
.L.else.295:
.L.end.295:
	movq $47, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.296
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
.L.while.start.297:
	movq $10, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.297
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.298
	jmp .L.skip_single_line_comment.end
	jmp .L.end.298
.L.else.298:
.L.end.298:
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.297
.L.while.end.297:
	jmp .L.end.296
.L.else.296:
.L.end.296:
.L.skip_single_line_comment.end:
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
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.299:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call isdigit
	addq $0, %rsp
	cmpq $1, %rax
	jne .L.while.end.299
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.299
.L.while.end.299:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_token
	addq $0, %rsp
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
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
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
	jne .L.else.300
.data
.L.str.281:
	.string "nil"
.text
	leaq .L.str.281(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
	jmp .L.end.300
.L.else.300:
.L.end.300:
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
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global ispunct
ispunct:
	push %rbp
	movq %rsp, %rbp
	subq $9, %rsp
	movb %dil, -9(%rbp)
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.282:
	.string "+-<>;:{}=,()[].*#!%&/"
.text
	leaq .L.str.282(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.301:
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
	jne .L.while.end.301
	leaq -9(%rbp), %rax
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
	jne .L.else.302
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.302
.L.else.302:
.L.end.302:
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
	jmp .L.while.start.301
.L.while.end.301:
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
	subq $24, %rsp
	movl %edi, -24(%rbp)
	movq %rsi, -20(%rbp)
	movl %edx, -12(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $32, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
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
	jne .L.else.303
.data
.L.str.283:
	.string "nil"
.text
	leaq .L.str.283(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
	jmp .L.end.303
.L.else.303:
.L.end.303:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strndup
	addq $0, %rsp
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	leaq -12(%rbp), %rax
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movl %esi, -16(%rbp)
	leaq -12(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	addq $0, %rsp
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
	jne .L.else.304
.data
.L.str.284:
	.string "nil"
.text
	leaq .L.str.284(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
	jmp .L.end.304
.L.else.304:
.L.end.304:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.305:
	leaq -16(%rbp), %rax
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
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -24(%rbp), %rax
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
	jmp .L.while.start.305
.L.while.end.305:
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global isdigit
isdigit:
	push %rbp
	movq %rsp, %rbp
	subq $1, %rsp
	movb %dil, -1(%rbp)
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	push %rax
	movq $48, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.307
	movq $57, %rax
	push %rax
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.307
	movq $1, %rax
	jmp .L.end.307
.L.false.307:
	movq $0, %rax
.L.end.307:
	cmpq $1, %rax
	jne .L.else.306
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.306
.L.else.306:
.L.end.306:
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
	subq $1, %rsp
	movb %dil, -1(%rbp)
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	push %rax
	movq $65, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.309
	movq $90, %rax
	push %rax
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.309
	movq $1, %rax
	jmp .L.end.309
.L.false.309:
	movq $0, %rax
.L.end.309:
	cmpq $1, %rax
	jne .L.else.308
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.308
.L.else.308:
.L.end.308:
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	push %rax
	movq $97, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.311
	movq $122, %rax
	push %rax
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.311
	movq $1, %rax
	jmp .L.end.311
.L.false.311:
	movq $0, %rax
.L.end.311:
	cmpq $1, %rax
	jne .L.else.310
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.310
.L.else.310:
.L.end.310:
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
	subq $20, %rsp
	movq %rdi, -20(%rbp)
	leaq -12(%rbp), %rax
	push %rax
.data
.L.str.285:
	.string "==<=>=!=++--"
.text
	leaq .L.str.285(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.312:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.312
	movq $11, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setge %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.313
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.313
.L.else.313:
.L.end.313:
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
	movsbl (%rax), %eax
	push %rax
	movq $1, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.314
	movq $1, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -12(%rbp), %rax
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.315
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.315
.L.else.315:
.L.end.315:
	jmp .L.end.314
.L.else.314:
.L.end.314:
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
	jmp .L.while.start.312
.L.while.end.312:
	leave
	ret
.global print_error
print_error:
	push %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	movq %rdx, -8(%rbp)
.data
.L.str.286:
	.string "error:%d:%d: %s\n"
.text
	leaq .L.str.286(%rip), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call get_line_number
	addq $0, %rsp
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call get_column_number
	addq $0, %rsp
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call eprintf
	addq $0, %rsp
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	addq $0, %rsp
	leave
	ret
.global get_column_number
get_column_number:
	push %rbp
	movq %rsp, %rbp
	subq $20, %rsp
	movq %rdi, -20(%rbp)
	movq %rsi, -12(%rbp)
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.316:
	movq $10, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.316
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.317
	jmp .L.get_column_number.end
	jmp .L.end.317
.L.else.317:
.L.end.317:
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	addq %rdi, %rax
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
	jmp .L.while.start.316
.L.while.end.316:
.L.get_column_number.end:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global get_line_number
get_line_number:
	push %rbp
	movq %rsp, %rbp
	subq $20, %rsp
	movq %rdi, -20(%rbp)
	movq %rsi, -12(%rbp)
	leaq -4(%rbp), %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.318:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.318
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	addq %rdi, %rax
	movq $10, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.319
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
	jmp .L.end.319
.L.else.319:
.L.end.319:
	jmp .L.while.start.318
.L.while.end.318:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
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
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.320:
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.320
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.320
.L.while.end.320:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
