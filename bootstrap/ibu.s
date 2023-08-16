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
	subq $60, %rsp
	movl %edi, -60(%rbp)
	movq %rsi, -56(%rbp)
	movq $2, %rax
	push %rax
	leaq -60(%rbp), %rax
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
	movq $0, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.0
.L.else.0:
.L.end.0:
	leaq -48(%rbp), %rax
	push %rax
	movq $8, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -56(%rbp), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
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
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.1
.L.else.1:
.L.end.1:
	leaq -40(%rbp), %rax
	push %rax
	movq $55000, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $55000, %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call read
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call close
	leaq -32(%rbp), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_tokenizer
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call tokenize
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_parser
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	call new_gen
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
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
.data
.L.str.2:
	.string ".text\n"
.text
	leaq .L.str.2(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.3:
	.string ".global _start\n"
.text
	leaq .L.str.3(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.4:
	.string "_start:\n"
.text
	leaq .L.str.4(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.5:
	.string "\tpush %rbp\n"
.text
	leaq .L.str.5(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.6:
	.string "\tmovq %rsp, %rbp\n"
.text
	leaq .L.str.6(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.7:
	.string "\tmovq 8(%rbp), %rdi\n"
.text
	leaq .L.str.7(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.8:
	.string "\tleaq 16(%rbp), %rsi\n"
.text
	leaq .L.str.8(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.9:
	.string "\tcallq main\n"
.text
	leaq .L.str.9(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.10:
	.string "\tmovq %rax, %rdi\n"
.text
	leaq .L.str.10(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.11:
	.string "\tmovq $60, %rax\n"
.text
	leaq .L.str.11(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.12:
	.string "\tsyscall\n"
.text
	leaq .L.str.12(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
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
	push %rax
.data
.L.str.13:
	.string "OBJ_FUNC"
.text
	leaq .L.str.13(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.3
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.4
	jmp .L.gen.next
	jmp .L.end.4
.L.else.4:
.L.end.4:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $57, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.5
	jmp .L.gen.next
	jmp .L.end.5
.L.else.5:
.L.end.5:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call assign_offset
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
.L.str.14:
	.string ".global %s\n"
.text
	leaq .L.str.14(%rip), %rax
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
.data
.L.str.15:
	.string "%s:\n"
.text
	leaq .L.str.15(%rip), %rax
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
.data
.L.str.16:
	.string "\tpush %rbp\n"
.text
	leaq .L.str.16(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.17:
	.string "\tmovq %rsp, %rbp\n"
.text
	leaq .L.str.17(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.18:
	.string "\tsubq $%d, %rsp\n"
.text
	leaq .L.str.18(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_func_params
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_node_block
.data
.L.str.19:
	.string "\tleave\n"
.text
	leaq .L.str.19(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.20:
	.string "\tret\n"
.text
	leaq .L.str.20(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.3
.L.else.3:
.data
.L.str.21:
	.string "unreachable\n"
.text
	leaq .L.str.21(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.3:
.L.gen.next:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $58, %rax
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
.global gen_func_params
gen_func_params:
	push %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	movq %rdi, -24(%rbp)
	movq %rsi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.6:
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.6
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.22:
	.string "TY_STRUCT"
.text
	leaq .L.str.22(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.7
	movq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setg %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.8
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.9:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
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
	jne .L.while.end.9
.data
.L.str.23:
	.string "\tmovb %d(%s), %r10b\n"
.text
	leaq .L.str.23(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
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
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.24:
	.string "\tmovb %r10b, -%d(%rbp)\n"
.text
	leaq .L.str.24(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	pop %rdi
	subl %edi, %eax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
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
	jmp .L.while.start.9
.L.while.end.9:
	jmp .L.gen_func_params.next
	jmp .L.end.8
.L.else.8:
	movq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.10
.data
.L.str.25:
	.string "\tmovq (%s), %s\n"
.text
	leaq .L.str.25(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
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
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
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
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.10
.L.else.10:
	movq $4, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.11
.data
.L.str.26:
	.string "\tmovslq (%s), %s\n"
.text
	leaq .L.str.26(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
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
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
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
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.11
.L.else.11:
	movq $2, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.12
.data
.L.str.27:
	.string "\tmovswl (%s), %s\n"
.text
	leaq .L.str.27(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
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
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -24(%rbp), %rax
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
	jmp .L.end.12
.L.else.12:
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.13
.data
.L.str.28:
	.string "\tmovsbl (%s), %s\n"
.text
	leaq .L.str.28(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
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
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -24(%rbp), %rax
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
	jmp .L.end.13
.L.else.13:
.data
.L.str.29:
	.string "unreachable\n"
.text
	leaq .L.str.29(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.13:
.L.end.12:
.L.end.11:
.L.end.10:
.L.end.8:
	jmp .L.end.7
.L.else.7:
.L.end.7:
	movq $1, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.14
.data
.L.str.30:
	.string "\tmovb %s, -%d(%rbp)\n"
.text
	leaq .L.str.30(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.14
.L.else.14:
	movq $2, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.15
.data
.L.str.31:
	.string "\tmovw %s, -%d(%rbp)\n"
.text
	leaq .L.str.31(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.15
.L.else.15:
	movq $4, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.16
.data
.L.str.32:
	.string "\tmovl %s, -%d(%rbp)\n"
.text
	leaq .L.str.32(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.16
.L.else.16:
	movq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.17
.data
.L.str.33:
	.string "\tmovq %s, -%d(%rbp)\n"
.text
	leaq .L.str.33(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -8(%rbp), %rax
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
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.17
.L.else.17:
.data
.L.str.34:
	.string "unreachable\n"
.text
	leaq .L.str.34(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.17:
.L.end.16:
.L.end.15:
.L.end.14:
.L.gen_func_params.next:
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $66, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
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
	jmp .L.while.start.6
.L.while.end.6:
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
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.18:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.18
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
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.18
.L.while.end.18:
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
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.35:
	.string "ND_BLOCK"
.text
	leaq .L.str.35(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.19
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
	jmp .L.end.19
.L.else.19:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.36:
	.string "ND_EXPR_STMT"
.text
	leaq .L.str.36(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.20
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	jmp .L.end.20
.L.else.20:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.37:
	.string "ND_RETURN"
.text
	leaq .L.str.37(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.21
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
.data
.L.str.38:
	.string "\tmovq %rbp, %rsp\n"
.text
	leaq .L.str.38(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.39:
	.string "\tpop %rbp\n"
.text
	leaq .L.str.39(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.40:
	.string "\tretq\n"
.text
	leaq .L.str.40(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.21
.L.else.21:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.41:
	.string "ND_IF"
.text
	leaq .L.str.41(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.22
	leaq -4(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
.data
.L.str.42:
	.string "\tcmpq $1, %rax\n"
.text
	leaq .L.str.42(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.43:
	.string "\tjne .L.else.%d\n"
.text
	leaq .L.str.43(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_stmt
.data
.L.str.44:
	.string "\tjmp .L.end.%d\n"
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
.data
.L.str.45:
	.string ".L.else.%d:\n"
.text
	leaq .L.str.45(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.23
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_stmt
	jmp .L.end.23
.L.else.23:
.L.end.23:
.data
.L.str.46:
	.string ".L.end.%d:\n"
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
	jmp .L.end.22
.L.else.22:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.47:
	.string "ND_GOTO"
.text
	leaq .L.str.47(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.24
.data
.L.str.48:
	.string "\tjmp .L.%s.%s\n"
.text
	leaq .L.str.48(%rip), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.24
.L.else.24:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.49:
	.string "ND_LABEL"
.text
	leaq .L.str.49(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.25
.data
.L.str.50:
	.string ".L.%s.%s:\n"
.text
	leaq .L.str.50(%rip), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.25
.L.else.25:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.51:
	.string "ND_WHILE"
.text
	leaq .L.str.51(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.26
	leaq -4(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
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
.data
.L.str.52:
	.string ".L.while.start.%d:\n"
.text
	leaq .L.str.52(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
.data
.L.str.53:
	.string "\tcmpq $1, %rax\n"
.text
	leaq .L.str.53(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.54:
	.string "\tjne .L.while.end.%d\n"
.text
	leaq .L.str.54(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_stmt
.data
.L.str.55:
	.string "\tjmp .L.while.start.%d\n"
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
.data
.L.str.56:
	.string ".L.while.end.%d:\n"
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
	jmp .L.end.26
.L.else.26:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.57:
	.string "ND_ASSIGN"
.text
	leaq .L.str.57(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.27
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_addr
.data
.L.str.58:
	.string "\tpush %rax\n"
.text
	leaq .L.str.58(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
.data
.L.str.59:
	.string "\tpop %rdi\n"
.text
	leaq .L.str.59(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_store
	jmp .L.end.27
.L.else.27:
.data
.L.str.60:
	.string "%s\n"
.text
	leaq .L.str.60(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call eprintf
.data
.L.str.61:
	.string "gen_stmt unreachable\n"
.text
	leaq .L.str.61(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.27:
.L.end.26:
.L.end.25:
.L.end.24:
.L.end.22:
.L.end.21:
.L.end.20:
.L.end.19:
	leave
	ret
.global func_call_args_to_regi
func_call_args_to_regi:
	push %rbp
	movq %rsp, %rbp
	subq $20, %rsp
	movq %rdi, -20(%rbp)
	movq %rsi, -12(%rbp)
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
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
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.29:
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.29
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
.data
.L.str.62:
	.string "\tpush %rax\n"
.text
	leaq .L.str.62(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
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
	addq $112, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.29
.L.while.end.29:
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
.L.while.start.30:
	movq $0, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setge %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.30
.data
.L.str.63:
	.string "\tpop %s\n"
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
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
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
	jmp .L.while.start.30
.L.while.end.30:
	leave
	ret
.global gen_condition_store
gen_condition_store:
	push %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq %rdi, -8(%rbp)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.64:
	.string "TY_PTR"
.text
	leaq .L.str.64(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.31
.data
.L.str.65:
	.string "\tmovzbq %al, %rax\n"
.text
	leaq .L.str.65(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.31
.L.else.31:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.66:
	.string "TY_I64"
.text
	leaq .L.str.66(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.32
.data
.L.str.67:
	.string "\tmovzbq %al, %rax\n"
.text
	leaq .L.str.67(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.32
.L.else.32:
.data
.L.str.68:
	.string "\tmovzbl %al, %eax\n"
.text
	leaq .L.str.68(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.L.end.32:
.L.end.31:
	leave
	ret
.global gen_binop
gen_binop:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rdi, -16(%rbp)
	movq %rsi, -8(%rbp)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.69:
	.string "TY_PTR"
.text
	leaq .L.str.69(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.33
.data
.L.str.70:
	.string "\t%sq %rdi, %rax\n"
.text
	leaq .L.str.70(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.33
.L.else.33:
.data
.L.str.71:
	.string "\t%sl %edi, %eax\n"
.text
	leaq .L.str.71(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
.L.end.33:
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
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.34
.data
.L.str.72:
	.string "\tmovq (%s), %s\n"
.text
	leaq .L.str.72(%rip), %rax
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
	jmp .L.end.34
.L.else.34:
	movq $4, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.35
.data
.L.str.73:
	.string "\tmovslq (%s), %s\n"
.text
	leaq .L.str.73(%rip), %rax
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
	jmp .L.end.35
.L.else.35:
	movq $2, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.36
.data
.L.str.74:
	.string "\tmovswl (%s), %s\n"
.text
	leaq .L.str.74(%rip), %rax
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
	jmp .L.end.36
.L.else.36:
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.37
.data
.L.str.75:
	.string "\tmovsbl (%s), %s\n"
.text
	leaq .L.str.75(%rip), %rax
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
	jmp .L.end.37
.L.else.37:
.data
.L.str.76:
	.string "unreachable\n"
.text
	leaq .L.str.76(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.37:
.L.end.36:
.L.end.35:
.L.end.34:
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
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.77:
	.string "TY_STRUCT"
.text
	leaq .L.str.77(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.38
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.38
.L.else.38:
.L.end.38:
	movq $8, %rax
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
	jne .L.else.39
.data
.L.str.78:
	.string "\tmovq (%rax), %rax\n"
.text
	leaq .L.str.78(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.39
.L.else.39:
	movq $4, %rax
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
	jne .L.else.40
.data
.L.str.79:
	.string "\tmovslq (%rax), %rax\n"
.text
	leaq .L.str.79(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.40
.L.else.40:
	movq $2, %rax
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
	jne .L.else.41
.data
.L.str.80:
	.string "\tmovswl (%rax), %eax\n"
.text
	leaq .L.str.80(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.41
.L.else.41:
	movq $1, %rax
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
	jne .L.else.42
.data
.L.str.81:
	.string "\tmovsbl (%rax), %eax\n"
.text
	leaq .L.str.81(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.42
.L.else.42:
.data
.L.str.82:
	.string "unreachable\n"
.text
	leaq .L.str.82(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.42:
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
	subq $12, %rsp
	movq %rdi, -12(%rbp)
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.83:
	.string "TY_STRUCT"
.text
	leaq .L.str.83(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.43
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.44:
	leaq -12(%rbp), %rax
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
	jne .L.while.end.44
.data
.L.str.84:
	.string "\tmovb %d(%rax), %r8b\n"
.text
	leaq .L.str.84(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.85:
	.string "\tmovb %r8b, %d(%rdi)\n"
.text
	leaq .L.str.85(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
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
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.43
.L.else.43:
.L.end.43:
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.45
.data
.L.str.86:
	.string "\tmovb %al, (%rdi)\n"
.text
	leaq .L.str.86(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.45
.L.else.45:
	movq $2, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.46
.data
.L.str.87:
	.string "\tmovw %ax, (%rdi)\n"
.text
	leaq .L.str.87(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.46
.L.else.46:
	movq $4, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.47
.data
.L.str.88:
	.string "\tmovl %eax, (%rdi)\n"
.text
	leaq .L.str.88(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.47
.L.else.47:
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.48
.data
.L.str.89:
	.string "\tmovq %rax, (%rdi)\n"
.text
	leaq .L.str.89(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.48
.L.else.48:
.data
.L.str.90:
	.string "unreachable\n"
.text
	leaq .L.str.90(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.48:
.L.end.47:
.L.end.46:
.L.end.45:
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
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.91:
	.string "ND_MEMBER_ACCESS"
.text
	leaq .L.str.91(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.49
	leaq -16(%rbp), %rax
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
	call gen_addr
.data
.L.str.92:
	.string "\taddq $%d, %rax\n"
.text
	leaq .L.str.92(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $100, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.49
.L.else.49:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.93:
	.string "ND_VAR"
.text
	leaq .L.str.93(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.50
.data
.L.str.94:
	.string "\tleaq -%d(%rbp), %rax\n"
.text
	leaq .L.str.94(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $76, %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.50
.L.else.50:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.95:
	.string "ND_DEREF"
.text
	leaq .L.str.95(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.51
	leaq -16(%rbp), %rax
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
	call gen_expr
	jmp .L.end.51
.L.else.51:
.data
.L.str.96:
	.string "%s\n"
.text
	leaq .L.str.96(%rip), %rax
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
.data
.L.str.97:
	.string "unreachable\n"
.text
	leaq .L.str.97(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.51:
.L.end.50:
.L.end.49:
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
.data
.L.str.98:
	.string "\tpush %rax\n"
.text
	leaq .L.str.98(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
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
.data
.L.str.99:
	.string "\tpop %rdi\n"
.text
	leaq .L.str.99(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leave
	ret
.global gen_expr
gen_expr:
	push %rbp
	movq %rsp, %rbp
	subq $20, %rsp
	movq %rdi, -20(%rbp)
	movq %rsi, -12(%rbp)
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.52
.data
.L.str.100:
	.string "node == nil. this shoult not happen!\n"
.text
	leaq .L.str.100(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.52
.L.else.52:
.L.end.52:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.101:
	.string "ND_MEMBER_ACCESS"
.text
	leaq .L.str.101(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.53
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_addr
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_load
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.53
.L.else.53:
.L.end.53:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.102:
	.string "ND_STR"
.text
	leaq .L.str.102(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.54
	leaq -4(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $4, %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
.data
.L.str.103:
	.string ".data\n"
.text
	leaq .L.str.103(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.104:
	.string ".L.str.%d:\n"
.text
	leaq .L.str.104(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.105:
	.string "\t.string %s\n"
.text
	leaq .L.str.105(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $68, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.106:
	.string ".text\n"
.text
	leaq .L.str.106(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.107:
	.string "\tleaq .L.str.%d(%rip), %rax\n"
.text
	leaq .L.str.107(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.54
.L.else.54:
.L.end.54:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.108:
	.string "ND_NUM"
.text
	leaq .L.str.108(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.55
.data
.L.str.109:
	.string "\tmovq $%d, %rax\n"
.text
	leaq .L.str.109(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.55
.L.else.55:
.L.end.55:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.110:
	.string "ND_ASSIGN"
.text
	leaq .L.str.110(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.56
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_addr
.data
.L.str.111:
	.string "\tpush %rax\n"
.text
	leaq .L.str.111(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
.data
.L.str.112:
	.string "\tpop %rdi\n"
.text
	leaq .L.str.112(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_store
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.56
.L.else.56:
.L.end.56:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.113:
	.string "ND_VAR"
.text
	leaq .L.str.113(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.57
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_addr
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_load
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.57
.L.else.57:
.L.end.57:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.114:
	.string "ND_FUNC_CALL"
.text
	leaq .L.str.114(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.58
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call func_call_args_to_regi
.data
.L.str.115:
	.string "\tmovq $0, %rax\n"
.text
	leaq .L.str.115(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.116:
	.string "\tcall %s\n"
.text
	leaq .L.str.116(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $92, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.58
.L.else.58:
.L.end.58:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.117:
	.string "ND_EXPR_STMT"
.text
	leaq .L.str.117(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.59
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.59
.L.else.59:
.L.end.59:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.118:
	.string "ND_REF"
.text
	leaq .L.str.118(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.60
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_addr
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.60
.L.else.60:
.L.end.60:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.119:
	.string "ND_DEREF"
.text
	leaq .L.str.119(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.61
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_load
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.61
.L.else.61:
.L.end.61:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.120:
	.string "ND_NOT"
.text
	leaq .L.str.120(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.62
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
.data
.L.str.121:
	.string "\tcmpq $0, %rax\n"
.text
	leaq .L.str.121(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.122:
	.string "\tsete %al\n"
.text
	leaq .L.str.122(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.123:
	.string "\tmovzbq %al, %rax\n"
.text
	leaq .L.str.123(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.62
.L.else.62:
.L.end.62:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.124:
	.string "ND_ADD"
.text
	leaq .L.str.124(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.63
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
.data
.L.str.125:
	.string "add"
.text
	leaq .L.str.125(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.63
.L.else.63:
.L.end.63:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.126:
	.string "ND_SUB"
.text
	leaq .L.str.126(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.64
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
.data
.L.str.127:
	.string "sub"
.text
	leaq .L.str.127(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.64
.L.else.64:
.L.end.64:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.128:
	.string "ND_MUL"
.text
	leaq .L.str.128(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.65
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
.data
.L.str.129:
	.string "imul"
.text
	leaq .L.str.129(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.65
.L.else.65:
.L.end.65:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.130:
	.string "ND_DIV"
.text
	leaq .L.str.130(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.66
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.67
.data
.L.str.131:
	.string "\tcqto\n"
.text
	leaq .L.str.131(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.67
.L.else.67:
.data
.L.str.132:
	.string "\tcltd\n"
.text
	leaq .L.str.132(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.L.end.67:
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.68
.data
.L.str.133:
	.string "\tidivq %rdi\n"
.text
	leaq .L.str.133(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.68
.L.else.68:
.data
.L.str.134:
	.string "\tidivl %edi\n"
.text
	leaq .L.str.134(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.L.end.68:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.66
.L.else.66:
.L.end.66:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.135:
	.string "ND_MOD"
.text
	leaq .L.str.135(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.69
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.70
.data
.L.str.136:
	.string "\tcqto\n"
.text
	leaq .L.str.136(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.70
.L.else.70:
.data
.L.str.137:
	.string "\tcltd\n"
.text
	leaq .L.str.137(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.L.end.70:
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.71
.data
.L.str.138:
	.string "\tidivq %rdi\n"
.text
	leaq .L.str.138(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.71
.L.else.71:
.data
.L.str.139:
	.string "\tidivl %edi\n"
.text
	leaq .L.str.139(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.L.end.71:
.data
.L.str.140:
	.string "\tmovq %rdx, %rax\n"
.text
	leaq .L.str.140(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.69
.L.else.69:
.L.end.69:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.141:
	.string "ND_EQ"
.text
	leaq .L.str.141(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.72
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
.data
.L.str.142:
	.string "cmp"
.text
	leaq .L.str.142(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
.data
.L.str.143:
	.string "\tsete %al\n"
.text
	leaq .L.str.143(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.72
.L.else.72:
.L.end.72:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.144:
	.string "ND_NE"
.text
	leaq .L.str.144(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.73
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
.data
.L.str.145:
	.string "cmp"
.text
	leaq .L.str.145(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
.data
.L.str.146:
	.string "\tsetne %al\n"
.text
	leaq .L.str.146(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.73
.L.else.73:
.L.end.73:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.147:
	.string "ND_AND"
.text
	leaq .L.str.147(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.74
	leaq -4(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
.data
.L.str.148:
	.string "\tcmpq $0, %rax\n"
.text
	leaq .L.str.148(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.149:
	.string "\tje .L.false.%d\n"
.text
	leaq .L.str.149(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_expr
.data
.L.str.150:
	.string "\tcmpq $0, %rax\n"
.text
	leaq .L.str.150(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.151:
	.string "\tje .L.false.%d\n"
.text
	leaq .L.str.151(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.152:
	.string "\tmovq $1, %rax\n"
.text
	leaq .L.str.152(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.153:
	.string "\tjmp .L.end.%d\n"
.text
	leaq .L.str.153(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.154:
	.string ".L.false.%d:\n"
.text
	leaq .L.str.154(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.155:
	.string "\tmovq $0, %rax\n"
.text
	leaq .L.str.155(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.156:
	.string ".L.end.%d:\n"
.text
	leaq .L.str.156(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.74
.L.else.74:
.L.end.74:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.157:
	.string "ND_GE"
.text
	leaq .L.str.157(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.75
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
.data
.L.str.158:
	.string "cmp"
.text
	leaq .L.str.158(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
.data
.L.str.159:
	.string "\tsetge %al\n"
.text
	leaq .L.str.159(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.75
.L.else.75:
.L.end.75:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.160:
	.string "ND_GT"
.text
	leaq .L.str.160(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.76
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
.data
.L.str.161:
	.string "cmp"
.text
	leaq .L.str.161(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
.data
.L.str.162:
	.string "\tsetg %al\n"
.text
	leaq .L.str.162(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.76
.L.else.76:
.L.end.76:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.163:
	.string "ND_LE"
.text
	leaq .L.str.163(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.77
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
.data
.L.str.164:
	.string "cmp"
.text
	leaq .L.str.164(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
.data
.L.str.165:
	.string "\tsetle %al\n"
.text
	leaq .L.str.165(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.77
.L.else.77:
.L.end.77:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.166:
	.string "ND_LT"
.text
	leaq .L.str.166(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.78
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_lhs_rhs
.data
.L.str.167:
	.string "cmp"
.text
	leaq .L.str.167(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
.data
.L.str.168:
	.string "\tsetl %al\n"
.text
	leaq .L.str.168(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.78
.L.else.78:
.L.end.78:
.data
.L.str.169:
	.string "%s unreachable\n"
.text
	leaq .L.str.169(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
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
.L.str.170:
	.string "%rdi"
.text
	leaq .L.str.170(%rip), %rax
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
.L.str.171:
	.string "%rsi"
.text
	leaq .L.str.171(%rip), %rax
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
.L.str.172:
	.string "%rdx"
.text
	leaq .L.str.172(%rip), %rax
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
.L.str.173:
	.string "%rcx"
.text
	leaq .L.str.173(%rip), %rax
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
.L.str.174:
	.string "%r8"
.text
	leaq .L.str.174(%rip), %rax
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
.L.str.175:
	.string "%r9"
.text
	leaq .L.str.175(%rip), %rax
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
.L.str.176:
	.string "%edi"
.text
	leaq .L.str.176(%rip), %rax
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
.L.str.177:
	.string "%esi"
.text
	leaq .L.str.177(%rip), %rax
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
.L.str.178:
	.string "%edx"
.text
	leaq .L.str.178(%rip), %rax
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
.L.str.179:
	.string "%ecx"
.text
	leaq .L.str.179(%rip), %rax
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
.L.str.180:
	.string "%r8d"
.text
	leaq .L.str.180(%rip), %rax
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
.L.str.181:
	.string "%r9d"
.text
	leaq .L.str.181(%rip), %rax
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
.L.str.182:
	.string "%di"
.text
	leaq .L.str.182(%rip), %rax
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
.L.str.183:
	.string "%si"
.text
	leaq .L.str.183(%rip), %rax
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
.L.str.184:
	.string "%dx"
.text
	leaq .L.str.184(%rip), %rax
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
.L.str.185:
	.string "%cx"
.text
	leaq .L.str.185(%rip), %rax
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
.L.str.186:
	.string "%r8w"
.text
	leaq .L.str.186(%rip), %rax
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
.L.str.187:
	.string "%r9w"
.text
	leaq .L.str.187(%rip), %rax
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
.L.str.188:
	.string "%dil"
.text
	leaq .L.str.188(%rip), %rax
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
.L.str.189:
	.string "%sil"
.text
	leaq .L.str.189(%rip), %rax
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
.L.str.190:
	.string "%dl"
.text
	leaq .L.str.190(%rip), %rax
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
.L.str.191:
	.string "%cl"
.text
	leaq .L.str.191(%rip), %rax
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
.L.str.192:
	.string "%r8b"
.text
	leaq .L.str.192(%rip), %rax
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
.L.str.193:
	.string "%r9b"
.text
	leaq .L.str.193(%rip), %rax
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
.L.while.start.79:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.194:
	.string "TK_EOF"
.text
	leaq .L.str.194(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.79
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.195:
	.string "func"
.text
	leaq .L.str.195(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.80
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_func
	jmp .L.end.80
.L.else.80:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.196:
	.string "struct"
.text
	leaq .L.str.196(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.81
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_struct
	jmp .L.end.81
.L.else.81:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.197:
	.string "expected `func` or `struct`"
.text
	leaq .L.str.197(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
.L.end.81:
.L.end.80:
	jmp .L.while.start.79
.L.while.end.79:
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
	leaq -40(%rbp), %rax
	push %rax
	movq $74, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
.data
.L.str.198:
	.string "OBJ_FUNC"
.text
	leaq .L.str.198(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
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
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.199:
	.string "("
.text
	leaq .L.str.199(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.200:
	.string ")"
.text
	leaq .L.str.200(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.82
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_func_params
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.82
.L.else.82:
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
.L.end.82:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.201:
	.string ")"
.text
	leaq .L.str.201(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -16(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_ty
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.202:
	.string ";"
.text
	leaq .L.str.202(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.83
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.203:
	.string ";"
.text
	leaq .L.str.203(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
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
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.84
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_func_type
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $58, %rax
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
	jmp .L.end.84
.L.else.84:
.L.end.84:
	jmp .L.end.83
.L.else.83:
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
	jne .L.else.85
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.86
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.204:
	.string "function is already defined somewhere"
.text
	leaq .L.str.204(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.86
.L.else.86:
.L.end.86:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_block
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.85
.L.else.85:
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_func_type
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_block
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $58, %rax
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
.L.end.85:
.L.end.83:
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
.L.str.205:
	.string "struct"
.text
	leaq .L.str.205(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -40(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
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
	leaq -24(%rbp), %rax
	push %rax
	movq $53, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
.data
.L.str.206:
	.string "TY_STRUCT"
.text
	leaq .L.str.206(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.207:
	.string ";"
.text
	leaq .L.str.207(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.87
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.208:
	.string ";"
.text
	leaq .L.str.208(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
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
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.88
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
	jmp .L.end.88
.L.else.88:
.L.end.88:
	jmp .L.end.87
.L.else.87:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.209:
	.string "{"
.text
	leaq .L.str.209(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
.L.while.start.89:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.210:
	.string "}"
.text
	leaq .L.str.210(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.89
	leaq -16(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
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
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_member
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.211:
	.string ";"
.text
	leaq .L.str.211(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	jmp .L.while.start.89
.L.while.end.89:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.212:
	.string "}"
.text
	leaq .L.str.212(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq -76(%rbp), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -76(%rbp), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call calc_sizof_struct_members
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
	jne .L.else.90
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
	jmp .L.end.90
.L.else.90:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.91
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.213:
	.string "struct is already defined somewhere"
.text
	leaq .L.str.213(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.91
.L.else.91:
.L.end.91:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq -76(%rbp), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -76(%rbp), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call calc_sizof_struct_members
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movb %al, (%rdi)
.L.end.90:
.L.end.87:
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
.L.while.start.92:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.92
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
	addq $8, %rax
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
	jmp .L.while.start.92
.L.while.end.92:
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
	subq $106, %rsp
	movq %rdi, -106(%rbp)
	leaq -24(%rbp), %rax
	push %rax
	leaq -98(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.93:
	leaq -106(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.214:
	.string ")"
.text
	leaq .L.str.214(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.93
	leaq -8(%rbp), %rax
	push %rax
	leaq -106(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	leaq -106(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -106(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -24(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $66, %rax
	push %rax
	leaq -106(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.215:
	.string "OBJ_VAR"
.text
	leaq .L.str.215(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -106(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_ty
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
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq -106(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.216:
	.string ","
.text
	leaq .L.str.216(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.94
	leaq -106(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.217:
	.string ","
.text
	leaq .L.str.217(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	jmp .L.end.94
.L.else.94:
.L.end.94:
	leaq -106(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
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
	call strcmp
	cmpq $1, %rax
	jne .L.else.95
	jmp .L.parse_func_params.end
	jmp .L.end.95
.L.else.95:
.L.end.95:
	jmp .L.while.start.93
.L.while.end.93:
.L.parse_func_params.end:
	leaq -98(%rbp), %rax
	addq $66, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global assign_offset
assign_offset:
	push %rbp
	movq %rsp, %rbp
	subq $20, %rsp
	movq %rdi, -20(%rbp)
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.96:
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.96
	leaq -4(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	addl %edi, %eax
	pop %rdi
	movl %eax, (%rdi)
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $58, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.96
.L.while.end.96:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
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
	movq $120, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
.data
.L.str.219:
	.string "ND_NUM"
.text
	leaq .L.str.219(%rip), %rax
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
	subq $152, %rsp
	movq %rdi, -152(%rbp)
	leaq -144(%rbp), %rax
	push %rax
.data
.L.str.220:
	.string "ND_BLOCK"
.text
	leaq .L.str.220(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -136(%rbp), %rax
	addq $112, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	leaq -136(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -152(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.221:
	.string "{"
.text
	leaq .L.str.221(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
.L.while.start.97:
	leaq -152(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.222:
	.string "}"
.text
	leaq .L.str.222(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.97
	leaq -8(%rbp), %rax
	push %rax
	leaq -152(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_stmt
	pop %rdi
	movq %rax, (%rdi)
	leaq -152(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.98
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.98
.L.else.98:
.L.end.98:
	jmp .L.while.start.97
.L.while.end.97:
	leaq -152(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.223:
	.string "}"
.text
	leaq .L.str.223(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -144(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq -136(%rbp), %rax
	addq $112, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -144(%rbp), %rax
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
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.224:
	.string "var"
.text
	leaq .L.str.224(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.99
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -48(%rbp), %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
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
	leaq -32(%rbp), %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_ty
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.225:
	.string "OBJ_VAR"
.text
	leaq .L.str.225(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.226:
	.string "="
.text
	leaq .L.str.226(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.100
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.227:
	.string "="
.text
	leaq .L.str.227(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.228:
	.string "ND_VAR"
.text
	leaq .L.str.228(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $76, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	push %rax
.data
.L.str.229:
	.string "ND_ASSIGN"
.text
	leaq .L.str.229(%rip), %rax
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
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.100
.L.else.100:
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.230:
	.string ";"
.text
	leaq .L.str.230(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
.L.end.100:
	jmp .L.end.99
.L.else.99:
.L.end.99:
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.231:
	.string "goto"
.text
	leaq .L.str.231(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.101
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.232:
	.string ";"
.text
	leaq .L.str.232(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -56(%rbp), %rax
	push %rax
.data
.L.str.233:
	.string "ND_GOTO"
.text
	leaq .L.str.233(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
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
	jmp .L.end.101
.L.else.101:
.L.end.101:
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.234:
	.string "TK_EOF"
.text
	leaq .L.str.234(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.102
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.235:
	.string ":"
.text
	leaq .L.str.235(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.103
	leaq -8(%rbp), %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.236:
	.string ":"
.text
	leaq .L.str.236(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -56(%rbp), %rax
	push %rax
.data
.L.str.237:
	.string "ND_LABEL"
.text
	leaq .L.str.237(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
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
	jmp .L.end.103
.L.else.103:
.L.end.103:
	jmp .L.end.102
.L.else.102:
.L.end.102:
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.238:
	.string "if"
.text
	leaq .L.str.238(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.104
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -56(%rbp), %rax
	push %rax
.data
.L.str.239:
	.string "ND_IF"
.text
	leaq .L.str.239(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_block
	pop %rdi
	movq %rax, (%rdi)
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.240:
	.string "else"
.text
	leaq .L.str.240(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.105
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_stmt
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.105
.L.else.105:
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
.L.end.105:
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.104
.L.else.104:
.L.end.104:
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.241:
	.string "while"
.text
	leaq .L.str.241(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.106
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -56(%rbp), %rax
	push %rax
.data
.L.str.242:
	.string "ND_WHILE"
.text
	leaq .L.str.242(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.243:
	.string "{"
.text
	leaq .L.str.243(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.107
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.107
.L.else.107:
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	movq $0, %rax
	call node_true
	pop %rdi
	movq %rax, (%rdi)
.L.end.107:
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_block
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.106
.L.else.106:
.L.end.106:
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.244:
	.string "return"
.text
	leaq .L.str.244(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.108
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -56(%rbp), %rax
	push %rax
.data
.L.str.245:
	.string "ND_RETURN"
.text
	leaq .L.str.245(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr_stmt
	pop %rdi
	movq %rax, (%rdi)
	leaq -56(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.108
.L.else.108:
.L.end.108:
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.246:
	.string "{"
.text
	leaq .L.str.246(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.109
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_block
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.109
.L.else.109:
.L.end.109:
	leaq -64(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr_stmt
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
.data
.L.str.247:
	.string "ND_EXPR_STMT"
.text
	leaq .L.str.247(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.248:
	.string ";"
.text
	leaq .L.str.248(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
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
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.110:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.110
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.249:
	.string "=="
.text
	leaq .L.str.249(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.111
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_relational
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	cmpq $1, %rax
	jne .L.else.112
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.250:
	.string "ND_EQ"
.text
	leaq .L.str.250(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.112
.L.else.112:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	cmpq $1, %rax
	jne .L.else.113
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.251:
	.string "ND_EQ"
.text
	leaq .L.str.251(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.113
.L.else.113:
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.252:
	.string "ND_EQ"
.text
	leaq .L.str.252(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
.L.end.113:
.L.end.112:
	jmp .L.parse_equality.again
	jmp .L.end.111
.L.else.111:
.L.end.111:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.253:
	.string "!="
.text
	leaq .L.str.253(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.114
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_relational
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	cmpq $1, %rax
	jne .L.else.115
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.254:
	.string "ND_NE"
.text
	leaq .L.str.254(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.115
.L.else.115:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	cmpq $1, %rax
	jne .L.else.116
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.255:
	.string "ND_NE"
.text
	leaq .L.str.255(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.116
.L.else.116:
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.256:
	.string "ND_NE"
.text
	leaq .L.str.256(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
.L.end.116:
.L.end.115:
	jmp .L.parse_equality.again
	jmp .L.end.114
.L.else.114:
.L.end.114:
	jmp .L.parse_equality.end
.L.parse_equality.again:
	jmp .L.while.start.110
.L.while.end.110:
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
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.117:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.117
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.257:
	.string "<="
.text
	leaq .L.str.257(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.118
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_add
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	cmpq $1, %rax
	jne .L.else.119
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.258:
	.string "ND_LE"
.text
	leaq .L.str.258(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.119
.L.else.119:
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.259:
	.string "ND_LE"
.text
	leaq .L.str.259(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
.L.end.119:
	jmp .L.parse_relational.again
	jmp .L.end.118
.L.else.118:
.L.end.118:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.260:
	.string ">="
.text
	leaq .L.str.260(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.120
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_add
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	cmpq $1, %rax
	jne .L.else.121
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.261:
	.string "ND_GE"
.text
	leaq .L.str.261(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.121
.L.else.121:
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.262:
	.string "ND_GE"
.text
	leaq .L.str.262(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
.L.end.121:
	jmp .L.parse_relational.again
	jmp .L.end.120
.L.else.120:
.L.end.120:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.263:
	.string "<"
.text
	leaq .L.str.263(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.122
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_add
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	cmpq $1, %rax
	jne .L.else.123
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.264:
	.string "ND_LT"
.text
	leaq .L.str.264(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.123
.L.else.123:
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.265:
	.string "ND_LT"
.text
	leaq .L.str.265(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
.L.end.123:
	jmp .L.parse_relational.again
	jmp .L.end.122
.L.else.122:
.L.end.122:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.266:
	.string ">"
.text
	leaq .L.str.266(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.124
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_add
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	cmpq $1, %rax
	jne .L.else.125
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.267:
	.string "ND_GT"
.text
	leaq .L.str.267(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.125
.L.else.125:
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.268:
	.string "ND_GT"
.text
	leaq .L.str.268(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
.L.end.125:
	jmp .L.parse_relational.again
	jmp .L.end.124
.L.else.124:
.L.end.124:
	jmp .L.parse_relational.end
.L.parse_relational.again:
	jmp .L.while.start.117
.L.while.end.117:
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
	subq $32, %rsp
	movq %rdi, -32(%rbp)
	movq %rsi, -24(%rbp)
	movq %rdx, -16(%rbp)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	cmpq $1, %rax
	jne .L.else.126
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	cmpq $1, %rax
	jne .L.else.127
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call search_relational_rhs
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call search_relational_lhs
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.269:
	.string "ND_AND"
.text
	leaq .L.str.269(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.270:
	.string "ND_AND"
.text
	leaq .L.str.270(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.127
.L.else.127:
.L.end.127:
	jmp .L.end.126
.L.else.126:
.L.end.126:
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call search_relational_lhs
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.271:
	.string "ND_AND"
.text
	leaq .L.str.271(%rip), %rax
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
	subq $32, %rsp
	movq %rdi, -32(%rbp)
	movq %rsi, -24(%rbp)
	movq %rdx, -16(%rbp)
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	cmpq $1, %rax
	jne .L.else.128
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	cmpq $1, %rax
	jne .L.else.129
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call search_relational_rhs
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call search_relational_lhs
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.272:
	.string "ND_AND"
.text
	leaq .L.str.272(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.273:
	.string "ND_AND"
.text
	leaq .L.str.273(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.129
.L.else.129:
.L.end.129:
	jmp .L.end.128
.L.else.128:
.L.end.128:
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call search_relational_rhs
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.274:
	.string "ND_AND"
.text
	leaq .L.str.274(%rip), %rax
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
.L.while.start.130:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	cmpq $1, %rax
	jne .L.while.end.130
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.130
.L.while.end.130:
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
.L.while.start.131:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_comparison_node
	cmpq $1, %rax
	jne .L.while.end.131
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.131
.L.while.end.131:
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
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.275:
	.string "ND_LE"
.text
	leaq .L.str.275(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.132
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.132
.L.else.132:
.L.end.132:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.276:
	.string "ND_GE"
.text
	leaq .L.str.276(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.133
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.133
.L.else.133:
.L.end.133:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.277:
	.string "ND_LT"
.text
	leaq .L.str.277(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.134
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.134
.L.else.134:
.L.end.134:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.278:
	.string "ND_GT"
.text
	leaq .L.str.278(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.135
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.135
.L.else.135:
.L.end.135:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.279:
	.string "ND_EQ"
.text
	leaq .L.str.279(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.136
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.136
.L.else.136:
.L.end.136:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.280:
	.string "ND_NE"
.text
	leaq .L.str.280(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.137
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.137
.L.else.137:
.L.end.137:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.281:
	.string "ND_AND"
.text
	leaq .L.str.281(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.138
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.138
.L.else.138:
.L.end.138:
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
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.139:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.139
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.282:
	.string "+"
.text
	leaq .L.str.282(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.140
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.283:
	.string "ND_ADD"
.text
	leaq .L.str.283(%rip), %rax
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
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_add.again
	jmp .L.end.140
.L.else.140:
.L.end.140:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.284:
	.string "-"
.text
	leaq .L.str.284(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.141
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.285:
	.string "ND_SUB"
.text
	leaq .L.str.285(%rip), %rax
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
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_add.again
	jmp .L.end.141
.L.else.141:
.L.end.141:
	jmp .L.parse_add.end
.L.parse_add.again:
	jmp .L.while.start.139
.L.while.end.139:
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
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.142:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.142
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.286:
	.string "*"
.text
	leaq .L.str.286(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.143
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.287:
	.string "ND_MUL"
.text
	leaq .L.str.287(%rip), %rax
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
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_mul.again
	jmp .L.end.143
.L.else.143:
.L.end.143:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.288:
	.string "/"
.text
	leaq .L.str.288(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.144
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.289:
	.string "ND_DIV"
.text
	leaq .L.str.289(%rip), %rax
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
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_mul.again
	jmp .L.end.144
.L.else.144:
.L.end.144:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.290:
	.string "%"
.text
	leaq .L.str.290(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.145
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.291:
	.string "ND_MOD"
.text
	leaq .L.str.291(%rip), %rax
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
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_mul.again
	jmp .L.end.145
.L.else.145:
.L.end.145:
	jmp .L.parse_mul.end
.L.parse_mul.again:
	jmp .L.while.start.142
.L.while.end.142:
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
.data
.L.str.292:
	.string "ND_NUM"
.text
	leaq .L.str.292(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
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
	addq $84, %rax
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
	subq $32, %rsp
	movq %rdi, -32(%rbp)
	movq %rsi, -24(%rbp)
	movq %rdx, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
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
	addq $16, %rax
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
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.293:
	.string "ND_DEREF"
.text
	leaq .L.str.293(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_unary
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
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
	call add_type
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.294:
	.string "TY_PTR"
.text
	leaq .L.str.294(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.146
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.295:
	.string "invalid pointer dereference"
.text
	leaq .L.str.295(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.146
.L.else.146:
.L.end.146:
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
	subq $44, %rsp
	movq %rdi, -44(%rbp)
	movq %rsi, -36(%rbp)
	movl %edx, -28(%rbp)
	movq %rcx, -24(%rbp)
	movq %r8, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $120, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $100, %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $76, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
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
.L.while.start.147:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.147
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
	cmpq $1, %rax
	jne .L.else.148
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.148
.L.else.148:
.L.end.148:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.147
.L.while.end.147:
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
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.296:
	.string "TK_NUM"
.text
	leaq .L.str.296(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.149
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.297:
	.string "ND_NUM"
.text
	leaq .L.str.297(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
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
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call atoi
	pop %rdi
	movl %eax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	jmp .L.end.149
.L.else.149:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.298:
	.string "TK_STR"
.text
	leaq .L.str.298(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.150
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.299:
	.string "ND_STR"
.text
	leaq .L.str.299(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $68, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	jmp .L.end.150
.L.else.150:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.300:
	.string "nil"
.text
	leaq .L.str.300(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.151
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.301:
	.string "ND_NUM"
.text
	leaq .L.str.301(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.151
.L.else.151:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.302:
	.string "typesize"
.text
	leaq .L.str.302(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.152
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.303:
	.string "ND_NUM"
.text
	leaq .L.str.303(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.304:
	.string "("
.text
	leaq .L.str.304(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_ty
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
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
.L.str.305:
	.string ")"
.text
	leaq .L.str.305(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	jmp .L.end.152
.L.else.152:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.306:
	.string "sizeof"
.text
	leaq .L.str.306(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.153
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_sizeof
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.153
.L.else.153:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.307:
	.string "TK_IDENT"
.text
	leaq .L.str.307(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.154
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_ident
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.154
.L.else.154:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.308:
	.string "("
.text
	leaq .L.str.308(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.155
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.309:
	.string ")"
.text
	leaq .L.str.309(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	jmp .L.end.155
.L.else.155:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.310:
	.string "expected number or identifier"
.text
	leaq .L.str.310(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.155:
.L.end.154:
.L.end.153:
.L.end.152:
.L.end.151:
.L.end.150:
.L.end.149:
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
	addq $20, %rax
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
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.311:
	.string "("
.text
	leaq .L.str.311(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.156
	leaq -32(%rbp), %rax
	push %rax
.data
.L.str.312:
	.string "ND_FUNC_CALL"
.text
	leaq .L.str.312(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.313:
	.string "("
.text
	leaq .L.str.313(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $92, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_args
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.314:
	.string ")"
.text
	leaq .L.str.314(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -24(%rbp), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $92, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call find_globals
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
	jne .L.else.157
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.315:
	.string "unkown function"
.text
	leaq .L.str.315(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.157
.L.else.157:
.L.end.157:
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.156
.L.else.156:
	leaq -32(%rbp), %rax
	push %rax
.data
.L.str.316:
	.string "ND_VAR"
.text
	leaq .L.str.316(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
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
	jne .L.else.158
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.317:
	.string "unkown object"
.text
	leaq .L.str.317(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.158
.L.else.158:
.L.end.158:
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $76, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.end.156:
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
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.318:
	.string "("
.text
	leaq .L.str.318(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -12(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_unary
	pop %rdi
	movq %rax, (%rdi)
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.319:
	.string ")"
.text
	leaq .L.str.319(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
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
	leaq -4(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
.data
.L.str.320:
	.string "ND_NUM"
.text
	leaq .L.str.320(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
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
	addq $84, %rax
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
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.321:
	.string "*"
.text
	leaq .L.str.321(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.159
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_deref
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.159
.L.else.159:
.L.end.159:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.322:
	.string "&"
.text
	leaq .L.str.322(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.160
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.323:
	.string "ND_REF"
.text
	leaq .L.str.323(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_unary
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.160
.L.else.160:
.L.end.160:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.324:
	.string "!"
.text
	leaq .L.str.324(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.161
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.325:
	.string "ND_NOT"
.text
	leaq .L.str.325(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_unary
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.161
.L.else.161:
.L.end.161:
	leaq -76(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_number
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.162:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.162
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
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.326:
	.string "++"
.text
	leaq .L.str.326(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.163
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.327:
	.string "ND_SUB"
.text
	leaq .L.str.327(%rip), %rax
	push %rax
.data
.L.str.328:
	.string "ND_ASSIGN"
.text
	leaq .L.str.328(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.329:
	.string "ND_ADD"
.text
	leaq .L.str.329(%rip), %rax
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
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call node_num_one
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.again
	jmp .L.end.163
.L.else.163:
.L.end.163:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.330:
	.string "--"
.text
	leaq .L.str.330(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.164
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.331:
	.string "ND_ADD"
.text
	leaq .L.str.331(%rip), %rax
	push %rax
.data
.L.str.332:
	.string "ND_ASSIGN"
.text
	leaq .L.str.332(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.333:
	.string "ND_SUB"
.text
	leaq .L.str.333(%rip), %rax
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
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call node_num_one
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.again
	jmp .L.end.164
.L.else.164:
.L.end.164:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.334:
	.string "["
.text
	leaq .L.str.334(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.165
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
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -60(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	pop %rdi
	movq %rax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.335:
	.string "]"
.text
	leaq .L.str.335(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.336:
	.string "TY_PTR"
.text
	leaq .L.str.336(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.166
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.337:
	.string "`[]` cannot access to none pointer type."
.text
	leaq .L.str.337(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.166
.L.else.166:
.L.end.166:
	leaq -52(%rbp), %rax
	push %rax
.data
.L.str.338:
	.string "ND_NUM"
.text
	leaq .L.str.338(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	push %rax
.data
.L.str.339:
	.string "ND_MUL"
.text
	leaq .L.str.339(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.340:
	.string "ND_ADD"
.text
	leaq .L.str.340(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.341:
	.string "ND_DEREF"
.text
	leaq .L.str.341(%rip), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.again
	jmp .L.end.165
.L.else.165:
.L.end.165:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.342:
	.string "."
.text
	leaq .L.str.342(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.167
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -36(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
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
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.343:
	.string "TY_PTR"
.text
	leaq .L.str.343(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.168
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.344:
	.string "TY_STRUCT"
.text
	leaq .L.str.344(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.169
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.345:
	.string "cannot access from none struct type"
.text
	leaq .L.str.345(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.169
.L.else.169:
.L.end.169:
	leaq -20(%rbp), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call search_struct_member
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
	jne .L.else.170
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.346:
	.string "member name not found"
.text
	leaq .L.str.346(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.170
.L.else.170:
.L.end.170:
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.347:
	.string "ND_DEREF"
.text
	leaq .L.str.347(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $76, %rax
	movq (%rax), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_struct_access_node
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.168
.L.else.168:
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.348:
	.string "TY_STRUCT"
.text
	leaq .L.str.348(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.171
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.349:
	.string "cannot access from none struct type"
.text
	leaq .L.str.349(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.171
.L.else.171:
.L.end.171:
	leaq -20(%rbp), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call search_struct_member
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
	jne .L.else.172
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.350:
	.string "member name not found"
.text
	leaq .L.str.350(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.172
.L.else.172:
.L.end.172:
.L.end.168:
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
.data
.L.str.351:
	.string "ND_MEMBER_ACCESS"
.text
	leaq .L.str.351(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $76, %rax
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
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_unary.again
	jmp .L.end.167
.L.else.167:
.L.end.167:
	jmp .L.parse_unary.end
.L.parse_unary.again:
	jmp .L.while.start.162
.L.while.end.162:
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
	subq $136, %rsp
	movq %rdi, -136(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -128(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -136(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.352:
	.string ")"
.text
	leaq .L.str.352(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.173
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.173
.L.else.173:
.L.end.173:
.L.parse_args.loop:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	push %rax
	leaq -136(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq -136(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	leaq -136(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.353:
	.string ","
.text
	leaq .L.str.353(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.174
	leaq -136(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.354:
	.string ","
.text
	leaq .L.str.354(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	jmp .L.parse_args.loop
	jmp .L.end.174
.L.else.174:
.L.end.174:
	leaq -128(%rbp), %rax
	addq $112, %rax
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
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.355:
	.string "="
.text
	leaq .L.str.355(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.175
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.356:
	.string "ND_ASSIGN"
.text
	leaq .L.str.356(%rip), %rax
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
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
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
	addq $20, %rax
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
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.357:
	.string "i64"
.text
	leaq .L.str.357(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.176
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.176
.L.else.176:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.358:
	.string "i32"
.text
	leaq .L.str.358(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.177
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.177
.L.else.177:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.359:
	.string "i16"
.text
	leaq .L.str.359(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.178
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.178
.L.else.178:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.360:
	.string "i8"
.text
	leaq .L.str.360(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.179
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.179
.L.else.179:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.361:
	.string "*"
.text
	leaq .L.str.361(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.180
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_ty
	push %rax
	pop %rdi
	movq $0, %rax
	call new_pointer_type
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.180
.L.else.180:
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
	jne .L.else.181
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.362:
	.string "unkown type found"
.text
	leaq .L.str.362(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.181
.L.else.181:
.L.end.181:
.L.end.180:
.L.end.179:
.L.end.178:
.L.end.177:
.L.end.176:
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
.L.while.start.182:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.182
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
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.while.start.182
.L.while.end.182:
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
	jne .L.else.183
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.183
.L.else.183:
.L.end.183:
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.184
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.184
.L.else.184:
.L.end.184:
	leaq -24(%rbp), %rax
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
	call add_type
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type_block
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type_block
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type_block
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.185:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.185
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
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $112, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.185
.L.while.end.185:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.363:
	.string "ND_STR"
.text
	leaq .L.str.363(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.186
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_pointer_type
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.186
.L.else.186:
.L.end.186:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.364:
	.string "ND_GOTO"
.text
	leaq .L.str.364(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.187
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.187
.L.else.187:
.L.end.187:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.365:
	.string "ND_LABEL"
.text
	leaq .L.str.365(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.188
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.188
.L.else.188:
.L.end.188:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.366:
	.string "ND_FUNC_CALL"
.text
	leaq .L.str.366(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.189
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.189
.L.else.189:
.L.end.189:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.367:
	.string "ND_IF"
.text
	leaq .L.str.367(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.190
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.190
.L.else.190:
.L.end.190:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.368:
	.string "ND_WHILE"
.text
	leaq .L.str.368(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.191
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.191
.L.else.191:
.L.end.191:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.369:
	.string "ND_RETURN"
.text
	leaq .L.str.369(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.192
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.192
.L.else.192:
.L.end.192:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.370:
	.string "ND_ADD"
.text
	leaq .L.str.370(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.193
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.193
.L.else.193:
.L.end.193:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.371:
	.string "ND_SUB"
.text
	leaq .L.str.371(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.194
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.194
.L.else.194:
.L.end.194:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.372:
	.string "ND_MUL"
.text
	leaq .L.str.372(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.195
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.195
.L.else.195:
.L.end.195:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.373:
	.string "ND_DIV"
.text
	leaq .L.str.373(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.196
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.196
.L.else.196:
.L.end.196:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.374:
	.string "ND_MOD"
.text
	leaq .L.str.374(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.197
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.197
.L.else.197:
.L.end.197:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.375:
	.string "ND_ASSIGN"
.text
	leaq .L.str.375(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.198
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.198
.L.else.198:
.L.end.198:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.376:
	.string "ND_ADD"
.text
	leaq .L.str.376(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.199
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.199
.L.else.199:
.L.end.199:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.377:
	.string "ND_NOT"
.text
	leaq .L.str.377(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.200
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
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
	jmp .L.end.200
.L.else.200:
.L.end.200:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.378:
	.string "ND_EQ"
.text
	leaq .L.str.378(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.201
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
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
	jmp .L.end.201
.L.else.201:
.L.end.201:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.379:
	.string "ND_NE"
.text
	leaq .L.str.379(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.202
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
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
	jmp .L.end.202
.L.else.202:
.L.end.202:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.380:
	.string "ND_LE"
.text
	leaq .L.str.380(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.203
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
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
	jmp .L.end.203
.L.else.203:
.L.end.203:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.381:
	.string "ND_LT"
.text
	leaq .L.str.381(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.204
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
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
	jmp .L.end.204
.L.else.204:
.L.end.204:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.382:
	.string "ND_GT"
.text
	leaq .L.str.382(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.205
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
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
	jmp .L.end.205
.L.else.205:
.L.end.205:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.383:
	.string "ND_GE"
.text
	leaq .L.str.383(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.206
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
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
	jmp .L.end.206
.L.else.206:
.L.end.206:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.384:
	.string "ND_AND"
.text
	leaq .L.str.384(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.207
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
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
	jmp .L.end.207
.L.else.207:
.L.end.207:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.385:
	.string "ND_NUM"
.text
	leaq .L.str.385(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.208
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
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
	jmp .L.end.208
.L.else.208:
.L.end.208:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.386:
	.string "ND_VAR"
.text
	leaq .L.str.386(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.209
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $76, %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.209
.L.else.209:
.L.end.209:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.387:
	.string "ND_REF"
.text
	leaq .L.str.387(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.210
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_pointer_type
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.210
.L.else.210:
.L.end.210:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.388:
	.string "ND_DEREF"
.text
	leaq .L.str.388(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.211
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.211
.L.else.211:
.L.end.211:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.389:
	.string "ND_EXPR_STMT"
.text
	leaq .L.str.389(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.212
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $84, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $84, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.212
.L.else.212:
.L.end.212:
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
	addq $45, %rax
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
	subq $48, %rsp
	movq %rdi, -48(%rbp)
	movq %rsi, -40(%rbp)
	movq %rdx, -32(%rbp)
	movq %rcx, -24(%rbp)
	movq %r8, -16(%rbp)
	leaq -48(%rbp), %rax
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
	leaq -8(%rbp), %rax
	push %rax
	movq $74, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
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
.data
.L.str.390:
	.string "nil"
.text
	leaq .L.str.390(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.213
.L.else.213:
.L.end.213:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
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
	addq $48, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $58, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
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
	cmpq $1, %rax
	jne .L.else.215
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.391:
	.string "name already exist"
.text
	leaq .L.str.391(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.215
.L.else.215:
.L.end.215:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $58, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.214
.L.while.end.214:
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
.L.while.start.216:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.216
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
	cmpq $1, %rax
	jne .L.else.217
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.217
.L.else.217:
.L.end.217:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $58, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.216
.L.while.end.216:
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
.L.while.start.218:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.218
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
	cmpq $1, %rax
	jne .L.else.219
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.219
.L.else.219:
.L.end.219:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $58, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.218
.L.while.end.218:
	movq $0, %rax
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
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.220
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.220
.L.else.220:
.L.end.220:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.392:
	.string "unexpected token"
.text
	leaq .L.str.392(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	leave
	ret
.global new_node
new_node:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $120, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
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
	jne .L.else.221
.data
.L.str.393:
	.string "nil"
.text
	leaq .L.str.393(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.221
.L.else.221:
.L.end.221:
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
	addq $28, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.222
.data
.L.str.394:
	.string "parser_next got nil!!!\n"
.text
	leaq .L.str.394(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.222
.L.else.222:
.L.end.222:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $28, %rax
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
	jne .L.else.223
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
	jmp .L.end.223
.L.else.223:
.L.end.223:
.L.while.start.224:
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
	jne .L.while.end.224
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
	jmp .L.while.start.224
.L.while.end.224:
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.225
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
	jmp .L.end.225
.L.else.225:
.L.end.225:
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
	jne .L.else.226
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
	jmp .L.end.226
.L.else.226:
.L.end.226:
.L.while.start.227:
	movq $0, %rax
	push %rax
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.227
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
	jne .L.else.228
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
	jmp .L.end.228
.L.else.228:
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
.L.end.228:
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
	jmp .L.while.start.227
.L.while.end.227:
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
.L.while.start.229:
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
	jne .L.while.end.229
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
	jmp .L.while.start.229
.L.while.end.229:
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
	movq $112, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
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
	jne .L.else.230
.data
.L.str.395:
	.string "nil"
.text
	leaq .L.str.395(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.230
.L.else.230:
.L.end.230:
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
.data
.L.str.396:
	.string "i64"
.text
	leaq .L.str.396(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
.data
.L.str.397:
	.string "i64"
.text
	leaq .L.str.397(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_builtin_type
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
.data
.L.str.398:
	.string "i32"
.text
	leaq .L.str.398(%rip), %rax
	push %rax
	movq $4, %rax
	push %rax
.data
.L.str.399:
	.string "i32"
.text
	leaq .L.str.399(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_builtin_type
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
.data
.L.str.400:
	.string "i16"
.text
	leaq .L.str.400(%rip), %rax
	push %rax
	movq $2, %rax
	push %rax
.data
.L.str.401:
	.string "i16"
.text
	leaq .L.str.401(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_builtin_type
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
.data
.L.str.402:
	.string "i8"
.text
	leaq .L.str.402(%rip), %rax
	push %rax
	movq $1, %rax
	push %rax
.data
.L.str.403:
	.string "i8"
.text
	leaq .L.str.403(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_builtin_type
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.404:
	.string "alloc"
.text
	leaq .L.str.404(%rip), %rax
	push %rax
.data
.L.str.405:
	.string "OBJ_FUNC"
.text
	leaq .L.str.405(%rip), %rax
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
	push %rax
	pop %rdi
	movq $0, %rax
	call new_func_type
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.406:
	.string "open"
.text
	leaq .L.str.406(%rip), %rax
	push %rax
.data
.L.str.407:
	.string "OBJ_FUNC"
.text
	leaq .L.str.407(%rip), %rax
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
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.408:
	.string "close"
.text
	leaq .L.str.408(%rip), %rax
	push %rax
.data
.L.str.409:
	.string "OBJ_FUNC"
.text
	leaq .L.str.409(%rip), %rax
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
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.410:
	.string "read"
.text
	leaq .L.str.410(%rip), %rax
	push %rax
.data
.L.str.411:
	.string "OBJ_FUNC"
.text
	leaq .L.str.411(%rip), %rax
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
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.412:
	.string "write"
.text
	leaq .L.str.412(%rip), %rax
	push %rax
.data
.L.str.413:
	.string "OBJ_FUNC"
.text
	leaq .L.str.413(%rip), %rax
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
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.414:
	.string "exit"
.text
	leaq .L.str.414(%rip), %rax
	push %rax
.data
.L.str.415:
	.string "OBJ_FUNC"
.text
	leaq .L.str.415(%rip), %rax
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
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.416:
	.string "printf"
.text
	leaq .L.str.416(%rip), %rax
	push %rax
.data
.L.str.417:
	.string "OBJ_FUNC"
.text
	leaq .L.str.417(%rip), %rax
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
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.418:
	.string "eprintf"
.text
	leaq .L.str.418(%rip), %rax
	push %rax
.data
.L.str.419:
	.string "OBJ_FUNC"
.text
	leaq .L.str.419(%rip), %rax
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
	push %rax
	pop %r8
	pop %rcx
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_builtin_object
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
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
	movq $53, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
.data
.L.str.420:
	.string "TY_FUNC"
.text
	leaq .L.str.420(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $8, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
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
	movq $53, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
.data
.L.str.421:
	.string "TY_PTR"
.text
	leaq .L.str.421(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $8, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
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
	subq $28, %rsp
	movq %rdi, -28(%rbp)
	movl %esi, -20(%rbp)
	movq %rdx, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $53, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -20(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
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
	addq $36, %rax
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
.L.while.start.231:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.231
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.232
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.232
.L.else.232:
.L.end.232:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $45, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.231
.L.while.end.231:
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
.L.while.start.233:
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.233
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.422:
	.string "TY_STRUCT"
.text
	leaq .L.str.422(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.234
.data
.L.str.423:
	.string "struct %s {\n"
.text
	leaq .L.str.423(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.235:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.235
.data
.L.str.424:
	.string "  %s\n"
.text
	leaq .L.str.424(%rip), %rax
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
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.235
.L.while.end.235:
.data
.L.str.425:
	.string "}\n"
.text
	leaq .L.str.425(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.234
.L.else.234:
.data
.L.str.426:
	.string "got unkown userdefined type `%s`"
.text
	leaq .L.str.426(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.234:
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $45, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.233
.L.while.end.233:
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
	subq $48, %rsp
	movq %rdi, -48(%rbp)
	movq %rsi, -40(%rbp)
	movq %rdx, -32(%rbp)
	movq %rcx, -24(%rbp)
	movq %r8, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $74, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
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
	jne .L.else.236
.data
.L.str.427:
	.string "nil"
.text
	leaq .L.str.427(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.236
.L.else.236:
.L.end.236:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $57, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $58, %rax
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
.L.while.start.237:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.237
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
	jne .L.else.238
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
	jne .L.else.239
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.239
.L.else.239:
.L.end.239:
	jmp .L.strcmp.ok_next
	jmp .L.end.238
.L.else.238:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
.L.end.238:
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
	jmp .L.while.start.237
.L.while.end.237:
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
	jne .L.else.240
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.240
.L.else.240:
.L.end.240:
.data
.L.str.428:
	.string "%s : %s\n"
.text
	leaq .L.str.428(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.241
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print_all_tokens
	jmp .L.end.241
.L.else.241:
.L.end.241:
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
	subq $60, %rsp
	movq %rdi, -60(%rbp)
	leaq -16(%rbp), %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.242:
	movq $0, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.242
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call isdigit
	cmpq $1, %rax
	jne .L.else.243
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call tokenize_number
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.tokenize.again
	jmp .L.end.243
.L.else.243:
.L.end.243:
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call isalpha
	cmpq $1, %rax
	jne .L.else.244
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call tokenize_ident
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.tokenize.again
	jmp .L.end.244
.L.else.244:
.L.end.244:
	movq $47, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.245
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call skip_comment
	jmp .L.end.245
.L.else.245:
.L.end.245:
	movq $34, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.246
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call tokenize_string
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.tokenize.again
	jmp .L.end.246
.L.else.246:
.L.end.246:
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_two_c_punct
	cmpq $1, %rax
	jne .L.else.247
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
.data
.L.str.429:
	.string "TK_PUNCT"
.text
	leaq .L.str.429(%rip), %rax
	push %rax
	leaq -60(%rbp), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.tokenize.again
	jmp .L.end.247
.L.else.247:
.L.end.247:
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call ispunct
	cmpq $1, %rax
	jne .L.else.248
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
.data
.L.str.430:
	.string "TK_PUNCT"
.text
	leaq .L.str.430(%rip), %rax
	push %rax
	leaq -60(%rbp), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	movq $1, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.tokenize.again
	jmp .L.end.248
.L.else.248:
.L.end.248:
	movq $32, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.249
	movq $1, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.tokenize.again
	jmp .L.end.249
.L.else.249:
.L.end.249:
	movq $10, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.250
	movq $1, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.tokenize.again
	jmp .L.end.250
.L.else.250:
.L.end.250:
	movq $9, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.251
	movq $1, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.tokenize.again
	jmp .L.end.251
.L.else.251:
.L.end.251:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.431:
	.string "TK_UNKOWN"
.text
	leaq .L.str.431(%rip), %rax
	push %rax
	leaq -60(%rbp), %rax
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
	push %rax
.data
.L.str.432:
	.string "unkown character found"
.text
	leaq .L.str.432(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
.L.tokenize.again:
	jmp .L.while.start.242
.L.while.end.242:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
.data
.L.str.433:
	.string "TK_EOF"
.text
	leaq .L.str.433(%rip), %rax
	push %rax
	leaq -60(%rbp), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
.data
.L.str.434:
	.string "EOF"
.text
	leaq .L.str.434(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	addq $28, %rax
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
.L.while.start.252:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.252
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call isalpha
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.253
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call isdigit
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.254
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
	jne .L.else.255
	jmp .L.tokenize_ident.ident_end
	jmp .L.end.255
.L.else.255:
.L.end.255:
	jmp .L.end.254
.L.else.254:
.L.end.254:
	jmp .L.end.253
.L.else.253:
.L.end.253:
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
	jmp .L.while.start.252
.L.while.end.252:
.L.tokenize_ident.ident_end:
.data
.L.str.435:
	.string "TK_IDENT"
.text
	leaq .L.str.435(%rip), %rax
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
.L.while.start.256:
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
	jne .L.while.end.256
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
	jmp .L.while.start.256
.L.while.end.256:
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
.data
.L.str.436:
	.string "TK_STR"
.text
	leaq .L.str.436(%rip), %rax
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
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global skip_comment
skip_comment:
	push %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq %rdi, -8(%rbp)
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
	movq $47, %rax
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
	jne .L.else.257
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
.L.while.start.258:
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
	jne .L.while.end.258
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
	jne .L.else.259
	jmp .L.skip_comment.end
	jmp .L.end.259
.L.else.259:
.L.end.259:
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
	jmp .L.while.start.258
.L.while.end.258:
	jmp .L.end.257
.L.else.257:
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
	subq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	addq %rdi, %rax
.L.end.257:
.L.skip_comment.end:
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
.L.while.start.260:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call isdigit
	cmpq $1, %rax
	jne .L.while.end.260
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
	jmp .L.while.start.260
.L.while.end.260:
.data
.L.str.437:
	.string "TK_NUM"
.text
	leaq .L.str.437(%rip), %rax
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
	jne .L.else.261
.data
.L.str.438:
	.string "nil"
.text
	leaq .L.str.438(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.261
.L.else.261:
.L.end.261:
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
.L.str.439:
	.string "+-<>;:{}=,()[].*!%&/"
.text
	leaq .L.str.439(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.262:
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
	jne .L.while.end.262
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
	jne .L.else.263
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.263
.L.else.263:
.L.end.263:
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
	jmp .L.while.start.262
.L.while.end.262:
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
	subq $28, %rsp
	movq %rdi, -28(%rbp)
	movq %rsi, -20(%rbp)
	movl %edx, -12(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $36, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
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
	jne .L.else.264
.data
.L.str.440:
	.string "nil"
.text
	leaq .L.str.440(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.264
.L.else.264:
.L.end.264:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
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
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
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
	jne .L.else.265
.data
.L.str.441:
	.string "nil"
.text
	leaq .L.str.441(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call eprintf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.265
.L.else.265:
.L.end.265:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.266:
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
	jne .L.while.end.266
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
	jmp .L.while.start.266
.L.while.end.266:
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
	je .L.false.268
	movq $57, %rax
	push %rax
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.268
	movq $1, %rax
	jmp .L.end.268
.L.false.268:
	movq $0, %rax
.L.end.268:
	cmpq $1, %rax
	jne .L.else.267
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.267
.L.else.267:
.L.end.267:
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
	je .L.false.270
	movq $90, %rax
	push %rax
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.270
	movq $1, %rax
	jmp .L.end.270
.L.false.270:
	movq $0, %rax
.L.end.270:
	cmpq $1, %rax
	jne .L.else.269
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.269
.L.else.269:
.L.end.269:
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	push %rax
	movq $97, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.272
	movq $122, %rax
	push %rax
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $0, %rax
	je .L.false.272
	movq $1, %rax
	jmp .L.end.272
.L.false.272:
	movq $0, %rax
.L.end.272:
	cmpq $1, %rax
	jne .L.else.271
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.271
.L.else.271:
.L.end.271:
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
.L.str.442:
	.string "==<=>=!=++--"
.text
	leaq .L.str.442(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.273:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.273
	movq $11, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setge %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.274
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.274
.L.else.274:
.L.end.274:
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
	jne .L.else.275
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
	jne .L.else.276
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.276
.L.else.276:
.L.end.276:
	jmp .L.end.275
.L.else.275:
.L.end.275:
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
	jmp .L.while.start.273
.L.while.end.273:
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
.L.str.443:
	.string "error:%d:%d: %s\n"
.text
	leaq .L.str.443(%rip), %rax
	push %rax
	leaq -24(%rbp), %rax
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
	call get_line_number
	push %rax
	leaq -24(%rbp), %rax
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
	call get_column_number
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
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
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
.L.while.start.277:
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
	jne .L.while.end.277
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
	jne .L.else.278
	jmp .L.get_column_number.end
	jmp .L.end.278
.L.else.278:
.L.end.278:
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
	jmp .L.while.start.277
.L.while.end.277:
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
.L.while.start.279:
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
	jne .L.while.end.279
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
	jne .L.else.280
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
	jmp .L.end.280
.L.else.280:
.L.end.280:
	jmp .L.while.start.279
.L.while.end.279:
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
.L.while.start.281:
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
	jne .L.while.end.281
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
	jmp .L.while.start.281
.L.while.end.281:
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
