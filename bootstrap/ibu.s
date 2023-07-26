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
	leaq -24(%rbp), %rax
	push %rax
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_tokenizer
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	push %rax
	leaq -24(%rbp), %rax
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
	leaq -32(%rbp), %rax
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
	subq $36, %rsp
	movq %rdi, -36(%rbp)
	movq %rsi, -28(%rbp)
.data
.L.str.1:
	.string ".text\n"
.text
	leaq .L.str.1(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.2:
	.string ".global _start\n"
.text
	leaq .L.str.2(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.3:
	.string "_start:\n"
.text
	leaq .L.str.3(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.4:
	.string "\tpush %rbp\n"
.text
	leaq .L.str.4(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.5:
	.string "\tmovq %rsp, %rbp\n"
.text
	leaq .L.str.5(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.6:
	.string "\tmovq 8(%rbp), %rdi\n"
.text
	leaq .L.str.6(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.7:
	.string "\tleaq 16(%rbp), %rsi\n"
.text
	leaq .L.str.7(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.8:
	.string "\tcallq main\n"
.text
	leaq .L.str.8(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.9:
	.string "\tmovq %rax, %rdi\n"
.text
	leaq .L.str.9(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.10:
	.string "\tmovq $60, %rax\n"
.text
	leaq .L.str.10(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.11:
	.string "\tsyscall\n"
.text
	leaq .L.str.11(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -20(%rbp), %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.1:
	movq $0, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.1
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.12:
	.string "OBJ_FUNC"
.text
	leaq .L.str.12(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.2
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.3
	jmp .L.gen.next
	jmp .L.end.3
.L.else.3:
.L.end.3:
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $57, %rax
	movsbl (%rax), %eax
	cmpq $1, %rax
	jne .L.else.4
	jmp .L.gen.next
	jmp .L.end.4
.L.else.4:
.L.end.4:
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call assign_offset
	pop %rdi
	movl %eax, (%rdi)
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.data
.L.str.13:
	.string ".global %s\n"
.text
	leaq .L.str.13(%rip), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.14:
	.string "%s:\n"
.text
	leaq .L.str.14(%rip), %rax
	push %rax
	leaq -20(%rbp), %rax
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
	.string "\tpush %rbp\n"
.text
	leaq .L.str.15(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.16:
	.string "\tmovq %rsp, %rbp\n"
.text
	leaq .L.str.16(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.17:
	.string "\tsubq $%d, %rsp\n"
.text
	leaq .L.str.17(%rip), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	leaq -12(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.5:
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.5
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
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
	jne .L.else.6
.data
.L.str.18:
	.string "\tmovb %s"
.text
	leaq .L.str.18(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.6
.L.else.6:
	movq $2, %rax
	push %rax
	leaq -12(%rbp), %rax
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
	jne .L.else.7
.data
.L.str.19:
	.string "\tmovw %s"
.text
	leaq .L.str.19(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.7
.L.else.7:
	movq $4, %rax
	push %rax
	leaq -12(%rbp), %rax
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
	jne .L.else.8
.data
.L.str.20:
	.string "\tmovl %s"
.text
	leaq .L.str.20(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.8
.L.else.8:
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
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
	jne .L.else.9
.data
.L.str.21:
	.string "\tmovq %s"
.text
	leaq .L.str.21(%rip), %rax
	push %rax
	movq $8, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	imull %edi, %eax
	push %rax
	leaq -36(%rbp), %rax
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
	jmp .L.end.9
.L.else.9:
.data
.L.str.22:
	.string "unreachable\n"
.text
	leaq .L.str.22(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.9:
.L.end.8:
.L.end.7:
.L.end.6:
.data
.L.str.23:
	.string ", -%d(%rbp)\n"
.text
	leaq .L.str.23(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	leaq -12(%rbp), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $66, %rax
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
	jmp .L.while.start.5
.L.while.end.5:
	leaq -36(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_node_block
.data
.L.str.24:
	.string "\tleave\n"
.text
	leaq .L.str.24(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.25:
	.string "\tret\n"
.text
	leaq .L.str.25(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.2
.L.else.2:
.data
.L.str.26:
	.string "unreachable\n"
.text
	leaq .L.str.26(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.2:
.L.gen.next:
	leaq -20(%rbp), %rax
	push %rax
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $58, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.1
.L.while.end.1:
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
.L.while.start.10:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.10
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
	addq $116, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.10
.L.while.end.10:
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
.L.str.27:
	.string "ND_BLOCK"
.text
	leaq .L.str.27(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.11
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
	jmp .L.end.11
.L.else.11:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.28:
	.string "ND_EXPR_STMT"
.text
	leaq .L.str.28(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.12
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
	jmp .L.end.12
.L.else.12:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.29:
	.string "ND_RETURN"
.text
	leaq .L.str.29(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.13
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
.L.str.30:
	.string "\tmovq %rbp, %rsp\n"
.text
	leaq .L.str.30(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.31:
	.string "\tpop %rbp\n"
.text
	leaq .L.str.31(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.32:
	.string "\tretq\n"
.text
	leaq .L.str.32(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.13
.L.else.13:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.33:
	.string "ND_IF"
.text
	leaq .L.str.33(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.14
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
.L.str.34:
	.string "\tcmpq $1, %rax\n"
.text
	leaq .L.str.34(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.35:
	.string "\tjne .L.else.%d\n"
.text
	leaq .L.str.35(%rip), %rax
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
.L.str.36:
	.string "\tjmp .L.end.%d\n"
.text
	leaq .L.str.36(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.37:
	.string ".L.else.%d:\n"
.text
	leaq .L.str.37(%rip), %rax
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
	jne .L.else.15
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
	jmp .L.end.15
.L.else.15:
.L.end.15:
.data
.L.str.38:
	.string ".L.end.%d:\n"
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
	jmp .L.end.14
.L.else.14:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.39:
	.string "ND_GOTO"
.text
	leaq .L.str.39(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.16
.data
.L.str.40:
	.string "\tjmp .L.%s.%s\n"
.text
	leaq .L.str.40(%rip), %rax
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
	jmp .L.end.16
.L.else.16:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.41:
	.string "ND_LABEL"
.text
	leaq .L.str.41(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.17
.data
.L.str.42:
	.string ".L.%s.%s:\n"
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
	addq $56, %rax
	movq (%rax), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.17
.L.else.17:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.43:
	.string "ND_WHILE"
.text
	leaq .L.str.43(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.18
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
.L.str.45:
	.string "\tcmpq $1, %rax\n"
.text
	leaq .L.str.45(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
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
	jmp .L.end.18
.L.else.18:
.data
.L.str.49:
	.string "%s\n"
.text
	leaq .L.str.49(%rip), %rax
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
.data
.L.str.50:
	.string "gen_stmt unreachable\n"
.text
	leaq .L.str.50(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.18:
.L.end.17:
.L.end.16:
.L.end.14:
.L.end.13:
.L.end.12:
.L.end.11:
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
	jne .L.else.19
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.19
.L.else.19:
.L.end.19:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.20:
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.20
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
.L.str.51:
	.string "\tpush %rax\n"
.text
	leaq .L.str.51(%rip), %rax
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
	addq $116, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.20
.L.while.end.20:
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
.L.while.start.21:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.21
.data
.L.str.52:
	.string "\tpop %s\n"
.text
	leaq .L.str.52(%rip), %rax
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
	jmp .L.while.start.21
.L.while.end.21:
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
.L.str.53:
	.string "TY_PTR"
.text
	leaq .L.str.53(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.22
.data
.L.str.54:
	.string "\tmovzbq %al, %rax\n"
.text
	leaq .L.str.54(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.22
.L.else.22:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.55:
	.string "TY_I64"
.text
	leaq .L.str.55(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.23
.data
.L.str.56:
	.string "\tmovzbq %al, %rax\n"
.text
	leaq .L.str.56(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.23
.L.else.23:
.data
.L.str.57:
	.string "\tmovzbl %al, %eax\n"
.text
	leaq .L.str.57(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.L.end.23:
.L.end.22:
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
.L.str.58:
	.string "TY_PTR"
.text
	leaq .L.str.58(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.24
.data
.L.str.59:
	.string "\t%sq %rdi, %rax\n"
.text
	leaq .L.str.59(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.24
.L.else.24:
.data
.L.str.60:
	.string "\t%sl %edi, %eax\n"
.text
	leaq .L.str.60(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
.L.end.24:
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
.L.str.61:
	.string "TY_STRUCT"
.text
	leaq .L.str.61(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.25
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.25
.L.else.25:
.L.end.25:
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
	jne .L.else.26
.data
.L.str.62:
	.string "\tmovq (%rax), %rax\n"
.text
	leaq .L.str.62(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.26
.L.else.26:
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
	jne .L.else.27
.data
.L.str.63:
	.string "\tmovslq (%rax), %rax\n"
.text
	leaq .L.str.63(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.27
.L.else.27:
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
	jne .L.else.28
.data
.L.str.64:
	.string "\tmovswl (%rax), %eax\n"
.text
	leaq .L.str.64(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.28
.L.else.28:
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
	jne .L.else.29
.data
.L.str.65:
	.string "\tmovsbl (%rax), %eax\n"
.text
	leaq .L.str.65(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.29
.L.else.29:
.data
.L.str.66:
	.string "unreachable\n"
.text
	leaq .L.str.66(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.29:
.L.end.28:
.L.end.27:
.L.end.26:
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
.L.str.67:
	.string "TY_STRUCT"
.text
	leaq .L.str.67(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.30
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.31:
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
	jne .L.while.end.31
.data
.L.str.68:
	.string "\tmovb %d(%rax), %r8b\n"
.text
	leaq .L.str.68(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.69:
	.string "\tmovb %r8b, %d(%rdi)\n"
.text
	leaq .L.str.69(%rip), %rax
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
	jmp .L.while.start.31
.L.while.end.31:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.30
.L.else.30:
.L.end.30:
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
	jne .L.else.32
.data
.L.str.70:
	.string "\tmovb %al, (%rdi)\n"
.text
	leaq .L.str.70(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.32
.L.else.32:
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
	jne .L.else.33
.data
.L.str.71:
	.string "\tmovw %ax, (%rdi)\n"
.text
	leaq .L.str.71(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.33
.L.else.33:
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
	jne .L.else.34
.data
.L.str.72:
	.string "\tmovl %eax, (%rdi)\n"
.text
	leaq .L.str.72(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.34
.L.else.34:
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
	jne .L.else.35
.data
.L.str.73:
	.string "\tmovq %rax, (%rdi)\n"
.text
	leaq .L.str.73(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.35
.L.else.35:
.data
.L.str.74:
	.string "unreachable\n"
.text
	leaq .L.str.74(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.35:
.L.end.34:
.L.end.33:
.L.end.32:
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
.L.str.75:
	.string "ND_MEMBER_ACCESS"
.text
	leaq .L.str.75(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.36
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
.L.str.76:
	.string "\taddq $%d, %rax\n"
.text
	leaq .L.str.76(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.36
.L.else.36:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.77:
	.string "ND_VAR"
.text
	leaq .L.str.77(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.37
.data
.L.str.78:
	.string "\tleaq -%d(%rbp), %rax\n"
.text
	leaq .L.str.78(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.37
.L.else.37:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.79:
	.string "ND_DEREF"
.text
	leaq .L.str.79(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.38
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
	jmp .L.end.38
.L.else.38:
.data
.L.str.80:
	.string "%s\n"
.text
	leaq .L.str.80(%rip), %rax
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
.L.str.81:
	.string "unreachable\n"
.text
	leaq .L.str.81(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.38:
.L.end.37:
.L.end.36:
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
.L.str.82:
	.string "\tpush %rax\n"
.text
	leaq .L.str.82(%rip), %rax
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
.L.str.83:
	.string "\tpop %rdi\n"
.text
	leaq .L.str.83(%rip), %rax
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
	jne .L.else.39
.data
.L.str.84:
	.string "node == nil. this shoult not happen!\n"
.text
	leaq .L.str.84(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.39
.L.else.39:
.L.end.39:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.85:
	.string "ND_MEMBER_ACCESS"
.text
	leaq .L.str.85(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.40
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
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_load
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.40
.L.else.40:
.L.end.40:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.86:
	.string "ND_STR"
.text
	leaq .L.str.86(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.41
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
.L.str.87:
	.string ".data\n"
.text
	leaq .L.str.87(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.88:
	.string ".L.str.%d:\n"
.text
	leaq .L.str.88(%rip), %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.89:
	.string "\t.string %s\n"
.text
	leaq .L.str.89(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.90:
	.string ".text\n"
.text
	leaq .L.str.90(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.91:
	.string "\tleaq .L.str.%d(%rip), %rax\n"
.text
	leaq .L.str.91(%rip), %rax
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
	jmp .L.end.41
.L.else.41:
.L.end.41:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.92:
	.string "ND_NUM"
.text
	leaq .L.str.92(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.42
.data
.L.str.93:
	.string "\tmovq $%s, %rax\n"
.text
	leaq .L.str.93(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
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
	jmp .L.end.42
.L.else.42:
.L.end.42:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.94:
	.string "ND_ASSIGN"
.text
	leaq .L.str.94(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.43
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
.L.str.95:
	.string "\tpush %rax\n"
.text
	leaq .L.str.95(%rip), %rax
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
.L.str.96:
	.string "\tpop %rdi\n"
.text
	leaq .L.str.96(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_store
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.43
.L.else.43:
.L.end.43:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.97:
	.string "ND_VAR"
.text
	leaq .L.str.97(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.44
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
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_load
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.44
.L.else.44:
.L.end.44:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.98:
	.string "ND_FUNC_CALL"
.text
	leaq .L.str.98(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.45
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $108, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call func_call_args_to_regi
.data
.L.str.99:
	.string "\tmovq $0, %rax\n"
.text
	leaq .L.str.99(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.100:
	.string "\tcall %s\n"
.text
	leaq .L.str.100(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $96, %rax
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
	jmp .L.end.45
.L.else.45:
.L.end.45:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.101:
	.string "ND_EXPR_STMT"
.text
	leaq .L.str.101(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.46
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
	jmp .L.end.46
.L.else.46:
.L.end.46:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.102:
	.string "ND_REF"
.text
	leaq .L.str.102(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.47
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
	jmp .L.end.47
.L.else.47:
.L.end.47:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.103:
	.string "ND_DEREF"
.text
	leaq .L.str.103(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.48
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
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_load
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.48
.L.else.48:
.L.end.48:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.104:
	.string "ND_NOT"
.text
	leaq .L.str.104(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.49
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
.L.str.105:
	.string "\tcmpq $0, %rax\n"
.text
	leaq .L.str.105(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.106:
	.string "\tsete %al\n"
.text
	leaq .L.str.106(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.data
.L.str.107:
	.string "\tmovzbq %al, %rax\n"
.text
	leaq .L.str.107(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.49
.L.else.49:
.L.end.49:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.108:
	.string "ND_ADD"
.text
	leaq .L.str.108(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.50
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
.L.str.109:
	.string "add"
.text
	leaq .L.str.109(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
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
	jmp .L.end.50
.L.else.50:
.L.end.50:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.110:
	.string "ND_SUB"
.text
	leaq .L.str.110(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.51
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
.L.str.111:
	.string "sub"
.text
	leaq .L.str.111(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
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
	jmp .L.end.51
.L.else.51:
.L.end.51:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.112:
	.string "ND_MUL"
.text
	leaq .L.str.112(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.52
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
.L.str.113:
	.string "imul"
.text
	leaq .L.str.113(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
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
	jmp .L.end.52
.L.else.52:
.L.end.52:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.114:
	.string "ND_DIV"
.text
	leaq .L.str.114(%rip), %rax
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
	addq $88, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.54
.data
.L.str.115:
	.string "\tcqto\n"
.text
	leaq .L.str.115(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.54
.L.else.54:
.data
.L.str.116:
	.string "\tcltd\n"
.text
	leaq .L.str.116(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.L.end.54:
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.55
.data
.L.str.117:
	.string "\tidivq %rdi\n"
.text
	leaq .L.str.117(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.55
.L.else.55:
.data
.L.str.118:
	.string "\tidivl %edi\n"
.text
	leaq .L.str.118(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.L.end.55:
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
.L.str.119:
	.string "ND_MOD"
.text
	leaq .L.str.119(%rip), %rax
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
	addq $88, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.57
.data
.L.str.120:
	.string "\tcqto\n"
.text
	leaq .L.str.120(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.57
.L.else.57:
.data
.L.str.121:
	.string "\tcltd\n"
.text
	leaq .L.str.121(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.L.end.57:
	movq $8, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.58
.data
.L.str.122:
	.string "\tidivq %rdi\n"
.text
	leaq .L.str.122(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.58
.L.else.58:
.data
.L.str.123:
	.string "\tidivl %edi\n"
.text
	leaq .L.str.123(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
.L.end.58:
.data
.L.str.124:
	.string "\tmovq %rdx, %rax\n"
.text
	leaq .L.str.124(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
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
.L.str.125:
	.string "ND_EQ"
.text
	leaq .L.str.125(%rip), %rax
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
.L.str.126:
	.string "cmp"
.text
	leaq .L.str.126(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
.data
.L.str.127:
	.string "\tsete %al\n"
.text
	leaq .L.str.127(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
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
.L.str.128:
	.string "ND_NE"
.text
	leaq .L.str.128(%rip), %rax
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
	.string "cmp"
.text
	leaq .L.str.129(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
.data
.L.str.130:
	.string "\tsetne %al\n"
.text
	leaq .L.str.130(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
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
.L.str.131:
	.string "ND_LE"
.text
	leaq .L.str.131(%rip), %rax
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
.L.str.132:
	.string "cmp"
.text
	leaq .L.str.132(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
.data
.L.str.133:
	.string "\tsetle %al\n"
.text
	leaq .L.str.133(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
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
.L.str.134:
	.string "ND_LT"
.text
	leaq .L.str.134(%rip), %rax
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
.L.str.135:
	.string "cmp"
.text
	leaq .L.str.135(%rip), %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call gen_binop
.data
.L.str.136:
	.string "\tsetl %al\n"
.text
	leaq .L.str.136(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call gen_condition_store
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.62
.L.else.62:
.L.end.62:
.data
.L.str.137:
	.string "%s unreachable\n"
.text
	leaq .L.str.137(%rip), %rax
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
.L.str.138:
	.string "%rdi"
.text
	leaq .L.str.138(%rip), %rax
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
.L.str.139:
	.string "%rsi"
.text
	leaq .L.str.139(%rip), %rax
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
.L.str.140:
	.string "%rdx"
.text
	leaq .L.str.140(%rip), %rax
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
.L.str.141:
	.string "%rcx"
.text
	leaq .L.str.141(%rip), %rax
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
.L.str.142:
	.string "%r8"
.text
	leaq .L.str.142(%rip), %rax
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
.L.str.143:
	.string "%r9"
.text
	leaq .L.str.143(%rip), %rax
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
.L.str.144:
	.string "%edi"
.text
	leaq .L.str.144(%rip), %rax
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
.L.str.145:
	.string "%esi"
.text
	leaq .L.str.145(%rip), %rax
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
.L.str.146:
	.string "%edx"
.text
	leaq .L.str.146(%rip), %rax
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
.L.str.147:
	.string "%ecx"
.text
	leaq .L.str.147(%rip), %rax
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
.L.str.148:
	.string "%r8d"
.text
	leaq .L.str.148(%rip), %rax
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
.L.str.149:
	.string "%r9d"
.text
	leaq .L.str.149(%rip), %rax
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
.L.str.150:
	.string "%di"
.text
	leaq .L.str.150(%rip), %rax
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
.L.str.151:
	.string "%si"
.text
	leaq .L.str.151(%rip), %rax
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
.L.str.152:
	.string "%dx"
.text
	leaq .L.str.152(%rip), %rax
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
.L.str.153:
	.string "%cx"
.text
	leaq .L.str.153(%rip), %rax
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
.L.str.154:
	.string "%r8w"
.text
	leaq .L.str.154(%rip), %rax
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
.L.str.155:
	.string "%r9w"
.text
	leaq .L.str.155(%rip), %rax
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
.L.str.156:
	.string "%dil"
.text
	leaq .L.str.156(%rip), %rax
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
.L.str.157:
	.string "%sil"
.text
	leaq .L.str.157(%rip), %rax
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
.L.str.158:
	.string "%dl"
.text
	leaq .L.str.158(%rip), %rax
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
.L.str.159:
	.string "%cl"
.text
	leaq .L.str.159(%rip), %rax
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
.L.str.160:
	.string "%r8b"
.text
	leaq .L.str.160(%rip), %rax
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
.L.str.161:
	.string "%r9b"
.text
	leaq .L.str.161(%rip), %rax
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
.L.while.start.63:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.162:
	.string "TK_EOF"
.text
	leaq .L.str.162(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.63
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.163:
	.string "func"
.text
	leaq .L.str.163(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.64
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_func
	jmp .L.end.64
.L.else.64:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.164:
	.string "struct"
.text
	leaq .L.str.164(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.65
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_struct
	jmp .L.end.65
.L.else.65:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.165:
	.string "expected `func` or `struct`"
.text
	leaq .L.str.165(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
.L.end.65:
.L.end.64:
	jmp .L.while.start.63
.L.while.end.63:
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
.L.str.166:
	.string "OBJ_FUNC"
.text
	leaq .L.str.166(%rip), %rax
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
	leaq -16(%rbp), %rax
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
.L.str.167:
	.string "("
.text
	leaq .L.str.167(%rip), %rax
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
.L.str.168:
	.string ")"
.text
	leaq .L.str.168(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.66
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
	jmp .L.end.66
.L.else.66:
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
.L.end.66:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.169:
	.string ")"
.text
	leaq .L.str.169(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -24(%rbp), %rax
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
.L.str.170:
	.string ";"
.text
	leaq .L.str.170(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.67
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.171:
	.string ";"
.text
	leaq .L.str.171(%rip), %rax
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
	jne .L.else.68
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq -24(%rbp), %rax
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
	jmp .L.end.68
.L.else.68:
.L.end.68:
	jmp .L.end.67
.L.else.67:
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
	jne .L.else.69
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.70
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.172:
	.string "function is already defined somewhere"
.text
	leaq .L.str.172(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.70
.L.else.70:
.L.end.70:
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
	jmp .L.end.69
.L.else.69:
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq -24(%rbp), %rax
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
.L.end.69:
.L.end.67:
	leave
	ret
.global parse_struct
parse_struct:
	push %rbp
	movq %rsp, %rbp
	subq $84, %rsp
	movq %rdi, -84(%rbp)
	leaq -76(%rbp), %rax
	push %rax
	movq $53, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	pop %rdi
	movq %rax, (%rdi)
	leaq -60(%rbp), %rax
	addq $20, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -32(%rbp), %rax
	push %rax
	leaq -60(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.173:
	.string "struct"
.text
	leaq .L.str.173(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -68(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
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
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	push %rax
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
.data
.L.str.174:
	.string "TY_STRUCT"
.text
	leaq .L.str.174(%rip), %rax
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
.L.str.175:
	.string ";"
.text
	leaq .L.str.175(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.71
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movb %al, (%rdi)
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
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
.L.str.176:
	.string ";"
.text
	leaq .L.str.176(%rip), %rax
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
	leaq -68(%rbp), %rax
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
	jne .L.else.72
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_user_defined_type
	jmp .L.end.72
.L.else.72:
.L.end.72:
	jmp .L.end.71
.L.else.71:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.177:
	.string "{"
.text
	leaq .L.str.177(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
.L.while.start.73:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.178:
	.string "}"
.text
	leaq .L.str.178(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.73
	leaq -24(%rbp), %rax
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
	leaq -32(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq -24(%rbp), %rax
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
	jmp .L.while.start.73
.L.while.end.73:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.179:
	.string "}"
.text
	leaq .L.str.179(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq -60(%rbp), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -60(%rbp), %rax
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
	leaq -68(%rbp), %rax
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
	jne .L.else.74
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_user_defined_type
	jmp .L.end.74
.L.else.74:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movsbl (%rax), %eax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.75
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.180:
	.string "struct is already defined somewhere"
.text
	leaq .L.str.180(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.75
.L.else.75:
.L.end.75:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
	leaq -60(%rbp), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -60(%rbp), %rax
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
.L.end.74:
.L.end.71:
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
.L.while.start.76:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.76
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
	jmp .L.while.start.76
.L.while.end.76:
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
.L.while.start.77:
	leaq -106(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.181:
	.string ")"
.text
	leaq .L.str.181(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.77
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
.L.str.182:
	.string "OBJ_VAR"
.text
	leaq .L.str.182(%rip), %rax
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
.L.str.183:
	.string ","
.text
	leaq .L.str.183(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.78
	leaq -106(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.184:
	.string ","
.text
	leaq .L.str.184(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	jmp .L.end.78
.L.else.78:
.L.end.78:
	leaq -106(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.185:
	.string ")"
.text
	leaq .L.str.185(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.79
	jmp .L.parse_func_params.end
	jmp .L.end.79
.L.else.79:
.L.end.79:
	jmp .L.while.start.77
.L.while.end.77:
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
.L.while.start.80:
	movq $0, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.80
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
	jmp .L.while.start.80
.L.while.end.80:
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
	movq $124, %rax
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
.L.str.186:
	.string "ND_NUM"
.text
	leaq .L.str.186(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
.data
.L.str.187:
	.string "1"
.text
	leaq .L.str.187(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
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
	subq $156, %rsp
	movq %rdi, -156(%rbp)
	leaq -148(%rbp), %rax
	push %rax
.data
.L.str.188:
	.string "ND_BLOCK"
.text
	leaq .L.str.188(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -140(%rbp), %rax
	addq $116, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	leaq -140(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -156(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.189:
	.string "{"
.text
	leaq .L.str.189(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
.L.while.start.81:
	leaq -156(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.190:
	.string "}"
.text
	leaq .L.str.190(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.while.end.81
	leaq -8(%rbp), %rax
	push %rax
	leaq -156(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_stmt
	pop %rdi
	movq %rax, (%rdi)
	leaq -156(%rbp), %rax
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
	jne .L.else.82
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $116, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.82
.L.else.82:
.L.end.82:
	jmp .L.while.start.81
.L.while.end.81:
	leaq -156(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.191:
	.string "}"
.text
	leaq .L.str.191(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -148(%rbp), %rax
	movq (%rax), %rax
	addq $24, %rax
	push %rax
	leaq -140(%rbp), %rax
	addq $116, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -148(%rbp), %rax
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
	movq %rdi, -48(%rbp)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.192:
	.string "var"
.text
	leaq .L.str.192(%rip), %rax
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
	pop %rdi
	movq $0, %rax
	call parser_next
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
	leaq -16(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -24(%rbp), %rax
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
	push %rax
.data
.L.str.193:
	.string ";"
.text
	leaq .L.str.193(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.194:
	.string "OBJ_VAR"
.text
	leaq .L.str.194(%rip), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
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
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.83
.L.else.83:
.L.end.83:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.195:
	.string "goto"
.text
	leaq .L.str.195(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.84
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
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
.L.str.196:
	.string ";"
.text
	leaq .L.str.196(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -40(%rbp), %rax
	push %rax
.data
.L.str.197:
	.string "ND_GOTO"
.text
	leaq .L.str.197(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.84
.L.else.84:
.L.end.84:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.198:
	.string "TK_EOF"
.text
	leaq .L.str.198(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.85
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.199:
	.string ":"
.text
	leaq .L.str.199(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.86
	leaq -8(%rbp), %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
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
.L.str.200:
	.string ":"
.text
	leaq .L.str.200(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -40(%rbp), %rax
	push %rax
.data
.L.str.201:
	.string "ND_LABEL"
.text
	leaq .L.str.201(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.86
.L.else.86:
.L.end.86:
	jmp .L.end.85
.L.else.85:
.L.end.85:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.202:
	.string "if"
.text
	leaq .L.str.202(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.87
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -40(%rbp), %rax
	push %rax
.data
.L.str.203:
	.string "ND_IF"
.text
	leaq .L.str.203(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_block
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
.L.str.204:
	.string "else"
.text
	leaq .L.str.204(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.88
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_stmt
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.88
.L.else.88:
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movq %rax, (%rdi)
.L.end.88:
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.87
.L.else.87:
.L.end.87:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.205:
	.string "while"
.text
	leaq .L.str.205(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.89
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -40(%rbp), %rax
	push %rax
.data
.L.str.206:
	.string "ND_WHILE"
.text
	leaq .L.str.206(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
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
.L.str.207:
	.string "{"
.text
	leaq .L.str.207(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.90
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.90
.L.else.90:
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	movq $0, %rax
	call node_true
	pop %rdi
	movq %rax, (%rdi)
.L.end.90:
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
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
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.89
.L.else.89:
.L.end.89:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.208:
	.string "return"
.text
	leaq .L.str.208(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.91
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -40(%rbp), %rax
	push %rax
.data
.L.str.209:
	.string "ND_RETURN"
.text
	leaq .L.str.209(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr_stmt
	pop %rdi
	movq %rax, (%rdi)
	leaq -40(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.91
.L.else.91:
.L.end.91:
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.210:
	.string "{"
.text
	leaq .L.str.210(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.92
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_block
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.92
.L.else.92:
.L.end.92:
	leaq -48(%rbp), %rax
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
.L.str.211:
	.string "ND_EXPR_STMT"
.text
	leaq .L.str.211(%rip), %rax
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
.L.str.212:
	.string ";"
.text
	leaq .L.str.212(%rip), %rax
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
	subq $16, %rsp
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_relational
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.93:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.93
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.213:
	.string "=="
.text
	leaq .L.str.213(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.94
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.214:
	.string "ND_EQ"
.text
	leaq .L.str.214(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_relational
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_equality.again
	jmp .L.end.94
.L.else.94:
.L.end.94:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.215:
	.string "!="
.text
	leaq .L.str.215(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.95
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.216:
	.string "ND_NE"
.text
	leaq .L.str.216(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_relational
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_equality.again
	jmp .L.end.95
.L.else.95:
.L.end.95:
	jmp .L.parse_equality.end
.L.parse_equality.again:
	jmp .L.while.start.93
.L.while.end.93:
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
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_add
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.96:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.96
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.217:
	.string "<="
.text
	leaq .L.str.217(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.97
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.218:
	.string "ND_LE"
.text
	leaq .L.str.218(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_add
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_relational.again
	jmp .L.end.97
.L.else.97:
.L.end.97:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.219:
	.string ">="
.text
	leaq .L.str.219(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.98
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.220:
	.string "ND_LE"
.text
	leaq .L.str.220(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_add
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
	jmp .L.parse_relational.again
	jmp .L.end.98
.L.else.98:
.L.end.98:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.221:
	.string "<"
.text
	leaq .L.str.221(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.99
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.222:
	.string "ND_LT"
.text
	leaq .L.str.222(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_add
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call new_binop
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.parse_relational.again
	jmp .L.end.99
.L.else.99:
.L.end.99:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.223:
	.string ">"
.text
	leaq .L.str.223(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.100
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.224:
	.string "ND_LT"
.text
	leaq .L.str.224(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_add
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
	jmp .L.parse_relational.again
	jmp .L.end.100
.L.else.100:
.L.end.100:
	jmp .L.parse_relational.end
.L.parse_relational.again:
	jmp .L.while.start.96
.L.while.end.96:
.L.parse_relational.end:
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
.L.while.start.101:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.101
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.225:
	.string "+"
.text
	leaq .L.str.225(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.102
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.226:
	.string "ND_ADD"
.text
	leaq .L.str.226(%rip), %rax
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
	jmp .L.end.102
.L.else.102:
.L.end.102:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.227:
	.string "-"
.text
	leaq .L.str.227(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.103
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.228:
	.string "ND_SUB"
.text
	leaq .L.str.228(%rip), %rax
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
	jmp .L.end.103
.L.else.103:
.L.end.103:
	jmp .L.parse_add.end
.L.parse_add.again:
	jmp .L.while.start.101
.L.while.end.101:
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
.L.while.start.104:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.104
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.229:
	.string "*"
.text
	leaq .L.str.229(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.105
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.230:
	.string "ND_MUL"
.text
	leaq .L.str.230(%rip), %rax
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
	jmp .L.end.105
.L.else.105:
.L.end.105:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.231:
	.string "/"
.text
	leaq .L.str.231(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.106
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.232:
	.string "ND_DIV"
.text
	leaq .L.str.232(%rip), %rax
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
	jmp .L.end.106
.L.else.106:
.L.end.106:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.233:
	.string "%"
.text
	leaq .L.str.233(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.107
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.234:
	.string "ND_MOD"
.text
	leaq .L.str.234(%rip), %rax
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
	jmp .L.end.107
.L.else.107:
.L.end.107:
	jmp .L.parse_mul.end
.L.parse_mul.again:
	jmp .L.while.start.104
.L.while.end.104:
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
.L.str.235:
	.string "ND_NUM"
.text
	leaq .L.str.235(%rip), %rax
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
.data
.L.str.236:
	.string "1"
.text
	leaq .L.str.236(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
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
	leaq -8(%rbp), %rax
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
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.237:
	.string "ND_DEREF"
.text
	leaq .L.str.237(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
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
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.238:
	.string "TY_PTR"
.text
	leaq .L.str.238(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.108
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.239:
	.string "invalid pointer dereference"
.text
	leaq .L.str.239(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.108
.L.else.108:
.L.end.108:
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
	subq $44, %rsp
	movq %rdi, -44(%rbp)
	movq %rsi, -36(%rbp)
	movl %edx, -28(%rbp)
	movq %rcx, -24(%rbp)
	movq %r8, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $124, %rax
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
	addq $104, %rax
	push %rax
	leaq -28(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
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
.L.while.start.109:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.109
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
	jne .L.else.110
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.110
.L.else.110:
.L.end.110:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.109
.L.while.end.109:
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
	subq $52, %rsp
	movq %rdi, -52(%rbp)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.240:
	.string "TK_NUM"
.text
	leaq .L.str.240(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.111
	leaq -44(%rbp), %rax
	push %rax
.data
.L.str.241:
	.string "ND_NUM"
.text
	leaq .L.str.241(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	jmp .L.end.111
.L.else.111:
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.242:
	.string "TK_STR"
.text
	leaq .L.str.242(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.112
	leaq -44(%rbp), %rax
	push %rax
.data
.L.str.243:
	.string "ND_STR"
.text
	leaq .L.str.243(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	jmp .L.end.112
.L.else.112:
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.244:
	.string "nil"
.text
	leaq .L.str.244(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.113
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -44(%rbp), %rax
	push %rax
.data
.L.str.245:
	.string "ND_NUM"
.text
	leaq .L.str.245(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
.data
.L.str.246:
	.string "0"
.text
	leaq .L.str.246(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.113
.L.else.113:
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.247:
	.string "typesize"
.text
	leaq .L.str.247(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.114
	leaq -44(%rbp), %rax
	push %rax
.data
.L.str.248:
	.string "ND_NUM"
.text
	leaq .L.str.248(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.249:
	.string "("
.text
	leaq .L.str.249(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_ty
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	movq $32, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	push %rax
	movq $10, %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call itoa
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.250:
	.string ")"
.text
	leaq .L.str.250(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	jmp .L.end.114
.L.else.114:
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.251:
	.string "sizeof"
.text
	leaq .L.str.251(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.115
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.252:
	.string "("
.text
	leaq .L.str.252(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -44(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_unary
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.253:
	.string ")"
.text
	leaq .L.str.253(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	leaq -36(%rbp), %rax
	push %rax
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -44(%rbp), %rax
	push %rax
.data
.L.str.254:
	.string "ND_NUM"
.text
	leaq .L.str.254(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
	leaq -36(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $32, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	push %rax
	movq $10, %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call itoa
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.115
.L.else.115:
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.255:
	.string "TK_IDENT"
.text
	leaq .L.str.255(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.116
	leaq -32(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -24(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.256:
	.string "("
.text
	leaq .L.str.256(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.117
	leaq -44(%rbp), %rax
	push %rax
.data
.L.str.257:
	.string "ND_FUNC_CALL"
.text
	leaq .L.str.257(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.258:
	.string "("
.text
	leaq .L.str.258(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $96, %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $108, %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_args
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.259:
	.string ")"
.text
	leaq .L.str.259(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -16(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $96, %rax
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
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.118
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.260:
	.string "unkown function"
.text
	leaq .L.str.260(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.118
.L.else.118:
.L.end.118:
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.117
.L.else.117:
	leaq -44(%rbp), %rax
	push %rax
.data
.L.str.261:
	.string "ND_VAR"
.text
	leaq .L.str.261(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call new_node
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
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
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.119
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.262:
	.string "unkown object"
.text
	leaq .L.str.262(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.119
.L.else.119:
.L.end.119:
	leaq -44(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.end.117:
	jmp .L.end.116
.L.else.116:
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.263:
	.string "("
.text
	leaq .L.str.263(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.120
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -44(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	pop %rdi
	movq %rax, (%rdi)
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.264:
	.string ")"
.text
	leaq .L.str.264(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	jmp .L.end.120
.L.else.120:
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.265:
	.string "expected number or identifier"
.text
	leaq .L.str.265(%rip), %rax
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
.L.end.120:
.L.end.116:
.L.end.115:
.L.end.114:
.L.end.113:
.L.end.112:
.L.end.111:
	leaq -44(%rbp), %rax
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
.L.str.266:
	.string "*"
.text
	leaq .L.str.266(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.121
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_deref
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.121
.L.else.121:
.L.end.121:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.267:
	.string "&"
.text
	leaq .L.str.267(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.122
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.268:
	.string "ND_REF"
.text
	leaq .L.str.268(%rip), %rax
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
	jmp .L.end.122
.L.else.122:
.L.end.122:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.269:
	.string "!"
.text
	leaq .L.str.269(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.123
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.270:
	.string "ND_NOT"
.text
	leaq .L.str.270(%rip), %rax
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
	jmp .L.end.123
.L.else.123:
.L.end.123:
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
	leaq -36(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.124:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.124
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.271:
	.string "++"
.text
	leaq .L.str.271(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.125
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
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.272:
	.string "ND_SUB"
.text
	leaq .L.str.272(%rip), %rax
	push %rax
.data
.L.str.273:
	.string "ND_ASSIGN"
.text
	leaq .L.str.273(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.274:
	.string "ND_ADD"
.text
	leaq .L.str.274(%rip), %rax
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
	jmp .L.end.125
.L.else.125:
.L.end.125:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.275:
	.string "--"
.text
	leaq .L.str.275(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.126
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
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.276:
	.string "ND_ADD"
.text
	leaq .L.str.276(%rip), %rax
	push %rax
.data
.L.str.277:
	.string "ND_ASSIGN"
.text
	leaq .L.str.277(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.278:
	.string "ND_SUB"
.text
	leaq .L.str.278(%rip), %rax
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
	jmp .L.end.126
.L.else.126:
.L.end.126:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.279:
	.string "["
.text
	leaq .L.str.279(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.127
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
	leaq -24(%rbp), %rax
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
.L.str.280:
	.string "]"
.text
	leaq .L.str.280(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.281:
	.string "TY_PTR"
.text
	leaq .L.str.281(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.128
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.282:
	.string "`[]` cannot access to none pointer type."
.text
	leaq .L.str.282(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.128
.L.else.128:
.L.end.128:
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.283:
	.string "ND_NUM"
.text
	leaq .L.str.283(%rip), %rax
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
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $8, %rax
	movslq (%rax), %rax
	push %rax
	movq $32, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call alloc
	push %rax
	movq $10, %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call itoa
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
.data
.L.str.284:
	.string "ND_MUL"
.text
	leaq .L.str.284(%rip), %rax
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
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.285:
	.string "ND_ADD"
.text
	leaq .L.str.285(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
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
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.286:
	.string "ND_DEREF"
.text
	leaq .L.str.286(%rip), %rax
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
	jmp .L.end.127
.L.else.127:
.L.end.127:
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.287:
	.string "."
.text
	leaq .L.str.287(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.129
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
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_next
	leaq -44(%rbp), %rax
	push %rax
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -60(%rbp), %rax
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
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.288:
	.string "TY_PTR"
.text
	leaq .L.str.288(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.130
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.289:
	.string "TY_STRUCT"
.text
	leaq .L.str.289(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	cmpq $1, %rax
	jne .L.else.131
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.290:
	.string "cannot access from none struct type"
.text
	leaq .L.str.290(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.131
.L.else.131:
.L.end.131:
	leaq -52(%rbp), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq -44(%rbp), %rax
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
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.132
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.291:
	.string "member name not found"
.text
	leaq .L.str.291(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.132
.L.else.132:
.L.end.132:
	leaq -36(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -32(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.292:
	.string "ND_DEREF"
.text
	leaq .L.str.292(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $0, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
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
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.293:
	.string "ND_MEMBER_ACCESS"
.text
	leaq .L.str.293(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -36(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
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
	jmp .L.end.130
.L.else.130:
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.294:
	.string "TY_STRUCT"
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
	jne .L.else.133
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.295:
	.string "cannot access from none struct type"
.text
	leaq .L.str.295(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.133
.L.else.133:
.L.end.133:
	leaq -52(%rbp), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	leaq -44(%rbp), %rax
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
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.134
	leaq -84(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.296:
	.string "member name not found"
.text
	leaq .L.str.296(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.134
.L.else.134:
.L.end.134:
	leaq -36(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -32(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -76(%rbp), %rax
	push %rax
.data
.L.str.297:
	.string "ND_MEMBER_ACCESS"
.text
	leaq .L.str.297(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -36(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	push %rax
	leaq -32(%rbp), %rax
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
.L.end.130:
	jmp .L.parse_unary.again
	jmp .L.end.129
.L.else.129:
.L.end.129:
	jmp .L.parse_unary.end
.L.parse_unary.again:
	jmp .L.while.start.124
.L.while.end.124:
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
	subq $140, %rsp
	movq %rdi, -140(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	leaq -132(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -140(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.298:
	.string ")"
.text
	leaq .L.str.298(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.135
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.135
.L.else.135:
.L.end.135:
.L.parse_args.loop:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $116, %rax
	push %rax
	leaq -140(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parse_expr
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	leaq -140(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call add_type
	leaq -140(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.299:
	.string ","
.text
	leaq .L.str.299(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.136
	leaq -140(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.300:
	.string ","
.text
	leaq .L.str.300(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	jmp .L.parse_args.loop
	jmp .L.end.136
.L.else.136:
.L.end.136:
	leaq -132(%rbp), %rax
	addq $116, %rax
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
.L.str.301:
	.string "="
.text
	leaq .L.str.301(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.137
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.302:
	.string "ND_ASSIGN"
.text
	leaq .L.str.302(%rip), %rax
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
	jmp .L.end.137
.L.else.137:
.L.end.137:
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
.L.str.303:
	.string "i64"
.text
	leaq .L.str.303(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.138
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.138
.L.else.138:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.304:
	.string "i32"
.text
	leaq .L.str.304(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.139
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.139
.L.else.139:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.305:
	.string "i16"
.text
	leaq .L.str.305(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.140
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.140
.L.else.140:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.306:
	.string "i8"
.text
	leaq .L.str.306(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.141
	leaq -8(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.end.141
.L.else.141:
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.307:
	.string "*"
.text
	leaq .L.str.307(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.142
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
	jmp .L.end.142
.L.else.142:
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
	jne .L.else.143
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.308:
	.string "unkown type found"
.text
	leaq .L.str.308(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.143
.L.else.143:
.L.end.143:
.L.end.142:
.L.end.141:
.L.end.140:
.L.end.139:
.L.end.138:
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
.L.while.start.144:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.144
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
	addq $116, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.while.start.144
.L.while.end.144:
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
	jne .L.else.145
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.145
.L.else.145:
.L.end.145:
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.146
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.146
.L.else.146:
.L.end.146:
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
	addq $108, %rax
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
	addq $116, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.147
.L.while.end.147:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.309:
	.string "ND_STR"
.text
	leaq .L.str.309(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.148
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
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
	jmp .L.end.148
.L.else.148:
.L.end.148:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.310:
	.string "ND_GOTO"
.text
	leaq .L.str.310(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.149
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.149
.L.else.149:
.L.end.149:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.311:
	.string "ND_LABEL"
.text
	leaq .L.str.311(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.150
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.150
.L.else.150:
.L.end.150:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.312:
	.string "ND_FUNC_CALL"
.text
	leaq .L.str.312(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.151
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.151
.L.else.151:
.L.end.151:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.313:
	.string "ND_IF"
.text
	leaq .L.str.313(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.152
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.152
.L.else.152:
.L.end.152:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.314:
	.string "ND_WHILE"
.text
	leaq .L.str.314(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.153
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.153
.L.else.153:
.L.end.153:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.315:
	.string "ND_RETURN"
.text
	leaq .L.str.315(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.154
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.154
.L.else.154:
.L.end.154:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.316:
	.string "ND_ADD"
.text
	leaq .L.str.316(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.155
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.155
.L.else.155:
.L.end.155:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.317:
	.string "ND_SUB"
.text
	leaq .L.str.317(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.156
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.156
.L.else.156:
.L.end.156:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.318:
	.string "ND_MUL"
.text
	leaq .L.str.318(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.157
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.157
.L.else.157:
.L.end.157:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.319:
	.string "ND_DIV"
.text
	leaq .L.str.319(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.158
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.158
.L.else.158:
.L.end.158:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.320:
	.string "ND_MOD"
.text
	leaq .L.str.320(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.159
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.159
.L.else.159:
.L.end.159:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.321:
	.string "ND_ASSIGN"
.text
	leaq .L.str.321(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.160
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.160
.L.else.160:
.L.end.160:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.322:
	.string "ND_ADD"
.text
	leaq .L.str.322(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.161
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.161
.L.else.161:
.L.end.161:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.323:
	.string "ND_NOT"
.text
	leaq .L.str.323(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.162
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
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
	jmp .L.end.162
.L.else.162:
.L.end.162:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.324:
	.string "ND_EQ"
.text
	leaq .L.str.324(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.163
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
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
	jmp .L.end.163
.L.else.163:
.L.end.163:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.325:
	.string "ND_NE"
.text
	leaq .L.str.325(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.164
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
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
	jmp .L.end.164
.L.else.164:
.L.end.164:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.326:
	.string "ND_LE"
.text
	leaq .L.str.326(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.165
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
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
	jmp .L.end.165
.L.else.165:
.L.end.165:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.327:
	.string "ND_LT"
.text
	leaq .L.str.327(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.166
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
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
	jmp .L.end.166
.L.else.166:
.L.end.166:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.328:
	.string "ND_NUM"
.text
	leaq .L.str.328(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.167
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
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
	jmp .L.end.167
.L.else.167:
.L.end.167:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.329:
	.string "ND_VAR"
.text
	leaq .L.str.329(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.168
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $48, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.168
.L.else.168:
.L.end.168:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.330:
	.string "ND_REF"
.text
	leaq .L.str.330(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.169
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
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
	jmp .L.end.169
.L.else.169:
.L.end.169:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.331:
	.string "ND_DEREF"
.text
	leaq .L.str.331(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.170
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	addq $88, %rax
	movq (%rax), %rax
	addq $36, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.170
.L.else.170:
.L.end.170:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.332:
	.string "ND_EXPR_STMT"
.text
	leaq .L.str.332(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.171
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $88, %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.171
.L.else.171:
.L.end.171:
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
	jne .L.else.172
.data
.L.str.333:
	.string "nil"
.text
	leaq .L.str.333(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.172
.L.else.172:
.L.end.172:
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
.L.while.start.173:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.173
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
	jne .L.else.174
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.334:
	.string "name already exist"
.text
	leaq .L.str.334(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
	jmp .L.end.174
.L.else.174:
.L.end.174:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $58, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.173
.L.while.end.173:
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
.L.while.start.175:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.175
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
	jne .L.else.176
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.176
.L.else.176:
.L.end.176:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $58, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.175
.L.while.end.175:
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
.L.while.start.177:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.177
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
	jne .L.else.178
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.178
.L.else.178:
.L.end.178:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $58, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.177
.L.while.end.177:
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
	jne .L.else.179
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
	jmp .L.end.179
.L.else.179:
.L.end.179:
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.335:
	.string "unexpected token"
.text
	leaq .L.str.335(%rip), %rax
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
	movq $124, %rax
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
	jne .L.else.180
.data
.L.str.336:
	.string "nil"
.text
	leaq .L.str.336(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.180
.L.else.180:
.L.end.180:
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
	jne .L.else.181
.data
.L.str.337:
	.string "parser_next got nil!!!\n"
.text
	leaq .L.str.337(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.181
.L.else.181:
.L.end.181:
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
	jne .L.else.182
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
	jmp .L.end.182
.L.else.182:
.L.end.182:
.L.while.start.183:
	movq $0, %rax
	push %rax
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.183
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
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $9, %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.184
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
	jmp .L.end.184
.L.else.184:
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
.L.end.184:
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
	jmp .L.while.start.183
.L.while.end.183:
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
.L.while.start.185:
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
	jne .L.while.end.185
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
	jmp .L.while.start.185
.L.while.end.185:
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
	movq $72, %rax
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
	jne .L.else.186
.data
.L.str.338:
	.string "nil"
.text
	leaq .L.str.338(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.186
.L.else.186:
.L.end.186:
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
	call ty_i64
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $48, %rax
	push %rax
	movq $0, %rax
	call ty_i32
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $40, %rax
	push %rax
	movq $0, %rax
	call ty_i16
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $32, %rax
	push %rax
	movq $0, %rax
	call ty_i8
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.339:
	.string "alloc"
.text
	leaq .L.str.339(%rip), %rax
	push %rax
.data
.L.str.340:
	.string "OBJ_FUNC"
.text
	leaq .L.str.340(%rip), %rax
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
.L.str.341:
	.string "open"
.text
	leaq .L.str.341(%rip), %rax
	push %rax
.data
.L.str.342:
	.string "OBJ_FUNC"
.text
	leaq .L.str.342(%rip), %rax
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
.L.str.343:
	.string "close"
.text
	leaq .L.str.343(%rip), %rax
	push %rax
.data
.L.str.344:
	.string "OBJ_FUNC"
.text
	leaq .L.str.344(%rip), %rax
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
.L.str.345:
	.string "read"
.text
	leaq .L.str.345(%rip), %rax
	push %rax
.data
.L.str.346:
	.string "OBJ_FUNC"
.text
	leaq .L.str.346(%rip), %rax
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
.L.str.347:
	.string "write"
.text
	leaq .L.str.347(%rip), %rax
	push %rax
.data
.L.str.348:
	.string "OBJ_FUNC"
.text
	leaq .L.str.348(%rip), %rax
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
.L.str.349:
	.string "exit"
.text
	leaq .L.str.349(%rip), %rax
	push %rax
.data
.L.str.350:
	.string "OBJ_FUNC"
.text
	leaq .L.str.350(%rip), %rax
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
.L.str.351:
	.string "printf"
.text
	leaq .L.str.351(%rip), %rax
	push %rax
.data
.L.str.352:
	.string "OBJ_FUNC"
.text
	leaq .L.str.352(%rip), %rax
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
.L.str.353:
	.string "eprintf"
.text
	leaq .L.str.353(%rip), %rax
	push %rax
.data
.L.str.354:
	.string "OBJ_FUNC"
.text
	leaq .L.str.354(%rip), %rax
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
	addq $64, %rax
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
.L.str.355:
	.string "TY_FUNC"
.text
	leaq .L.str.355(%rip), %rax
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
.L.str.356:
	.string "TY_PTR"
.text
	leaq .L.str.356(%rip), %rax
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
.global ty_i8
ty_i8:
	push %rbp
	movq %rsp, %rbp
	subq $8, %rsp
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
.L.str.357:
	.string "i8"
.text
	leaq .L.str.357(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $1, %rax
	pop %rdi
	movl %eax, (%rdi)
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
.global ty_i16
ty_i16:
	push %rbp
	movq %rsp, %rbp
	subq $8, %rsp
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
.L.str.358:
	.string "i16"
.text
	leaq .L.str.358(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $2, %rax
	pop %rdi
	movl %eax, (%rdi)
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
.global ty_i32
ty_i32:
	push %rbp
	movq %rsp, %rbp
	subq $8, %rsp
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
.L.str.359:
	.string "i32"
.text
	leaq .L.str.359(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	push %rax
	movq $4, %rax
	pop %rdi
	movl %eax, (%rdi)
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
.global ty_i64
ty_i64:
	push %rbp
	movq %rsp, %rbp
	subq $8, %rsp
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
.L.str.360:
	.string "i64"
.text
	leaq .L.str.360(%rip), %rax
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
.L.while.start.187:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.187
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
	jne .L.else.188
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.188
.L.else.188:
.L.end.188:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $45, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.187
.L.while.end.187:
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
.L.while.start.189:
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.189
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.361:
	.string "TY_STRUCT"
.text
	leaq .L.str.361(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.190
.data
.L.str.362:
	.string "struct %s {\n"
.text
	leaq .L.str.362(%rip), %rax
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
.L.while.start.191:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.191
.data
.L.str.363:
	.string "  %s\n"
.text
	leaq .L.str.363(%rip), %rax
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
	jmp .L.while.start.191
.L.while.end.191:
.data
.L.str.364:
	.string "}\n"
.text
	leaq .L.str.364(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	jmp .L.end.190
.L.else.190:
.data
.L.str.365:
	.string "got unkown userdefined type `%s`"
.text
	leaq .L.str.365(%rip), %rax
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
.L.end.190:
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $45, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.189
.L.while.end.189:
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
	jne .L.else.192
.data
.L.str.366:
	.string "nil"
.text
	leaq .L.str.366(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.192
.L.else.192:
.L.end.192:
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
.L.while.start.193:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.193
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
	jne .L.else.194
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
	jne .L.else.195
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.195
.L.else.195:
.L.end.195:
	jmp .L.strcmp.ok_next
	jmp .L.end.194
.L.else.194:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
.L.end.194:
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
	jmp .L.while.start.193
.L.while.end.193:
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
	jne .L.else.196
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.196
.L.else.196:
.L.end.196:
.data
.L.str.367:
	.string "%s : %s\n"
.text
	leaq .L.str.367(%rip), %rax
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
	jne .L.else.197
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print_all_tokens
	jmp .L.end.197
.L.else.197:
.L.end.197:
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
	leaq -8(%rbp), %rax
	push %rax
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -16(%rbp), %rax
	push %rax
	leaq -52(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.198:
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
	jne .L.while.end.198
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
	jne .L.else.199
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.199
.L.else.199:
.L.end.199:
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
	jne .L.else.200
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.200
.L.else.200:
.L.end.200:
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
	jne .L.else.201
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call skip_comment
	jmp .L.end.201
.L.else.201:
.L.end.201:
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
	jne .L.else.202
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
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
	jmp .L.end.202
.L.else.202:
.L.end.202:
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_two_c_punct
	cmpq $1, %rax
	jne .L.else.203
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
.data
.L.str.368:
	.string "TK_PUNCT"
.text
	leaq .L.str.368(%rip), %rax
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
	jmp .L.end.203
.L.else.203:
.L.end.203:
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
	jne .L.else.204
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
.data
.L.str.369:
	.string "TK_PUNCT"
.text
	leaq .L.str.369(%rip), %rax
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
	jmp .L.end.204
.L.else.204:
.L.end.204:
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
	jne .L.else.205
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
	jmp .L.end.205
.L.else.205:
.L.end.205:
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
	jne .L.else.206
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
	jmp .L.end.206
.L.else.206:
.L.end.206:
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
	jne .L.else.207
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
	jmp .L.end.207
.L.else.207:
.L.end.207:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.370:
	.string "TK_UNKOWN"
.text
	leaq .L.str.370(%rip), %rax
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
.L.str.371:
	.string "unkown character found"
.text
	leaq .L.str.371(%rip), %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
.L.tokenize.again:
	jmp .L.while.start.198
.L.while.end.198:
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
.data
.L.str.372:
	.string "TK_EOF"
.text
	leaq .L.str.372(%rip), %rax
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
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
.data
.L.str.373:
	.string "EOF"
.text
	leaq .L.str.373(%rip), %rax
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
.L.while.start.208:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.208
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
	jne .L.else.209
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
	jne .L.else.210
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
	jne .L.else.211
	jmp .L.tokenize_ident.ident_end
	jmp .L.end.211
.L.else.211:
.L.end.211:
	jmp .L.end.210
.L.else.210:
.L.end.210:
	jmp .L.end.209
.L.else.209:
.L.end.209:
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
	jmp .L.while.start.208
.L.while.end.208:
.L.tokenize_ident.ident_end:
.data
.L.str.374:
	.string "TK_IDENT"
.text
	leaq .L.str.374(%rip), %rax
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
.L.while.start.212:
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
	jne .L.while.end.212
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
	jmp .L.while.start.212
.L.while.end.212:
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
.L.str.375:
	.string "TK_STR"
.text
	leaq .L.str.375(%rip), %rax
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
	jne .L.else.213
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
.L.while.start.214:
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
	jne .L.while.end.214
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
	jne .L.else.215
	jmp .L.skip_comment.end
	jmp .L.end.215
.L.else.215:
.L.end.215:
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
	jmp .L.while.start.214
.L.while.end.214:
	jmp .L.end.213
.L.else.213:
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
.L.end.213:
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
.L.while.start.216:
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
	jne .L.while.end.216
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
	jmp .L.while.start.216
.L.while.end.216:
.data
.L.str.376:
	.string "TK_NUM"
.text
	leaq .L.str.376(%rip), %rax
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
	jne .L.else.217
.data
.L.str.377:
	.string "nil"
.text
	leaq .L.str.377(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.217
.L.else.217:
.L.end.217:
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
.L.str.378:
	.string "+-<>;:{}=,()[].*!%&/"
.text
	leaq .L.str.378(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.218:
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
	jne .L.while.end.218
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
	jne .L.else.219
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.219
.L.else.219:
.L.end.219:
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
	jmp .L.while.start.218
.L.while.end.218:
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
	jne .L.else.220
.data
.L.str.379:
	.string "nil"
.text
	leaq .L.str.379(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.220
.L.else.220:
.L.end.220:
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
	jne .L.else.221
.data
.L.str.380:
	.string "nil"
.text
	leaq .L.str.380(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call printf
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.221
.L.else.221:
.L.end.221:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.222:
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
	jne .L.while.end.222
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
	jmp .L.while.start.222
.L.while.end.222:
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
	cmpq $1, %rax
	jne .L.else.223
	movq $57, %rax
	push %rax
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.224
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.224
.L.else.224:
.L.end.224:
	jmp .L.end.223
.L.else.223:
.L.end.223:
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
	subq $4, %rsp
	movl %edi, -4(%rbp)
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $65, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.225
	movq $90, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.226
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.226
.L.else.226:
.L.end.226:
	jmp .L.end.225
.L.else.225:
.L.end.225:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $97, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.227
	movq $122, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.228
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.228
.L.else.228:
.L.end.228:
	jmp .L.end.227
.L.else.227:
.L.end.227:
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
	leaq -8(%rbp), %rax
	push %rax
.data
.L.str.381:
	.string "==<=>=!=++--"
.text
	leaq .L.str.381(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.229:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.229
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $11, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.230
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.230
.L.else.230:
.L.end.230:
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
	jne .L.else.231
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
	jne .L.else.232
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.232
.L.else.232:
.L.end.232:
	jmp .L.end.231
.L.else.231:
.L.end.231:
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
	jmp .L.while.start.229
.L.while.end.229:
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
.L.str.382:
	.string "error:%d:%d: %s\n"
.text
	leaq .L.str.382(%rip), %rax
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
.L.while.start.233:
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
	jne .L.while.end.233
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
	jne .L.else.234
	jmp .L.get_column_number.end
	jmp .L.end.234
.L.else.234:
.L.end.234:
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
	jmp .L.while.start.233
.L.while.end.233:
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
.L.while.start.235:
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
	jne .L.while.end.235
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
	jne .L.else.236
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
	jmp .L.end.236
.L.else.236:
.L.end.236:
	jmp .L.while.start.235
.L.while.end.235:
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
.L.while.start.237:
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
	jne .L.while.end.237
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
	jmp .L.while.start.237
.L.while.end.237:
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
