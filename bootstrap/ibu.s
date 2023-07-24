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
	.string "usage\n\tibu <filename>.ibu"
.text
	leaq .L.str.0(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	push %rax
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
	.string ".text"
.text
	leaq .L.str.1(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.2:
	.string ".global _start"
.text
	leaq .L.str.2(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.3:
	.string "_start:"
.text
	leaq .L.str.3(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.4:
	.string "\tpush %rbp"
.text
	leaq .L.str.4(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.5:
	.string "\tmovq %rsp, %rbp"
.text
	leaq .L.str.5(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.6:
	.string "\tmovq 8(%rbp), %rdi"
.text
	leaq .L.str.6(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.7:
	.string "\tleaq 16(%rbp), %rsi"
.text
	leaq .L.str.7(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.8:
	.string "\tcallq main"
.text
	leaq .L.str.8(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.9:
	.string "\tmovq %rax, %rdi"
.text
	leaq .L.str.9(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.10:
	.string "\tmovq $60, %rax"
.text
	leaq .L.str.10(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.11:
	.string "\tsyscall"
.text
	leaq .L.str.11(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
	.string ".global "
.text
	leaq .L.str.13(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
.data
.L.str.14:
	.string ":"
.text
	leaq .L.str.14(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.15:
	.string "\tpush %rbp"
.text
	leaq .L.str.15(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.16:
	.string "\tmovq %rsp, %rbp"
.text
	leaq .L.str.16(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.17:
	.string "\tsubq $"
.text
	leaq .L.str.17(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $44, %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprint
.data
.L.str.18:
	.string ", %rsp"
.text
	leaq .L.str.18(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.19:
	.string "\tmovb "
.text
	leaq .L.str.19(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
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
	pop %rdi
	movq $0, %rax
	call print
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
.L.str.20:
	.string "\tmovw "
.text
	leaq .L.str.20(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
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
	pop %rdi
	movq $0, %rax
	call print
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
.L.str.21:
	.string "\tmovl "
.text
	leaq .L.str.21(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
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
	pop %rdi
	movq $0, %rax
	call print
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
.L.str.22:
	.string "\tmovq "
.text
	leaq .L.str.22(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
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
	pop %rdi
	movq $0, %rax
	call print
	jmp .L.end.9
.L.else.9:
.data
.L.str.23:
	.string "unreachable"
.text
	leaq .L.str.23(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.24:
	.string ", -"
.text
	leaq .L.str.24(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprint
.data
.L.str.25:
	.string "(%rbp)"
.text
	leaq .L.str.25(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.26:
	.string "\tleave"
.text
	leaq .L.str.26(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.27:
	.string "\tret"
.text
	leaq .L.str.27(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.2
.L.else.2:
.data
.L.str.28:
	.string "unreachable"
.text
	leaq .L.str.28(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
	call gen_builtin
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	leave
	ret
.global gen_builtin
gen_builtin:
	push %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.data
.L.str.29:
	.string "# builtin start"
.text
	leaq .L.str.29(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.30:
	.string ".text"
.text
	leaq .L.str.30(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.31:
	.string ".global write"
.text
	leaq .L.str.31(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.32:
	.string "write:"
.text
	leaq .L.str.32(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.33:
	.string "\tmovq $1, %rax"
.text
	leaq .L.str.33(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.34:
	.string "\tsyscall"
.text
	leaq .L.str.34(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.35:
	.string "\tret"
.text
	leaq .L.str.35(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.36:
	.string ".global open"
.text
	leaq .L.str.36(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.37:
	.string "open:"
.text
	leaq .L.str.37(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.38:
	.string "\tmovq $2, %rax"
.text
	leaq .L.str.38(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.39:
	.string "\tsyscall"
.text
	leaq .L.str.39(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.40:
	.string "\tret"
.text
	leaq .L.str.40(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.41:
	.string ".global read"
.text
	leaq .L.str.41(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.42:
	.string "read:"
.text
	leaq .L.str.42(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.43:
	.string "\tmovq $0, %rax"
.text
	leaq .L.str.43(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.44:
	.string "\tsyscall"
.text
	leaq .L.str.44(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.45:
	.string "\tret"
.text
	leaq .L.str.45(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.46:
	.string ".global close"
.text
	leaq .L.str.46(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.47:
	.string "close:"
.text
	leaq .L.str.47(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.48:
	.string "    movq $3, %rax"
.text
	leaq .L.str.48(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.49:
	.string "    syscall"
.text
	leaq .L.str.49(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.50:
	.string "    ret"
.text
	leaq .L.str.50(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.51:
	.string ".global println"
.text
	leaq .L.str.51(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.52:
	.string "println:"
.text
	leaq .L.str.52(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.53:
	.string "	pushq   %rbp"
.text
	leaq .L.str.53(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.54:
	.string "	movq    %rsp, %rbp"
.text
	leaq .L.str.54(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.55:
	.string "	subq    $32, %rsp"
.text
	leaq .L.str.55(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.56:
	.string "	movq    %rdi, -24(%rbp)"
.text
	leaq .L.str.56(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.57:
	.string "	movl    $0, -4(%rbp)"
.text
	leaq .L.str.57(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.58:
	.string "	jmp     .L.println.2"
.text
	leaq .L.str.58(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.59:
	.string ".L.println.3:"
.text
	leaq .L.str.59(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.60:
	.string "	movl    -4(%rbp), %eax"
.text
	leaq .L.str.60(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.61:
	.string "	movslq  %eax, %rdx"
.text
	leaq .L.str.61(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.62:
	.string "	movq    -24(%rbp), %rsi"
.text
	leaq .L.str.62(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.63:
	.string "	addq    %rdx, %rsi"
.text
	leaq .L.str.63(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.64:
	.string "	movq    $1, %rdx"
.text
	leaq .L.str.64(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.65:
	.string "	movq    $1, %rdi"
.text
	leaq .L.str.65(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.66:
	.string "	movq    $1, %rax"
.text
	leaq .L.str.66(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.67:
	.string "	syscall"
.text
	leaq .L.str.67(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.68:
	.string "	addl    $1, -4(%rbp)"
.text
	leaq .L.str.68(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.69:
	.string ".L.println.2:"
.text
	leaq .L.str.69(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.70:
	.string "	movl    -4(%rbp), %eax"
.text
	leaq .L.str.70(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.71:
	.string "	movslq  %eax, %rdx"
.text
	leaq .L.str.71(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.72:
	.string "	movq    -24(%rbp), %rax"
.text
	leaq .L.str.72(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.73:
	.string "	addq    %rdx, %rax"
.text
	leaq .L.str.73(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.74:
	.string "	movzbl  (%rax), %eax"
.text
	leaq .L.str.74(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.75:
	.string "	testb   %al, %al"
.text
	leaq .L.str.75(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.76:
	.string "	jne     .L.println.3"
.text
	leaq .L.str.76(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.77:
	.string "	movq    $1, %rdx"
.text
	leaq .L.str.77(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.78:
	.string "	movq    $.L.str.newline, %rsi"
.text
	leaq .L.str.78(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.79:
	.string "	movq    $1, %rdi"
.text
	leaq .L.str.79(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.80:
	.string "	movq    $1, %rax"
.text
	leaq .L.str.80(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.81:
	.string "	syscall"
.text
	leaq .L.str.81(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.82:
	.string "	movl    -4(%rbp), %eax"
.text
	leaq .L.str.82(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.83:
	.string "	leave"
.text
	leaq .L.str.83(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.84:
	.string "	ret"
.text
	leaq .L.str.84(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.85:
	.string "	.global print"
.text
	leaq .L.str.85(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.86:
	.string "print:"
.text
	leaq .L.str.86(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.87:
	.string "	pushq   %rbp"
.text
	leaq .L.str.87(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.88:
	.string "	movq    %rsp, %rbp"
.text
	leaq .L.str.88(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.89:
	.string "	subq    $32, %rsp"
.text
	leaq .L.str.89(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.90:
	.string "	movq    %rdi, -24(%rbp)"
.text
	leaq .L.str.90(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.91:
	.string "	movl    $0, -4(%rbp)"
.text
	leaq .L.str.91(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.92:
	.string "	jmp     .L.print.2"
.text
	leaq .L.str.92(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.93:
	.string ".L.print.3:"
.text
	leaq .L.str.93(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.94:
	.string "	movl   -4(%rbp), %eax"
.text
	leaq .L.str.94(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.95:
	.string "	movslq %eax, %rdx"
.text
	leaq .L.str.95(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.96:
	.string "	movq   -24(%rbp), %rsi"
.text
	leaq .L.str.96(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.97:
	.string "	addq   %rdx, %rsi"
.text
	leaq .L.str.97(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.98:
	.string "	movq   $1, %rdx"
.text
	leaq .L.str.98(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.99:
	.string "	movq   $1, %rdi"
.text
	leaq .L.str.99(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.100:
	.string "	movq   $1, %rax"
.text
	leaq .L.str.100(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.101:
	.string "	syscall"
.text
	leaq .L.str.101(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.102:
	.string "	addl    $1, -4(%rbp)"
.text
	leaq .L.str.102(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.103:
	.string ".L.print.2:"
.text
	leaq .L.str.103(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.104:
	.string "	movl    -4(%rbp), %eax"
.text
	leaq .L.str.104(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.105:
	.string "	movslq  %eax, %rdx"
.text
	leaq .L.str.105(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.106:
	.string "	movq    -24(%rbp), %rax"
.text
	leaq .L.str.106(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.107:
	.string "	addq    %rdx, %rax"
.text
	leaq .L.str.107(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.108:
	.string "	movzbl  (%rax), %eax"
.text
	leaq .L.str.108(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.109:
	.string "	testb   %al, %al"
.text
	leaq .L.str.109(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.110:
	.string "	jne     .L.print.3"
.text
	leaq .L.str.110(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.111:
	.string "	movl    -4(%rbp), %eax"
.text
	leaq .L.str.111(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.112:
	.string "	leave"
.text
	leaq .L.str.112(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.113:
	.string "	ret"
.text
	leaq .L.str.113(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.114:
	.string ".global exit"
.text
	leaq .L.str.114(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.115:
	.string "exit:"
.text
	leaq .L.str.115(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.116:
	.string "	movq $60, %rax"
.text
	leaq .L.str.116(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.117:
	.string "	syscall"
.text
	leaq .L.str.117(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.118:
	.string ".bss"
.text
	leaq .L.str.118(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.119:
	.string "heap:"
.text
	leaq .L.str.119(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.120:
	.string "	.zero	5040000"
.text
	leaq .L.str.120(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.121:
	.string "heap_size:"
.text
	leaq .L.str.121(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.122:
	.string "	.zero	8"
.text
	leaq .L.str.122(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.123:
	.string ".text"
.text
	leaq .L.str.123(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.124:
	.string ".global	alloc"
.text
	leaq .L.str.124(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.125:
	.string "alloc:"
.text
	leaq .L.str.125(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.126:
	.string "	pushq	%rbp"
.text
	leaq .L.str.126(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.127:
	.string "	movq	%rsp, %rbp"
.text
	leaq .L.str.127(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.128:
	.string "	movq	%rdi, -24(%rbp)"
.text
	leaq .L.str.128(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.129:
	.string "	movq	heap_size(%rip), %rdx"
.text
	leaq .L.str.129(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.130:
	.string "	movq	-24(%rbp), %rax"
.text
	leaq .L.str.130(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.131:
	.string "	addq	%rdx, %rax"
.text
	leaq .L.str.131(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.132:
	.string "	cmpq	$5039999, %rax"
.text
	leaq .L.str.132(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.133:
	.string "	jbe	.L.alloc.2"
.text
	leaq .L.str.133(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.134:
	.string "	movl	$0, %eax"
.text
	leaq .L.str.134(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.135:
	.string "	jmp	.L.alloc_ret_null"
.text
	leaq .L.str.135(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.136:
	.string ".L.alloc.2:"
.text
	leaq .L.str.136(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.137:
	.string "	movq	heap_size(%rip), %rax"
.text
	leaq .L.str.137(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.138:
	.string "	leaq	heap(%rip), %rdx"
.text
	leaq .L.str.138(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.139:
	.string "	addq	%rdx, %rax"
.text
	leaq .L.str.139(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.140:
	.string "	movq	%rax, -8(%rbp)"
.text
	leaq .L.str.140(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.141:
	.string "	movq	heap_size(%rip), %rdx"
.text
	leaq .L.str.141(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.142:
	.string "	movq	-24(%rbp), %rax"
.text
	leaq .L.str.142(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.143:
	.string "	addq	%rdx, %rax"
.text
	leaq .L.str.143(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.144:
	.string "	movq	%rax, heap_size(%rip)"
.text
	leaq .L.str.144(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.145:
	.string "	movq	-8(%rbp), %rax"
.text
	leaq .L.str.145(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.146:
	.string ".L.alloc_ret_null:"
.text
	leaq .L.str.146(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.147:
	.string "	popq	%rbp"
.text
	leaq .L.str.147(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.148:
	.string "	ret"
.text
	leaq .L.str.148(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.149:
	.string ".global iprintln"
.text
	leaq .L.str.149(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.150:
	.string "iprintln:"
.text
	leaq .L.str.150(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.151:
	.string "    pushq   %rbp"
.text
	leaq .L.str.151(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.152:
	.string "    movq    %rsp, %rbp"
.text
	leaq .L.str.152(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.153:
	.string "    subq    $64, %rsp"
.text
	leaq .L.str.153(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.154:
	.string "    movq    %rdi, -56(%rbp)"
.text
	leaq .L.str.154(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.155:
	.string "    movq    $1, -8(%rbp)"
.text
	leaq .L.str.155(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.156:
	.string "    movl    $32, %eax"
.text
	leaq .L.str.156(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.157:
	.string "    subq    -8(%rbp), %rax"
.text
	leaq .L.str.157(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.158:
	.string "    movb    $10, -48(%rbp,%rax)"
.text
	leaq .L.str.158(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.159:
	.string ".L.iprintln.2:"
.text
	leaq .L.str.159(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.160:
	.string "    movq    -56(%rbp), %rcx"
.text
	leaq .L.str.160(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.161:
	.string "    movabsq $-3689348814741910323, %rdx"
.text
	leaq .L.str.161(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.162:
	.string "    movq    %rcx, %rax"
.text
	leaq .L.str.162(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.163:
	.string "    mulq    %rdx"
.text
	leaq .L.str.163(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.164:
	.string "    shrq    $3, %rdx"
.text
	leaq .L.str.164(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.165:
	.string "    movq    %rdx, %rax"
.text
	leaq .L.str.165(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.166:
	.string "    salq    $2, %rax"
.text
	leaq .L.str.166(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.167:
	.string "    addq    %rdx, %rax"
.text
	leaq .L.str.167(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.168:
	.string "    addq    %rax, %rax"
.text
	leaq .L.str.168(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.169:
	.string "    subq    %rax, %rcx"
.text
	leaq .L.str.169(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.170:
	.string "    movq    %rcx, %rdx"
.text
	leaq .L.str.170(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.171:
	.string "    movl    %edx, %eax"
.text
	leaq .L.str.171(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.172:
	.string "    leal    48(%rax), %edx"
.text
	leaq .L.str.172(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.173:
	.string "    movl    $31, %eax"
.text
	leaq .L.str.173(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.174:
	.string "    subq    -8(%rbp), %rax"
.text
	leaq .L.str.174(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.175:
	.string "    movb    %dl, -48(%rbp,%rax)"
.text
	leaq .L.str.175(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.176:
	.string "    addq    $1, -8(%rbp)"
.text
	leaq .L.str.176(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.177:
	.string "    movq    -56(%rbp), %rax"
.text
	leaq .L.str.177(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.178:
	.string "    movabsq $-3689348814741910323, %rdx"
.text
	leaq .L.str.178(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.179:
	.string "    mulq    %rdx"
.text
	leaq .L.str.179(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.180:
	.string "    movq    %rdx, %rax"
.text
	leaq .L.str.180(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.181:
	.string "    shrq    $3, %rax"
.text
	leaq .L.str.181(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.182:
	.string "    movq    %rax, -56(%rbp)"
.text
	leaq .L.str.182(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.183:
	.string "    cmpq    $0, -56(%rbp)"
.text
	leaq .L.str.183(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.184:
	.string "    jne     .L.iprintln.2"
.text
	leaq .L.str.184(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.185:
	.string "    movl    $32, %eax"
.text
	leaq .L.str.185(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.186:
	.string "    subq    -8(%rbp), %rax"
.text
	leaq .L.str.186(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.187:
	.string "    leaq    -48(%rbp), %rdx"
.text
	leaq .L.str.187(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.188:
	.string "    leaq    (%rdx,%rax), %rcx"
.text
	leaq .L.str.188(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.189:
	.string "    movq    -8(%rbp), %rax"
.text
	leaq .L.str.189(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.190:
	.string "    movq    %rax, %rdx"
.text
	leaq .L.str.190(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.191:
	.string "    movq    %rcx, %rsi"
.text
	leaq .L.str.191(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.192:
	.string "    movl    $1, %edi"
.text
	leaq .L.str.192(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.193:
	.string "    movl    $1, %eax"
.text
	leaq .L.str.193(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.194:
	.string "	syscall"
.text
	leaq .L.str.194(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.195:
	.string "    nop"
.text
	leaq .L.str.195(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.196:
	.string "    leave"
.text
	leaq .L.str.196(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.197:
	.string "    ret"
.text
	leaq .L.str.197(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.198:
	.string ".global iprint"
.text
	leaq .L.str.198(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.199:
	.string ".global iprint"
.text
	leaq .L.str.199(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.200:
	.string "iprint:"
.text
	leaq .L.str.200(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.201:
	.string "    pushq   %rbp"
.text
	leaq .L.str.201(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.202:
	.string "    movq    %rsp, %rbp"
.text
	leaq .L.str.202(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.203:
	.string "    subq    $64, %rsp"
.text
	leaq .L.str.203(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.204:
	.string "    movq    %rdi, -56(%rbp)"
.text
	leaq .L.str.204(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.205:
	.string "    movq    $0, -8(%rbp)"
.text
	leaq .L.str.205(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.206:
	.string "    movl    $32, %eax"
.text
	leaq .L.str.206(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.207:
	.string "    subq    -8(%rbp), %rax"
.text
	leaq .L.str.207(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.208:
	.string "    #movb    $0, -48(%rbp,%rax)"
.text
	leaq .L.str.208(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.209:
	.string ".L.iprint.2:"
.text
	leaq .L.str.209(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.210:
	.string "    movq    -56(%rbp), %rcx"
.text
	leaq .L.str.210(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.211:
	.string "    movabsq $-3689348814741910323, %rdx"
.text
	leaq .L.str.211(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.212:
	.string "    movq    %rcx, %rax"
.text
	leaq .L.str.212(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.213:
	.string "    mulq    %rdx"
.text
	leaq .L.str.213(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.214:
	.string "    shrq    $3, %rdx"
.text
	leaq .L.str.214(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.215:
	.string "    movq    %rdx, %rax"
.text
	leaq .L.str.215(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.216:
	.string "    salq    $2, %rax"
.text
	leaq .L.str.216(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.217:
	.string "    addq    %rdx, %rax"
.text
	leaq .L.str.217(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.218:
	.string "    addq    %rax, %rax"
.text
	leaq .L.str.218(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.219:
	.string "    subq    %rax, %rcx"
.text
	leaq .L.str.219(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.220:
	.string "    movq    %rcx, %rdx"
.text
	leaq .L.str.220(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.221:
	.string "    movl    %edx, %eax"
.text
	leaq .L.str.221(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.222:
	.string "    leal    48(%rax), %edx"
.text
	leaq .L.str.222(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.223:
	.string "    movl    $31, %eax"
.text
	leaq .L.str.223(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.224:
	.string "    subq    -8(%rbp), %rax"
.text
	leaq .L.str.224(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.225:
	.string "    movb    %dl, -48(%rbp,%rax)"
.text
	leaq .L.str.225(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.226:
	.string "    addq    $1, -8(%rbp)"
.text
	leaq .L.str.226(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.227:
	.string "    movq    -56(%rbp), %rax"
.text
	leaq .L.str.227(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.228:
	.string "    movabsq $-3689348814741910323, %rdx"
.text
	leaq .L.str.228(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.229:
	.string "    mulq    %rdx"
.text
	leaq .L.str.229(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.230:
	.string "    movq    %rdx, %rax"
.text
	leaq .L.str.230(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.231:
	.string "    shrq    $3, %rax"
.text
	leaq .L.str.231(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.232:
	.string "    movq    %rax, -56(%rbp)"
.text
	leaq .L.str.232(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.233:
	.string "    cmpq    $0, -56(%rbp)"
.text
	leaq .L.str.233(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.234:
	.string "    jne     .L.iprint.2"
.text
	leaq .L.str.234(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.235:
	.string "    movl    $32, %eax"
.text
	leaq .L.str.235(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.236:
	.string "    subq    -8(%rbp), %rax"
.text
	leaq .L.str.236(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.237:
	.string "    leaq    -48(%rbp), %rdx"
.text
	leaq .L.str.237(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.238:
	.string "    leaq    (%rdx,%rax), %rcx"
.text
	leaq .L.str.238(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.239:
	.string "    movq    -8(%rbp), %rax"
.text
	leaq .L.str.239(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.240:
	.string "    movq    %rax, %rdx"
.text
	leaq .L.str.240(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.241:
	.string "    movq    %rcx, %rsi"
.text
	leaq .L.str.241(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.242:
	.string "    movl    $1, %edi"
.text
	leaq .L.str.242(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.243:
	.string "    movl    $1, %eax"
.text
	leaq .L.str.243(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.244:
	.string "    syscall"
.text
	leaq .L.str.244(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.245:
	.string "    nop"
.text
	leaq .L.str.245(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.246:
	.string "    leave"
.text
	leaq .L.str.246(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.247:
	.string "    ret"
.text
	leaq .L.str.247(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.248:
	.string ".data"
.text
	leaq .L.str.248(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.249:
	.string ".L.str.newline:"
.text
	leaq .L.str.249(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.250:
	.string "	.byte 10"
.text
	leaq .L.str.250(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.251:
	.string "	.byte 0"
.text
	leaq .L.str.251(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.252:
	.string ".text"
.text
	leaq .L.str.252(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.253:
	.string ".global	putchar"
.text
	leaq .L.str.253(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.254:
	.string "putchar:"
.text
	leaq .L.str.254(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.255:
	.string "	subq	$24, %rsp"
.text
	leaq .L.str.255(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.256:
	.string "	movl	$1, %edx"
.text
	leaq .L.str.256(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.257:
	.string "	movb	%dil, 12(%rsp)"
.text
	leaq .L.str.257(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.258:
	.string "	leaq	12(%rsp), %rsi"
.text
	leaq .L.str.258(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.259:
	.string "	movl	$1, %edi"
.text
	leaq .L.str.259(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.260:
	.string "	movq $1, %rax"
.text
	leaq .L.str.260(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.261:
	.string "	syscall"
.text
	leaq .L.str.261(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.262:
	.string "	movl	$1, %eax"
.text
	leaq .L.str.262(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.263:
	.string "	addq	$24, %rsp"
.text
	leaq .L.str.263(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.264:
	.string "	ret"
.text
	leaq .L.str.264(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.265:
	.string ".global	putstr"
.text
	leaq .L.str.265(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.266:
	.string "putstr:"
.text
	leaq .L.str.266(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.267:
	.string "	pushq	%rbp"
.text
	leaq .L.str.267(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.268:
	.string "	xorl	%ebp, %ebp"
.text
	leaq .L.str.268(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.269:
	.string "	pushq	%rbx"
.text
	leaq .L.str.269(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.270:
	.string "	movq	%rdi, %rbx"
.text
	leaq .L.str.270(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.271:
	.string "	pushq	%rcx"
.text
	leaq .L.str.271(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.272:
	.string ".L.putstr.4:"
.text
	leaq .L.str.272(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.273:
	.string "	movsbl	(%rbx), %edi"
.text
	leaq .L.str.273(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.274:
	.string "	testb	%dil, %dil"
.text
	leaq .L.str.274(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.275:
	.string "	je	.L.putstr.8"
.text
	leaq .L.str.275(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.276:
	.string "	call	putchar"
.text
	leaq .L.str.276(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.277:
	.string "	addq $1, %rbx # HERE"
.text
	leaq .L.str.277(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.278:
	.string "	addq	%rax, %rbp"
.text
	leaq .L.str.278(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.279:
	.string "	jmp	.L.putstr.4"
.text
	leaq .L.str.279(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.280:
	.string ".L.putstr.8:"
.text
	leaq .L.str.280(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.281:
	.string "	movq	%rbp, %rax"
.text
	leaq .L.str.281(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.282:
	.string "	popq	%rdx"
.text
	leaq .L.str.282(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.283:
	.string "	popq	%rbx"
.text
	leaq .L.str.283(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.284:
	.string "	popq	%rbp"
.text
	leaq .L.str.284(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.285:
	.string "	ret"
.text
	leaq .L.str.285(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.286:
	.string ".data"
.text
	leaq .L.str.286(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.287:
	.string ".LC.putunum.0:"
.text
	leaq .L.str.287(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.288:
	.string "	.byte 48"
.text
	leaq .L.str.288(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.289:
	.string "	.byte 49"
.text
	leaq .L.str.289(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.290:
	.string "	.byte 50"
.text
	leaq .L.str.290(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.291:
	.string "	.byte 51"
.text
	leaq .L.str.291(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.292:
	.string "	.byte 52"
.text
	leaq .L.str.292(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.293:
	.string "	.byte 53"
.text
	leaq .L.str.293(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.294:
	.string "	.byte 54"
.text
	leaq .L.str.294(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.295:
	.string "	.byte 55"
.text
	leaq .L.str.295(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.296:
	.string "	.byte 56"
.text
	leaq .L.str.296(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.297:
	.string "	.byte 57"
.text
	leaq .L.str.297(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.298:
	.string "	.byte 65"
.text
	leaq .L.str.298(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.299:
	.string "	.byte 66"
.text
	leaq .L.str.299(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.300:
	.string "	.byte 67"
.text
	leaq .L.str.300(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.301:
	.string "	.byte 68"
.text
	leaq .L.str.301(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.302:
	.string "	.byte 69"
.text
	leaq .L.str.302(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.303:
	.string "	.byte 70"
.text
	leaq .L.str.303(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.304:
	.string "	.byte 0"
.text
	leaq .L.str.304(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.305:
	.string ".LC.putunum.1:"
.text
	leaq .L.str.305(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.306:
	.string "	.byte 48"
.text
	leaq .L.str.306(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.307:
	.string "	.byte 49"
.text
	leaq .L.str.307(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.308:
	.string "	.byte 50"
.text
	leaq .L.str.308(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.309:
	.string "	.byte 51"
.text
	leaq .L.str.309(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.310:
	.string "	.byte 52"
.text
	leaq .L.str.310(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.311:
	.string "	.byte 53"
.text
	leaq .L.str.311(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.312:
	.string "	.byte 54"
.text
	leaq .L.str.312(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.313:
	.string "	.byte 55"
.text
	leaq .L.str.313(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.314:
	.string "	.byte 56"
.text
	leaq .L.str.314(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.315:
	.string "	.byte 57"
.text
	leaq .L.str.315(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.316:
	.string "	.byte 97"
.text
	leaq .L.str.316(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.317:
	.string "	.byte 98"
.text
	leaq .L.str.317(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.318:
	.string "	.byte 99"
.text
	leaq .L.str.318(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.319:
	.string "	.byte 100"
.text
	leaq .L.str.319(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.320:
	.string "	.byte 101"
.text
	leaq .L.str.320(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.321:
	.string "	.byte 102"
.text
	leaq .L.str.321(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.322:
	.string "	.byte 0"
.text
	leaq .L.str.322(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.323:
	.string ".text"
.text
	leaq .L.str.323(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.324:
	.string ".global	putunum"
.text
	leaq .L.str.324(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.325:
	.string "putunum:"
.text
	leaq .L.str.325(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.326:
	.string "	pushq	%r13"
.text
	leaq .L.str.326(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.327:
	.string "	movl	%edx, %r13d"
.text
	leaq .L.str.327(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.328:
	.string "	pushq	%r12"
.text
	leaq .L.str.328(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.329:
	.string "	movl	%esi, %r12d"
.text
	leaq .L.str.329(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.330:
	.string "	pushq	%rbp"
.text
	leaq .L.str.330(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.331:
	.string "	xorl	%ebp, %ebp"
.text
	leaq .L.str.331(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.332:
	.string "	pushq	%rbx"
.text
	leaq .L.str.332(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.333:
	.string "	movq	%rdi, %rbx"
.text
	leaq .L.str.333(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.334:
	.string "	pushq	%rcx"
.text
	leaq .L.str.334(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.335:
	.string "	cmpq	%r12, %rdi"
.text
	leaq .L.str.335(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.336:
	.string "	jb	.L.putnum.10"
.text
	leaq .L.str.336(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.337:
	.string "	movzbl	%dl, %ecx"
.text
	leaq .L.str.337(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.338:
	.string "	movq	%rdi, %rax"
.text
	leaq .L.str.338(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.339:
	.string "	xorl	%edx, %edx"
.text
	leaq .L.str.339(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.340:
	.string "	divq	%r12"
.text
	leaq .L.str.340(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.341:
	.string "	movl	%ecx, %edx"
.text
	leaq .L.str.341(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.342:
	.string "	movq	%rax, %rdi"
.text
	leaq .L.str.342(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.343:
	.string "	call	putunum"
.text
	leaq .L.str.343(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.344:
	.string "	movq	%rax, %rbp"
.text
	leaq .L.str.344(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.345:
	.string ".L.putnum.10:"
.text
	leaq .L.str.345(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.346:
	.string "	testb	%r13b, %r13b"
.text
	leaq .L.str.346(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.347:
	.string "	leaq	.LC.putunum.0(%rip), %rax"
.text
	leaq .L.str.347(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.348:
	.string "	leaq	.LC.putunum.1(%rip), %rcx"
.text
	leaq .L.str.348(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.349:
	.string "	cmovneq	%rax, %rcx"
.text
	leaq .L.str.349(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.350:
	.string "	movq	%rbx, %rax"
.text
	leaq .L.str.350(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.351:
	.string "	xorl	%edx, %edx"
.text
	leaq .L.str.351(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.352:
	.string "	divq	%r12"
.text
	leaq .L.str.352(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.353:
	.string "	movsbl	(%rcx,%rdx), %edi"
.text
	leaq .L.str.353(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.354:
	.string "	call	putchar"
.text
	leaq .L.str.354(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.355:
	.string "	popq	%rdx"
.text
	leaq .L.str.355(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.356:
	.string "	popq	%rbx"
.text
	leaq .L.str.356(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.357:
	.string "	addq	%rbp, %rax"
.text
	leaq .L.str.357(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.358:
	.string "	popq	%rbp"
.text
	leaq .L.str.358(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.359:
	.string "	popq	%r12"
.text
	leaq .L.str.359(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.360:
	.string "	popq	%r13"
.text
	leaq .L.str.360(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.361:
	.string "	ret"
.text
	leaq .L.str.361(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.362:
	.string ".data"
.text
	leaq .L.str.362(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.363:
	.string ".L.printf.C2:"
.text
	leaq .L.str.363(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.364:
	.string "	.byte 40"
.text
	leaq .L.str.364(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.365:
	.string "	.byte 110"
.text
	leaq .L.str.365(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.366:
	.string "	.byte 105"
.text
	leaq .L.str.366(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.367:
	.string "	.byte 108"
.text
	leaq .L.str.367(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.368:
	.string "	.byte 41"
.text
	leaq .L.str.368(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.369:
	.string "	.byte 0"
.text
	leaq .L.str.369(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.370:
	.string ".L.printf.C3:"
.text
	leaq .L.str.370(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.371:
	.string "	.byte 48"
.text
	leaq .L.str.371(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.372:
	.string "	.byte 120"
.text
	leaq .L.str.372(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.373:
	.string "	.byte 0"
.text
	leaq .L.str.373(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.374:
	.string ".text"
.text
	leaq .L.str.374(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.375:
	.string ".global	printf"
.text
	leaq .L.str.375(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.376:
	.string "printf:"
.text
	leaq .L.str.376(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.377:
	.string "	pushq	%r13"
.text
	leaq .L.str.377(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.378:
	.string "	pushq	%r12"
.text
	leaq .L.str.378(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.379:
	.string "	pushq	%rbp"
.text
	leaq .L.str.379(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.380:
	.string "	movq	%rdi, %rbp"
.text
	leaq .L.str.380(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.381:
	.string "	pushq	%rbx"
.text
	leaq .L.str.381(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.382:
	.string "	xorl	%ebx, %ebx"
.text
	leaq .L.str.382(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.383:
	.string "	subq	$88, %rsp"
.text
	leaq .L.str.383(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.384:
	.string "	leaq	128(%rsp), %rax"
.text
	leaq .L.str.384(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.385:
	.string "	movq	%rsi, 40(%rsp)"
.text
	leaq .L.str.385(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.386:
	.string "	movq	%rax, 16(%rsp)"
.text
	leaq .L.str.386(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.387:
	.string "	leaq	32(%rsp), %rax"
.text
	leaq .L.str.387(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.388:
	.string "	movq	%rdx, 48(%rsp)"
.text
	leaq .L.str.388(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.389:
	.string "	movq	%rcx, 56(%rsp)"
.text
	leaq .L.str.389(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.390:
	.string "	movq	%r8, 64(%rsp)"
.text
	leaq .L.str.390(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.391:
	.string "	movq	%r9, 72(%rsp)"
.text
	leaq .L.str.391(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.392:
	.string "	movl	$8, 8(%rsp)"
.text
	leaq .L.str.392(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.393:
	.string "	movq	%rax, 24(%rsp)"
.text
	leaq .L.str.393(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.394:
	.string ".L.printf.17:"
.text
	leaq .L.str.394(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.395:
	.string "	movsbl	0(%rbp), %edi"
.text
	leaq .L.str.395(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.396:
	.string "	testb	%dil, %dil"
.text
	leaq .L.str.396(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.397:
	.string "	je	.L.printf.50"
.text
	leaq .L.str.397(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.398:
	.string "	leaq	1(%rbp), %r12"
.text
	leaq .L.str.398(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.399:
	.string "	cmpb	$37, %dil"
.text
	leaq .L.str.399(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.400:
	.string "	jne	.L.printf.18"
.text
	leaq .L.str.400(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.401:
	.string "	movb	1(%rbp), %al"
.text
	leaq .L.str.401(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.402:
	.string "	cmpb	$105, %al"
.text
	leaq .L.str.402(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.403:
	.string "	je	.L.printf.19"
.text
	leaq .L.str.403(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.404:
	.string "	jg	.L.printf.20"
.text
	leaq .L.str.404(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.405:
	.string "	cmpb	$99, %al"
.text
	leaq .L.str.405(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.406:
	.string "	je	.L.printf.21"
.text
	leaq .L.str.406(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.407:
	.string "	cmpb	$100, %al"
.text
	leaq .L.str.407(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.408:
	.string "	je	.L.printf.19"
.text
	leaq .L.str.408(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.409:
	.string "	movl	$37, %edi"
.text
	leaq .L.str.409(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.410:
	.string "	cmpb	$37, %al"
.text
	leaq .L.str.410(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.411:
	.string "	je	.L.printf.49"
.text
	leaq .L.str.411(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.412:
	.string "	jmp	.L.printf.23"
.text
	leaq .L.str.412(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.413:
	.string ".L.printf.20:"
.text
	leaq .L.str.413(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.414:
	.string "	cmpb	$112, %al"
.text
	leaq .L.str.414(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.415:
	.string "	je	.L.printf.24"
.text
	leaq .L.str.415(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.416:
	.string "	cmpb	$115, %al"
.text
	leaq .L.str.416(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.417:
	.string "	je	.L.printf.25"
.text
	leaq .L.str.417(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.418:
	.string "	jmp	.L.printf.23"
.text
	leaq .L.str.418(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.419:
	.string ".L.printf.21:"
.text
	leaq .L.str.419(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.420:
	.string "	movl	8(%rsp), %edx"
.text
	leaq .L.str.420(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.421:
	.string "	cmpl	$47, %edx"
.text
	leaq .L.str.421(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.422:
	.string "	ja	.L.printf.26"
.text
	leaq .L.str.422(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.423:
	.string "	movl	%edx, %eax"
.text
	leaq .L.str.423(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.424:
	.string "	addl	$8, %edx"
.text
	leaq .L.str.424(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.425:
	.string "	addq	24(%rsp), %rax"
.text
	leaq .L.str.425(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.426:
	.string "	movl	%edx, 8(%rsp)"
.text
	leaq .L.str.426(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.427:
	.string "	jmp	.L.printf.27"
.text
	leaq .L.str.427(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.428:
	.string ".L.printf.26:"
.text
	leaq .L.str.428(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.429:
	.string "	movq	16(%rsp), %rax"
.text
	leaq .L.str.429(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.430:
	.string "	leaq	8(%rax), %rdx"
.text
	leaq .L.str.430(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.431:
	.string "	movq	%rdx, 16(%rsp)"
.text
	leaq .L.str.431(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.432:
	.string ".L.printf.27:"
.text
	leaq .L.str.432(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.433:
	.string "	movsbl	(%rax), %edi"
.text
	leaq .L.str.433(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.434:
	.string "	jmp	.L.printf.49"
.text
	leaq .L.str.434(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.435:
	.string ".L.printf.25:"
.text
	leaq .L.str.435(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.436:
	.string "	movl	8(%rsp), %edx"
.text
	leaq .L.str.436(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.437:
	.string "	cmpl	$47, %edx"
.text
	leaq .L.str.437(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.438:
	.string "	ja	.L.printf.29"
.text
	leaq .L.str.438(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.439:
	.string "	movl	%edx, %eax"
.text
	leaq .L.str.439(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.440:
	.string "	addl	$8, %edx"
.text
	leaq .L.str.440(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.441:
	.string "	addq	24(%rsp), %rax"
.text
	leaq .L.str.441(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.442:
	.string "	movl	%edx, 8(%rsp)"
.text
	leaq .L.str.442(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.443:
	.string "	jmp	.L.printf.30"
.text
	leaq .L.str.443(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.444:
	.string ".L.printf.29:"
.text
	leaq .L.str.444(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.445:
	.string "	movq	16(%rsp), %rax"
.text
	leaq .L.str.445(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.446:
	.string "	leaq	8(%rax), %rdx"
.text
	leaq .L.str.446(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.447:
	.string "	movq	%rdx, 16(%rsp)"
.text
	leaq .L.str.447(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.448:
	.string ".L.printf.30:"
.text
	leaq .L.str.448(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.449:
	.string "	movq	(%rax), %rdi"
.text
	leaq .L.str.449(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.450:
	.string "	testq	%rdi, %rdi"
.text
	leaq .L.str.450(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.451:
	.string "	jne	.L.printf.47"
.text
	leaq .L.str.451(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.452:
	.string "	jmp	.L.printf.48"
.text
	leaq .L.str.452(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.453:
	.string ".L.printf.24:"
.text
	leaq .L.str.453(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.454:
	.string "	movl	8(%rsp), %edx"
.text
	leaq .L.str.454(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.455:
	.string "	cmpl	$47, %edx"
.text
	leaq .L.str.455(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.456:
	.string "	ja	.L.printf.32"
.text
	leaq .L.str.456(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.457:
	.string "	movl	%edx, %eax"
.text
	leaq .L.str.457(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.458:
	.string "	addl	$8, %edx"
.text
	leaq .L.str.458(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.459:
	.string "	addq	24(%rsp), %rax"
.text
	leaq .L.str.459(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.460:
	.string "	movl	%edx, 8(%rsp)"
.text
	leaq .L.str.460(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.461:
	.string "	jmp	.L.printf.33"
.text
	leaq .L.str.461(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.462:
	.string ".L.printf.32:"
.text
	leaq .L.str.462(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.463:
	.string "	movq	16(%rsp), %rax"
.text
	leaq .L.str.463(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.464:
	.string "	leaq	8(%rax), %rdx"
.text
	leaq .L.str.464(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.465:
	.string "	movq	%rdx, 16(%rsp)"
.text
	leaq .L.str.465(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.466:
	.string ".L.printf.33:"
.text
	leaq .L.str.466(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.467:
	.string "	movq	(%rax), %r13"
.text
	leaq .L.str.467(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.468:
	.string "	testq	%r13, %r13"
.text
	leaq .L.str.468(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.469:
	.string "	jne	.L.printf.34"
.text
	leaq .L.str.469(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.470:
	.string ".L.printf.48:"
.text
	leaq .L.str.470(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.471:
	.string "	leaq	.L.printf.C2(%rip), %rdi"
.text
	leaq .L.str.471(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.472:
	.string ".L.printf.47:"
.text
	leaq .L.str.472(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.473:
	.string "	call	putstr"
.text
	leaq .L.str.473(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.474:
	.string ".L.printf.46:"
.text
	leaq .L.str.474(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.475:
	.string "	addq	%rax, %rbx"
.text
	leaq .L.str.475(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.476:
	.string "	jmp	.L.printf.28"
.text
	leaq .L.str.476(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.477:
	.string ".L.printf.34:"
.text
	leaq .L.str.477(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.478:
	.string "	leaq	.L.printf.C3(%rip), %rdi"
.text
	leaq .L.str.478(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.479:
	.string "	call	putstr"
.text
	leaq .L.str.479(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.480:
	.string "	xorl	%edx, %edx"
.text
	leaq .L.str.480(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.481:
	.string "	movl	$16, %esi"
.text
	leaq .L.str.481(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.482:
	.string "	movq	%r13, %rdi"
.text
	leaq .L.str.482(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.483:
	.string "	movq	%rax, %rbp"
.text
	leaq .L.str.483(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.484:
	.string "	call	putunum"
.text
	leaq .L.str.484(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.485:
	.string "	addq	%rax, %rbp"
.text
	leaq .L.str.485(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.486:
	.string "	addq	%rbp, %rbx"
.text
	leaq .L.str.486(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.487:
	.string "	jmp	.L.printf.28"
.text
	leaq .L.str.487(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.488:
	.string ".L.printf.19:"
.text
	leaq .L.str.488(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.489:
	.string "	movl	8(%rsp), %edx"
.text
	leaq .L.str.489(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.490:
	.string "	cmpl	$47, %edx"
.text
	leaq .L.str.490(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.491:
	.string "	ja	.L.printf.35"
.text
	leaq .L.str.491(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.492:
	.string "	movl	%edx, %eax"
.text
	leaq .L.str.492(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.493:
	.string "	addl	$8, %edx"
.text
	leaq .L.str.493(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.494:
	.string "	addq	24(%rsp), %rax"
.text
	leaq .L.str.494(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.495:
	.string "	movl	%edx, 8(%rsp)"
.text
	leaq .L.str.495(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.496:
	.string "	jmp	.L.printf.36"
.text
	leaq .L.str.496(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.497:
	.string ".L.printf.35:"
.text
	leaq .L.str.497(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.498:
	.string "	movq	16(%rsp), %rax"
.text
	leaq .L.str.498(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.499:
	.string "	leaq	8(%rax), %rdx"
.text
	leaq .L.str.499(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.500:
	.string "	movq	%rdx, 16(%rsp)"
.text
	leaq .L.str.500(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.501:
	.string ".L.printf.36:"
.text
	leaq .L.str.501(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.502:
	.string "	movl	(%rax), %ebp"
.text
	leaq .L.str.502(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.503:
	.string "	testl	%ebp, %ebp"
.text
	leaq .L.str.503(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.504:
	.string "	jns	.L.printf.37"
.text
	leaq .L.str.504(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.505:
	.string "	movl	$45, %edi"
.text
	leaq .L.str.505(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.506:
	.string "	negl	%ebp"
.text
	leaq .L.str.506(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.507:
	.string "	call	putchar"
.text
	leaq .L.str.507(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.508:
	.string "	addq	%rax, %rbx"
.text
	leaq .L.str.508(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.509:
	.string ".L.printf.37:"
.text
	leaq .L.str.509(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.510:
	.string "	movl	%ebp, %edi"
.text
	leaq .L.str.510(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.511:
	.string "	xorl	%edx, %edx"
.text
	leaq .L.str.511(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.512:
	.string "	movl	$10, %esi"
.text
	leaq .L.str.512(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.513:
	.string "	call	putunum"
.text
	leaq .L.str.513(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.514:
	.string "	jmp	.L.printf.46"
.text
	leaq .L.str.514(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.515:
	.string ".L.printf.49:"
.text
	leaq .L.str.515(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.516:
	.string "	call	putchar"
.text
	leaq .L.str.516(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.517:
	.string "	jmp	.L.printf.46"
.text
	leaq .L.str.517(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.518:
	.string ".L.printf.23:"
.text
	leaq .L.str.518(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.519:
	.string "	movl	$37, %edi"
.text
	leaq .L.str.519(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.520:
	.string ".L.printf.18:"
.text
	leaq .L.str.520(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.521:
	.string "	call	putchar"
.text
	leaq .L.str.521(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.522:
	.string "	movq	%rbp, %r12"
.text
	leaq .L.str.522(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.523:
	.string "	addq	%rax, %rbx"
.text
	leaq .L.str.523(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.524:
	.string ".L.printf.28:"
.text
	leaq .L.str.524(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.525:
	.string "	leaq	1(%r12), %rbp"
.text
	leaq .L.str.525(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.526:
	.string "	jmp	.L.printf.17"
.text
	leaq .L.str.526(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.527:
	.string ".L.printf.50:"
.text
	leaq .L.str.527(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.528:
	.string "	addq	$88, %rsp"
.text
	leaq .L.str.528(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.529:
	.string "	movq	%rbx, %rax"
.text
	leaq .L.str.529(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.530:
	.string "	popq	%rbx"
.text
	leaq .L.str.530(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.531:
	.string "	popq	%rbp"
.text
	leaq .L.str.531(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.532:
	.string "	popq	%r12"
.text
	leaq .L.str.532(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.533:
	.string "	popq	%r13"
.text
	leaq .L.str.533(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.534:
	.string "	ret"
.text
	leaq .L.str.534(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.535:
	.string "ND_BLOCK"
.text
	leaq .L.str.535(%rip), %rax
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
.L.str.536:
	.string "ND_EXPR_STMT"
.text
	leaq .L.str.536(%rip), %rax
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
.L.str.537:
	.string "ND_RETURN"
.text
	leaq .L.str.537(%rip), %rax
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
.L.str.538:
	.string "\tmovq %rbp, %rsp"
.text
	leaq .L.str.538(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.539:
	.string "\tpop %rbp"
.text
	leaq .L.str.539(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.540:
	.string "\tretq"
.text
	leaq .L.str.540(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.13
.L.else.13:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.541:
	.string "ND_IF"
.text
	leaq .L.str.541(%rip), %rax
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
.L.str.542:
	.string "\tcmpq $1, %rax"
.text
	leaq .L.str.542(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.543:
	.string "\tjne .L.else."
.text
	leaq .L.str.543(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprintln
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
.L.str.544:
	.string "\tjmp .L.end."
.text
	leaq .L.str.544(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprintln
.data
.L.str.545:
	.string ".L.else."
.text
	leaq .L.str.545(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprint
.data
.L.str.546:
	.string ":"
.text
	leaq .L.str.546(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.547:
	.string ".L.end."
.text
	leaq .L.str.547(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprint
.data
.L.str.548:
	.string ":"
.text
	leaq .L.str.548(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.14
.L.else.14:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.549:
	.string "ND_GOTO"
.text
	leaq .L.str.549(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.16
.data
.L.str.550:
	.string "\tjmp .L."
.text
	leaq .L.str.550(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
.data
.L.str.551:
	.string "."
.text
	leaq .L.str.551(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.16
.L.else.16:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.552:
	.string "ND_LABEL"
.text
	leaq .L.str.552(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.17
.data
.L.str.553:
	.string ".L."
.text
	leaq .L.str.553(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
.data
.L.str.554:
	.string "."
.text
	leaq .L.str.554(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $56, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
.data
.L.str.555:
	.string ":"
.text
	leaq .L.str.555(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.17
.L.else.17:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.556:
	.string "ND_WHILE"
.text
	leaq .L.str.556(%rip), %rax
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
.data
.L.str.557:
	.string ".L.while.start."
.text
	leaq .L.str.557(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprint
.data
.L.str.558:
	.string ":"
.text
	leaq .L.str.558(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.559:
	.string "\tcmpq $1, %rax"
.text
	leaq .L.str.559(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.560:
	.string "\tjne .L.while.end."
.text
	leaq .L.str.560(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprintln
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
.L.str.561:
	.string "\tjmp .L.while.start."
.text
	leaq .L.str.561(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprintln
.data
.L.str.562:
	.string ".L.while.end."
.text
	leaq .L.str.562(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprint
.data
.L.str.563:
	.string ":"
.text
	leaq .L.str.563(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.18
.L.else.18:
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.564:
	.string "gen_stmt unreachable"
.text
	leaq .L.str.564(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.565:
	.string "\tpush %rax"
.text
	leaq .L.str.565(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.566:
	.string "\tpop "
.text
	leaq .L.str.566(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
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
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.567:
	.string "TY_PTR"
.text
	leaq .L.str.567(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.22
.data
.L.str.568:
	.string "\tmovzbq %al, %rax"
.text
	leaq .L.str.568(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.22
.L.else.22:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.569:
	.string "TY_I64"
.text
	leaq .L.str.569(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.23
.data
.L.str.570:
	.string "\tmovzbq %al, %rax"
.text
	leaq .L.str.570(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.23
.L.else.23:
.data
.L.str.571:
	.string "\tmovzbl %al, %eax"
.text
	leaq .L.str.571(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.data
.L.str.572:
	.string "\t"
.text
	leaq .L.str.572(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.573:
	.string "TY_PTR"
.text
	leaq .L.str.573(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.24
.data
.L.str.574:
	.string "q %rdi, %rax"
.text
	leaq .L.str.574(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.24
.L.else.24:
.data
.L.str.575:
	.string "l %edi, %eax"
.text
	leaq .L.str.575(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.576:
	.string "TY_STRUCT"
.text
	leaq .L.str.576(%rip), %rax
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
.L.str.577:
	.string "\tmovq (%rax), %rax"
.text
	leaq .L.str.577(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.578:
	.string "\tmovslq (%rax), %rax"
.text
	leaq .L.str.578(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.579:
	.string "\tmovswl (%rax), %eax"
.text
	leaq .L.str.579(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.580:
	.string "\tmovsbl (%rax), %eax"
.text
	leaq .L.str.580(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.29
.L.else.29:
.data
.L.str.581:
	.string "unreachale"
.text
	leaq .L.str.581(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.582:
	.string "TY_STRUCT"
.text
	leaq .L.str.582(%rip), %rax
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
.L.str.583:
	.string "\tmovb "
.text
	leaq .L.str.583(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprint
.data
.L.str.584:
	.string "(%rax), %r8b"
.text
	leaq .L.str.584(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.585:
	.string "\tmovb %r8b, "
.text
	leaq .L.str.585(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprint
.data
.L.str.586:
	.string "(%rdi)"
.text
	leaq .L.str.586(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.587:
	.string "\tmovb %al, (%rdi)"
.text
	leaq .L.str.587(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.588:
	.string "\tmovw %ax, (%rdi)"
.text
	leaq .L.str.588(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.589:
	.string "\tmovl %eax, (%rdi)"
.text
	leaq .L.str.589(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.590:
	.string "\tmovq %rax, (%rdi)"
.text
	leaq .L.str.590(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.35
.L.else.35:
.data
.L.str.591:
	.string "unreachable"
.text
	leaq .L.str.591(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.592:
	.string "ND_MEMBER_ACCESS"
.text
	leaq .L.str.592(%rip), %rax
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
.L.str.593:
	.string "\taddq $"
.text
	leaq .L.str.593(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $104, %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprint
.data
.L.str.594:
	.string ", %rax"
.text
	leaq .L.str.594(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.36
.L.else.36:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.595:
	.string "ND_VAR"
.text
	leaq .L.str.595(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.37
.data
.L.str.596:
	.string "	leaq -"
.text
	leaq .L.str.596(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $80, %rax
	movq (%rax), %rax
	addq $16, %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprint
.data
.L.str.597:
	.string "(%rbp), %rax"
.text
	leaq .L.str.597(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.37
.L.else.37:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.598:
	.string "ND_DEREF"
.text
	leaq .L.str.598(%rip), %rax
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
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.599:
	.string "unreachable"
.text
	leaq .L.str.599(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.600:
	.string "\tpush %rax"
.text
	leaq .L.str.600(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.601:
	.string "\tpop %rdi"
.text
	leaq .L.str.601(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.602:
	.string "node == nil. this shoult not happen!"
.text
	leaq .L.str.602(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.603:
	.string "ND_MEMBER_ACCESS"
.text
	leaq .L.str.603(%rip), %rax
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
.L.str.604:
	.string "ND_STR"
.text
	leaq .L.str.604(%rip), %rax
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
.L.str.605:
	.string ".data"
.text
	leaq .L.str.605(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.606:
	.string ".L.str."
.text
	leaq .L.str.606(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprint
.data
.L.str.607:
	.string ":"
.text
	leaq .L.str.607(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.608:
	.string "\t.string "
.text
	leaq .L.str.608(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $72, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.609:
	.string ".text"
.text
	leaq .L.str.609(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.610:
	.string "\tleaq "
.text
	leaq .L.str.610(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
.data
.L.str.611:
	.string ".L.str."
.text
	leaq .L.str.611(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call iprint
.data
.L.str.612:
	.string "(%rip), %rax"
.text
	leaq .L.str.612(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.613:
	.string "ND_NUM"
.text
	leaq .L.str.613(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.42
.data
.L.str.614:
	.string "\tmovq $"
.text
	leaq .L.str.614(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
.data
.L.str.615:
	.string ", %rax"
.text
	leaq .L.str.615(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.616:
	.string "ND_ASSIGN"
.text
	leaq .L.str.616(%rip), %rax
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
.L.str.617:
	.string "\tpush %rax"
.text
	leaq .L.str.617(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.618:
	.string "\tpop %rdi"
.text
	leaq .L.str.618(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.619:
	.string "ND_VAR"
.text
	leaq .L.str.619(%rip), %rax
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
.L.str.620:
	.string "ND_FUNC_CALL"
.text
	leaq .L.str.620(%rip), %rax
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
.L.str.621:
	.string "\tmovq $0, %rax"
.text
	leaq .L.str.621(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.622:
	.string "\tcall "
.text
	leaq .L.str.622(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $96, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.623:
	.string "ND_EXPR_STMT"
.text
	leaq .L.str.623(%rip), %rax
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
.L.str.624:
	.string "ND_REF"
.text
	leaq .L.str.624(%rip), %rax
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
.L.str.625:
	.string "ND_DEREF"
.text
	leaq .L.str.625(%rip), %rax
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
.L.str.626:
	.string "ND_NOT"
.text
	leaq .L.str.626(%rip), %rax
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
.L.str.627:
	.string "\tcmpq $0, %rax"
.text
	leaq .L.str.627(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.628:
	.string "\tsete %al"
.text
	leaq .L.str.628(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.629:
	.string "\tmovzbq %al, %rax"
.text
	leaq .L.str.629(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.630:
	.string "ND_ADD"
.text
	leaq .L.str.630(%rip), %rax
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
.L.str.631:
	.string "add"
.text
	leaq .L.str.631(%rip), %rax
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
.L.str.632:
	.string "ND_SUB"
.text
	leaq .L.str.632(%rip), %rax
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
.L.str.633:
	.string "sub"
.text
	leaq .L.str.633(%rip), %rax
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
.L.str.634:
	.string "ND_MUL"
.text
	leaq .L.str.634(%rip), %rax
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
.L.str.635:
	.string "imul"
.text
	leaq .L.str.635(%rip), %rax
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
.L.str.636:
	.string "ND_DIV"
.text
	leaq .L.str.636(%rip), %rax
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
.L.str.637:
	.string "\tcqto"
.text
	leaq .L.str.637(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.54
.L.else.54:
.data
.L.str.638:
	.string "\tcltd"
.text
	leaq .L.str.638(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.639:
	.string "\tidivq %rdi"
.text
	leaq .L.str.639(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.55
.L.else.55:
.data
.L.str.640:
	.string "\tidivl %edi"
.text
	leaq .L.str.640(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.641:
	.string "ND_MOD"
.text
	leaq .L.str.641(%rip), %rax
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
.L.str.642:
	.string "\tcqto"
.text
	leaq .L.str.642(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.57
.L.else.57:
.data
.L.str.643:
	.string "\tcltd"
.text
	leaq .L.str.643(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.644:
	.string "\tidivq %rdi"
.text
	leaq .L.str.644(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.58
.L.else.58:
.data
.L.str.645:
	.string "\tidivl %edi"
.text
	leaq .L.str.645(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.L.end.58:
.data
.L.str.646:
	.string "\tmovq %rdx, %rax"
.text
	leaq .L.str.646(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.647:
	.string "ND_EQ"
.text
	leaq .L.str.647(%rip), %rax
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
.L.str.648:
	.string "cmp"
.text
	leaq .L.str.648(%rip), %rax
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
.L.str.649:
	.string "\tsete %al"
.text
	leaq .L.str.649(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.650:
	.string "ND_NE"
.text
	leaq .L.str.650(%rip), %rax
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
.L.str.651:
	.string "cmp"
.text
	leaq .L.str.651(%rip), %rax
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
.L.str.652:
	.string "\tsetne %al"
.text
	leaq .L.str.652(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.653:
	.string "ND_LE"
.text
	leaq .L.str.653(%rip), %rax
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
.L.str.654:
	.string "cmp"
.text
	leaq .L.str.654(%rip), %rax
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
.L.str.655:
	.string "\tsetle %al"
.text
	leaq .L.str.655(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.656:
	.string "ND_LT"
.text
	leaq .L.str.656(%rip), %rax
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
.L.str.657:
	.string "cmp"
.text
	leaq .L.str.657(%rip), %rax
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
.L.str.658:
	.string "\tsetl %al"
.text
	leaq .L.str.658(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.data
.L.str.659:
	.string "unreachable"
.text
	leaq .L.str.659(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.660:
	.string "%rdi"
.text
	leaq .L.str.660(%rip), %rax
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
.L.str.661:
	.string "%rsi"
.text
	leaq .L.str.661(%rip), %rax
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
.L.str.662:
	.string "%rdx"
.text
	leaq .L.str.662(%rip), %rax
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
.L.str.663:
	.string "%rcx"
.text
	leaq .L.str.663(%rip), %rax
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
.L.str.664:
	.string "%r8"
.text
	leaq .L.str.664(%rip), %rax
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
.L.str.665:
	.string "%r9"
.text
	leaq .L.str.665(%rip), %rax
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
.L.str.666:
	.string "%edi"
.text
	leaq .L.str.666(%rip), %rax
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
.L.str.667:
	.string "%esi"
.text
	leaq .L.str.667(%rip), %rax
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
.L.str.668:
	.string "%edx"
.text
	leaq .L.str.668(%rip), %rax
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
.L.str.669:
	.string "%ecx"
.text
	leaq .L.str.669(%rip), %rax
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
.L.str.670:
	.string "%r8d"
.text
	leaq .L.str.670(%rip), %rax
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
.L.str.671:
	.string "%r9d"
.text
	leaq .L.str.671(%rip), %rax
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
.L.str.672:
	.string "%di"
.text
	leaq .L.str.672(%rip), %rax
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
.L.str.673:
	.string "%si"
.text
	leaq .L.str.673(%rip), %rax
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
.L.str.674:
	.string "%dx"
.text
	leaq .L.str.674(%rip), %rax
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
.L.str.675:
	.string "%cx"
.text
	leaq .L.str.675(%rip), %rax
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
.L.str.676:
	.string "%r8w"
.text
	leaq .L.str.676(%rip), %rax
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
.L.str.677:
	.string "%r9w"
.text
	leaq .L.str.677(%rip), %rax
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
.L.str.678:
	.string "%dil"
.text
	leaq .L.str.678(%rip), %rax
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
.L.str.679:
	.string "%sil"
.text
	leaq .L.str.679(%rip), %rax
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
.L.str.680:
	.string "%dl"
.text
	leaq .L.str.680(%rip), %rax
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
.L.str.681:
	.string "%cl"
.text
	leaq .L.str.681(%rip), %rax
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
.L.str.682:
	.string "%r8b"
.text
	leaq .L.str.682(%rip), %rax
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
.L.str.683:
	.string "%r9b"
.text
	leaq .L.str.683(%rip), %rax
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
.L.str.684:
	.string "TK_EOF"
.text
	leaq .L.str.684(%rip), %rax
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
.L.str.685:
	.string "func"
.text
	leaq .L.str.685(%rip), %rax
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
.L.str.686:
	.string "struct"
.text
	leaq .L.str.686(%rip), %rax
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
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.687:
	.string "expected `func` or `struct`"
.text
	leaq .L.str.687(%rip), %rax
	push %rax
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
.L.str.688:
	.string "OBJ_FUNC"
.text
	leaq .L.str.688(%rip), %rax
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
.L.str.689:
	.string "("
.text
	leaq .L.str.689(%rip), %rax
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
.L.str.690:
	.string ")"
.text
	leaq .L.str.690(%rip), %rax
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
.L.str.691:
	.string ")"
.text
	leaq .L.str.691(%rip), %rax
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
.L.str.692:
	.string ";"
.text
	leaq .L.str.692(%rip), %rax
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
.L.str.693:
	.string ";"
.text
	leaq .L.str.693(%rip), %rax
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
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.694:
	.string "function is already defined somewhere"
.text
	leaq .L.str.694(%rip), %rax
	push %rax
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
.L.str.695:
	.string "struct"
.text
	leaq .L.str.695(%rip), %rax
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
.L.str.696:
	.string "TY_STRUCT"
.text
	leaq .L.str.696(%rip), %rax
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
.L.str.697:
	.string ";"
.text
	leaq .L.str.697(%rip), %rax
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
.L.str.698:
	.string ";"
.text
	leaq .L.str.698(%rip), %rax
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
.L.str.699:
	.string "{"
.text
	leaq .L.str.699(%rip), %rax
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
.L.str.700:
	.string "}"
.text
	leaq .L.str.700(%rip), %rax
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
.L.str.701:
	.string "}"
.text
	leaq .L.str.701(%rip), %rax
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
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.702:
	.string "struct is already defined somewhere"
.text
	leaq .L.str.702(%rip), %rax
	push %rax
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
.L.str.703:
	.string ")"
.text
	leaq .L.str.703(%rip), %rax
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
.L.str.704:
	.string "OBJ_VAR"
.text
	leaq .L.str.704(%rip), %rax
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
.L.str.705:
	.string ","
.text
	leaq .L.str.705(%rip), %rax
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
.L.str.706:
	.string ","
.text
	leaq .L.str.706(%rip), %rax
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
.L.str.707:
	.string ")"
.text
	leaq .L.str.707(%rip), %rax
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
.L.str.708:
	.string "ND_NUM"
.text
	leaq .L.str.708(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $64, %rax
	push %rax
.data
.L.str.709:
	.string "1"
.text
	leaq .L.str.709(%rip), %rax
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
.L.str.710:
	.string "ND_BLOCK"
.text
	leaq .L.str.710(%rip), %rax
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
.L.str.711:
	.string "{"
.text
	leaq .L.str.711(%rip), %rax
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
.L.str.712:
	.string "}"
.text
	leaq .L.str.712(%rip), %rax
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
.L.str.713:
	.string "}"
.text
	leaq .L.str.713(%rip), %rax
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
.L.str.714:
	.string "var"
.text
	leaq .L.str.714(%rip), %rax
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
.L.str.715:
	.string ";"
.text
	leaq .L.str.715(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -48(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.716:
	.string "OBJ_VAR"
.text
	leaq .L.str.716(%rip), %rax
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
.L.str.717:
	.string "goto"
.text
	leaq .L.str.717(%rip), %rax
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
.L.str.718:
	.string ";"
.text
	leaq .L.str.718(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -40(%rbp), %rax
	push %rax
.data
.L.str.719:
	.string "ND_GOTO"
.text
	leaq .L.str.719(%rip), %rax
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
.L.str.720:
	.string "TK_EOF"
.text
	leaq .L.str.720(%rip), %rax
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
.L.str.721:
	.string ":"
.text
	leaq .L.str.721(%rip), %rax
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
.L.str.722:
	.string ":"
.text
	leaq .L.str.722(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	leaq -40(%rbp), %rax
	push %rax
.data
.L.str.723:
	.string "ND_LABEL"
.text
	leaq .L.str.723(%rip), %rax
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
.L.str.724:
	.string "if"
.text
	leaq .L.str.724(%rip), %rax
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
.L.str.725:
	.string "ND_IF"
.text
	leaq .L.str.725(%rip), %rax
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
.L.str.726:
	.string "else"
.text
	leaq .L.str.726(%rip), %rax
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
.L.str.727:
	.string "while"
.text
	leaq .L.str.727(%rip), %rax
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
.L.str.728:
	.string "ND_WHILE"
.text
	leaq .L.str.728(%rip), %rax
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
.L.str.729:
	.string "{"
.text
	leaq .L.str.729(%rip), %rax
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
.L.str.730:
	.string "return"
.text
	leaq .L.str.730(%rip), %rax
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
.L.str.731:
	.string "ND_RETURN"
.text
	leaq .L.str.731(%rip), %rax
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
.L.str.732:
	.string "{"
.text
	leaq .L.str.732(%rip), %rax
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
.L.str.733:
	.string "ND_EXPR_STMT"
.text
	leaq .L.str.733(%rip), %rax
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
.L.str.734:
	.string ";"
.text
	leaq .L.str.734(%rip), %rax
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
.L.str.735:
	.string "=="
.text
	leaq .L.str.735(%rip), %rax
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
.L.str.736:
	.string "ND_EQ"
.text
	leaq .L.str.736(%rip), %rax
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
.L.str.737:
	.string "!="
.text
	leaq .L.str.737(%rip), %rax
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
.L.str.738:
	.string "ND_NE"
.text
	leaq .L.str.738(%rip), %rax
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
.L.str.739:
	.string "<="
.text
	leaq .L.str.739(%rip), %rax
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
.L.str.740:
	.string "ND_LE"
.text
	leaq .L.str.740(%rip), %rax
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
.L.str.741:
	.string ">="
.text
	leaq .L.str.741(%rip), %rax
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
.L.str.742:
	.string "ND_LE"
.text
	leaq .L.str.742(%rip), %rax
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
.L.str.743:
	.string "<"
.text
	leaq .L.str.743(%rip), %rax
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
.L.str.744:
	.string "ND_LT"
.text
	leaq .L.str.744(%rip), %rax
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
.L.str.745:
	.string ">"
.text
	leaq .L.str.745(%rip), %rax
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
.L.str.746:
	.string "ND_LT"
.text
	leaq .L.str.746(%rip), %rax
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
.L.str.747:
	.string "+"
.text
	leaq .L.str.747(%rip), %rax
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
.L.str.748:
	.string "ND_ADD"
.text
	leaq .L.str.748(%rip), %rax
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
.L.str.749:
	.string "-"
.text
	leaq .L.str.749(%rip), %rax
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
.L.str.750:
	.string "ND_SUB"
.text
	leaq .L.str.750(%rip), %rax
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
.L.str.751:
	.string "*"
.text
	leaq .L.str.751(%rip), %rax
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
.L.str.752:
	.string "ND_MUL"
.text
	leaq .L.str.752(%rip), %rax
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
.L.str.753:
	.string "/"
.text
	leaq .L.str.753(%rip), %rax
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
.L.str.754:
	.string "ND_DIV"
.text
	leaq .L.str.754(%rip), %rax
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
.L.str.755:
	.string "%"
.text
	leaq .L.str.755(%rip), %rax
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
.L.str.756:
	.string "ND_MOD"
.text
	leaq .L.str.756(%rip), %rax
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
.L.str.757:
	.string "ND_NUM"
.text
	leaq .L.str.757(%rip), %rax
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
.L.str.758:
	.string "1"
.text
	leaq .L.str.758(%rip), %rax
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
.L.str.759:
	.string "ND_DEREF"
.text
	leaq .L.str.759(%rip), %rax
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
.L.str.760:
	.string "TY_PTR"
.text
	leaq .L.str.760(%rip), %rax
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
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.761:
	.string "invalid pointer dereference"
.text
	leaq .L.str.761(%rip), %rax
	push %rax
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
.L.str.762:
	.string "TK_NUM"
.text
	leaq .L.str.762(%rip), %rax
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
.L.str.763:
	.string "ND_NUM"
.text
	leaq .L.str.763(%rip), %rax
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
.L.str.764:
	.string "TK_STR"
.text
	leaq .L.str.764(%rip), %rax
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
.L.str.765:
	.string "ND_STR"
.text
	leaq .L.str.765(%rip), %rax
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
.L.str.766:
	.string "nil"
.text
	leaq .L.str.766(%rip), %rax
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
.L.str.767:
	.string "ND_NUM"
.text
	leaq .L.str.767(%rip), %rax
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
.L.str.768:
	.string "0"
.text
	leaq .L.str.768(%rip), %rax
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
.L.str.769:
	.string "typesize"
.text
	leaq .L.str.769(%rip), %rax
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
.L.str.770:
	.string "ND_NUM"
.text
	leaq .L.str.770(%rip), %rax
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
.L.str.771:
	.string "("
.text
	leaq .L.str.771(%rip), %rax
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
.L.str.772:
	.string ")"
.text
	leaq .L.str.772(%rip), %rax
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
.L.str.773:
	.string "sizeof"
.text
	leaq .L.str.773(%rip), %rax
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
.L.str.774:
	.string "("
.text
	leaq .L.str.774(%rip), %rax
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
.L.str.775:
	.string ")"
.text
	leaq .L.str.775(%rip), %rax
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
.L.str.776:
	.string "ND_NUM"
.text
	leaq .L.str.776(%rip), %rax
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
.L.str.777:
	.string "TK_IDENT"
.text
	leaq .L.str.777(%rip), %rax
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
.L.str.778:
	.string "("
.text
	leaq .L.str.778(%rip), %rax
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
.L.str.779:
	.string "ND_FUNC_CALL"
.text
	leaq .L.str.779(%rip), %rax
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
.L.str.780:
	.string "("
.text
	leaq .L.str.780(%rip), %rax
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
.L.str.781:
	.string ")"
.text
	leaq .L.str.781(%rip), %rax
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
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.782:
	.string "unkown function"
.text
	leaq .L.str.782(%rip), %rax
	push %rax
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
.L.str.783:
	.string "ND_VAR"
.text
	leaq .L.str.783(%rip), %rax
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
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.784:
	.string "unkown object"
.text
	leaq .L.str.784(%rip), %rax
	push %rax
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
.L.str.785:
	.string "("
.text
	leaq .L.str.785(%rip), %rax
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
.L.str.786:
	.string ")"
.text
	leaq .L.str.786(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call parser_skip
	jmp .L.end.120
.L.else.120:
	leaq -52(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.787:
	.string "expected number or identifier"
.text
	leaq .L.str.787(%rip), %rax
	push %rax
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
.L.str.788:
	.string "*"
.text
	leaq .L.str.788(%rip), %rax
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
.L.str.789:
	.string "&"
.text
	leaq .L.str.789(%rip), %rax
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
.L.str.790:
	.string "ND_REF"
.text
	leaq .L.str.790(%rip), %rax
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
.L.str.791:
	.string "!"
.text
	leaq .L.str.791(%rip), %rax
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
.L.str.792:
	.string "ND_NOT"
.text
	leaq .L.str.792(%rip), %rax
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
.L.str.793:
	.string "++"
.text
	leaq .L.str.793(%rip), %rax
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
.L.str.794:
	.string "ND_SUB"
.text
	leaq .L.str.794(%rip), %rax
	push %rax
.data
.L.str.795:
	.string "ND_ASSIGN"
.text
	leaq .L.str.795(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.796:
	.string "ND_ADD"
.text
	leaq .L.str.796(%rip), %rax
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
.L.str.797:
	.string "--"
.text
	leaq .L.str.797(%rip), %rax
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
.L.str.798:
	.string "ND_ADD"
.text
	leaq .L.str.798(%rip), %rax
	push %rax
.data
.L.str.799:
	.string "ND_ASSIGN"
.text
	leaq .L.str.799(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.800:
	.string "ND_SUB"
.text
	leaq .L.str.800(%rip), %rax
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
.L.str.801:
	.string "["
.text
	leaq .L.str.801(%rip), %rax
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
.L.str.802:
	.string "]"
.text
	leaq .L.str.802(%rip), %rax
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
.L.str.803:
	.string "TY_PTR"
.text
	leaq .L.str.803(%rip), %rax
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
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.804:
	.string "`[]` cannot access to none pointer type."
.text
	leaq .L.str.804(%rip), %rax
	push %rax
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
.L.str.805:
	.string "ND_NUM"
.text
	leaq .L.str.805(%rip), %rax
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
.L.str.806:
	.string "ND_MUL"
.text
	leaq .L.str.806(%rip), %rax
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
.L.str.807:
	.string "ND_ADD"
.text
	leaq .L.str.807(%rip), %rax
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
.L.str.808:
	.string "ND_DEREF"
.text
	leaq .L.str.808(%rip), %rax
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
.L.str.809:
	.string "."
.text
	leaq .L.str.809(%rip), %rax
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
.L.str.810:
	.string "TY_PTR"
.text
	leaq .L.str.810(%rip), %rax
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
.L.str.811:
	.string "TY_STRUCT"
.text
	leaq .L.str.811(%rip), %rax
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
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.812:
	.string "cannot access from none struct type"
.text
	leaq .L.str.812(%rip), %rax
	push %rax
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
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.813:
	.string "member name not found"
.text
	leaq .L.str.813(%rip), %rax
	push %rax
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
.L.str.814:
	.string "ND_DEREF"
.text
	leaq .L.str.814(%rip), %rax
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
.L.str.815:
	.string "ND_MEMBER_ACCESS"
.text
	leaq .L.str.815(%rip), %rax
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
.L.str.816:
	.string "TY_STRUCT"
.text
	leaq .L.str.816(%rip), %rax
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
	leaq -68(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.817:
	.string "cannot access from none struct type"
.text
	leaq .L.str.817(%rip), %rax
	push %rax
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
	leaq -60(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.818:
	.string "member name not found"
.text
	leaq .L.str.818(%rip), %rax
	push %rax
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
.L.str.819:
	.string "ND_MEMBER_ACCESS"
.text
	leaq .L.str.819(%rip), %rax
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
.L.str.820:
	.string ")"
.text
	leaq .L.str.820(%rip), %rax
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
.L.str.821:
	.string ","
.text
	leaq .L.str.821(%rip), %rax
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
.L.str.822:
	.string ","
.text
	leaq .L.str.822(%rip), %rax
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
.L.str.823:
	.string "="
.text
	leaq .L.str.823(%rip), %rax
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
.L.str.824:
	.string "ND_ASSIGN"
.text
	leaq .L.str.824(%rip), %rax
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
.global eprint_onkown_object
eprint_onkown_object:
	push %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq %rdi, -8(%rbp)
.data
.L.str.825:
	.string "unkown object `"
.text
	leaq .L.str.825(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
.data
.L.str.826:
	.string "`"
.text
	leaq .L.str.826(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
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
.L.str.827:
	.string "i64"
.text
	leaq .L.str.827(%rip), %rax
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
.L.str.828:
	.string "i32"
.text
	leaq .L.str.828(%rip), %rax
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
.L.str.829:
	.string "i16"
.text
	leaq .L.str.829(%rip), %rax
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
.L.str.830:
	.string "i8"
.text
	leaq .L.str.830(%rip), %rax
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
.L.str.831:
	.string "*"
.text
	leaq .L.str.831(%rip), %rax
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
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.832:
	.string "unkown type found"
.text
	leaq .L.str.832(%rip), %rax
	push %rax
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
.L.str.833:
	.string "ND_STR"
.text
	leaq .L.str.833(%rip), %rax
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
.L.str.834:
	.string "ND_GOTO"
.text
	leaq .L.str.834(%rip), %rax
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
.L.str.835:
	.string "ND_LABEL"
.text
	leaq .L.str.835(%rip), %rax
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
.L.str.836:
	.string "ND_FUNC_CALL"
.text
	leaq .L.str.836(%rip), %rax
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
.L.str.837:
	.string "ND_IF"
.text
	leaq .L.str.837(%rip), %rax
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
.L.str.838:
	.string "ND_WHILE"
.text
	leaq .L.str.838(%rip), %rax
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
.L.str.839:
	.string "ND_RETURN"
.text
	leaq .L.str.839(%rip), %rax
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
.L.str.840:
	.string "ND_ADD"
.text
	leaq .L.str.840(%rip), %rax
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
.L.str.841:
	.string "ND_SUB"
.text
	leaq .L.str.841(%rip), %rax
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
.L.str.842:
	.string "ND_MUL"
.text
	leaq .L.str.842(%rip), %rax
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
.L.str.843:
	.string "ND_DIV"
.text
	leaq .L.str.843(%rip), %rax
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
.L.str.844:
	.string "ND_MOD"
.text
	leaq .L.str.844(%rip), %rax
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
.L.str.845:
	.string "ND_ASSIGN"
.text
	leaq .L.str.845(%rip), %rax
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
.L.str.846:
	.string "ND_ADD"
.text
	leaq .L.str.846(%rip), %rax
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
.L.str.847:
	.string "ND_NOT"
.text
	leaq .L.str.847(%rip), %rax
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
.L.str.848:
	.string "ND_EQ"
.text
	leaq .L.str.848(%rip), %rax
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
.L.str.849:
	.string "ND_NE"
.text
	leaq .L.str.849(%rip), %rax
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
.L.str.850:
	.string "ND_LE"
.text
	leaq .L.str.850(%rip), %rax
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
.L.str.851:
	.string "ND_LT"
.text
	leaq .L.str.851(%rip), %rax
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
.L.str.852:
	.string "ND_NUM"
.text
	leaq .L.str.852(%rip), %rax
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
.L.str.853:
	.string "ND_VAR"
.text
	leaq .L.str.853(%rip), %rax
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
.L.str.854:
	.string "ND_REF"
.text
	leaq .L.str.854(%rip), %rax
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
.L.str.855:
	.string "ND_DEREF"
.text
	leaq .L.str.855(%rip), %rax
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
.L.str.856:
	.string "ND_EXPR_STMT"
.text
	leaq .L.str.856(%rip), %rax
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
.L.str.857:
	.string "NULL"
.text
	leaq .L.str.857(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.858:
	.string "name already exist"
.text
	leaq .L.str.858(%rip), %rax
	push %rax
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
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.859:
	.string "unexpected token"
.text
	leaq .L.str.859(%rip), %rax
	push %rax
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
.L.str.860:
	.string "NULL"
.text
	leaq .L.str.860(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.L.str.861:
	.string "parser_next got nil!!!!!"
.text
	leaq .L.str.861(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
.global new_parser
new_parser:
	push %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rdi, -16(%rbp)
	leaq -8(%rbp), %rax
	push %rax
	movq $64, %rax
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
	jne .L.else.182
.data
.L.str.862:
	.string "NULL"
.text
	leaq .L.str.862(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.182
.L.else.182:
.L.end.182:
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
.L.str.863:
	.string "alloc"
.text
	leaq .L.str.863(%rip), %rax
	push %rax
.data
.L.str.864:
	.string "OBJ_FUNC"
.text
	leaq .L.str.864(%rip), %rax
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
.L.str.865:
	.string "println"
.text
	leaq .L.str.865(%rip), %rax
	push %rax
.data
.L.str.866:
	.string "OBJ_FUNC"
.text
	leaq .L.str.866(%rip), %rax
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
.L.str.867:
	.string "print"
.text
	leaq .L.str.867(%rip), %rax
	push %rax
.data
.L.str.868:
	.string "OBJ_FUNC"
.text
	leaq .L.str.868(%rip), %rax
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
.L.str.869:
	.string "iprint"
.text
	leaq .L.str.869(%rip), %rax
	push %rax
.data
.L.str.870:
	.string "OBJ_FUNC"
.text
	leaq .L.str.870(%rip), %rax
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
.L.str.871:
	.string "iprintln"
.text
	leaq .L.str.871(%rip), %rax
	push %rax
.data
.L.str.872:
	.string "OBJ_FUNC"
.text
	leaq .L.str.872(%rip), %rax
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
.L.str.873:
	.string "open"
.text
	leaq .L.str.873(%rip), %rax
	push %rax
.data
.L.str.874:
	.string "OBJ_FUNC"
.text
	leaq .L.str.874(%rip), %rax
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
.L.str.875:
	.string "close"
.text
	leaq .L.str.875(%rip), %rax
	push %rax
.data
.L.str.876:
	.string "OBJ_FUNC"
.text
	leaq .L.str.876(%rip), %rax
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
.L.str.877:
	.string "read"
.text
	leaq .L.str.877(%rip), %rax
	push %rax
.data
.L.str.878:
	.string "OBJ_FUNC"
.text
	leaq .L.str.878(%rip), %rax
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
.L.str.879:
	.string "write"
.text
	leaq .L.str.879(%rip), %rax
	push %rax
.data
.L.str.880:
	.string "OBJ_FUNC"
.text
	leaq .L.str.880(%rip), %rax
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
.L.str.881:
	.string "exit"
.text
	leaq .L.str.881(%rip), %rax
	push %rax
.data
.L.str.882:
	.string "OBJ_FUNC"
.text
	leaq .L.str.882(%rip), %rax
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
.L.str.883:
	.string "printf"
.text
	leaq .L.str.883(%rip), %rax
	push %rax
.data
.L.str.884:
	.string "OBJ_FUNC"
.text
	leaq .L.str.884(%rip), %rax
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
.L.str.885:
	.string "TY_FUNC"
.text
	leaq .L.str.885(%rip), %rax
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
.L.str.886:
	.string "TY_PTR"
.text
	leaq .L.str.886(%rip), %rax
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
.L.str.887:
	.string "i8"
.text
	leaq .L.str.887(%rip), %rax
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
.L.str.888:
	.string "i16"
.text
	leaq .L.str.888(%rip), %rax
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
.L.str.889:
	.string "i32"
.text
	leaq .L.str.889(%rip), %rax
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
.L.str.890:
	.string "i64"
.text
	leaq .L.str.890(%rip), %rax
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
.L.while.start.183:
	movq $0, %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.183
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
	jne .L.else.184
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.184
.L.else.184:
.L.end.184:
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $45, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.183
.L.while.end.183:
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
.L.while.start.185:
	movq $0, %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.185
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
.data
.L.str.891:
	.string "TY_STRUCT"
.text
	leaq .L.str.891(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call strcmp
	cmpq $1, %rax
	jne .L.else.186
.data
.L.str.892:
	.string "struct "
.text
	leaq .L.str.892(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
.data
.L.str.893:
	.string " {"
.text
	leaq .L.str.893(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	leaq -8(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
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
.data
.L.str.894:
	.string "  "
.text
	leaq .L.str.894(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	leaq -8(%rbp), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.187
.L.while.end.187:
.data
.L.str.895:
	.string "}"
.text
	leaq .L.str.895(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	jmp .L.end.186
.L.else.186:
.data
.L.str.896:
	.string "unkown userdefined type `"
.text
	leaq .L.str.896(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $12, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
.data
.L.str.897:
	.string "` found"
.text
	leaq .L.str.897(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
.L.end.186:
	leaq -16(%rbp), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	addq $45, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.while.start.185
.L.while.end.185:
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
	jne .L.else.188
.data
.L.str.898:
	.string "NIL"
.text
	leaq .L.str.898(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.188
.L.else.188:
.L.end.188:
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
	jne .L.else.189
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.189
.L.else.189:
.L.end.189:
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
.data
.L.str.899:
	.string " : "
.text
	leaq .L.str.899(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
	jne .L.else.190
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print_all_tokens
	jmp .L.end.190
.L.else.190:
.L.end.190:
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
	subq $76, %rsp
	movq %rdi, -76(%rbp)
	leaq -32(%rbp), %rax
	push %rax
	leaq -68(%rbp), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.191:
	movq $0, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.191
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call isdigit
	cmpq $1, %rax
	jne .L.else.192
	leaq -24(%rbp), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.193:
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call isdigit
	cmpq $1, %rax
	jne .L.while.end.193
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.193
.L.while.end.193:
	leaq -32(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
.data
.L.str.900:
	.string "TK_NUM"
.text
	leaq .L.str.900(%rip), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -24(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -76(%rbp), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.tokenize.again
	jmp .L.end.192
.L.else.192:
.L.end.192:
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call isalpha
	cmpq $1, %rax
	jne .L.else.194
	leaq -16(%rbp), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.195:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.195
	leaq -76(%rbp), %rax
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
	jne .L.else.196
	leaq -76(%rbp), %rax
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
	jne .L.else.197
	movq $95, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.198
	jmp .L.tokenize.ident_end
	jmp .L.end.198
.L.else.198:
.L.end.198:
	jmp .L.end.197
.L.else.197:
.L.end.197:
	jmp .L.end.196
.L.else.196:
.L.end.196:
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.195
.L.while.end.195:
.L.tokenize.ident_end:
	leaq -32(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
.data
.L.str.901:
	.string "TK_IDENT"
.text
	leaq .L.str.901(%rip), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -16(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -76(%rbp), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.tokenize.again
	jmp .L.end.194
.L.else.194:
.L.end.194:
	movq $47, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.199
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
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
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.200
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
.L.while.start.201:
	movq $10, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.201
	movq $0, %rax
	push %rax
	leaq -76(%rbp), %rax
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
	jmp .L.tokenize.again
	jmp .L.end.202
.L.else.202:
.L.end.202:
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.201
.L.while.end.201:
	jmp .L.tokenize.again
	jmp .L.end.200
.L.else.200:
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	addq %rdi, %rax
.L.end.200:
	jmp .L.end.199
.L.else.199:
.L.end.199:
	movq $34, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.203
	leaq -8(%rbp), %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
.L.while.start.204:
	movq $34, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.204
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	jmp .L.while.start.204
.L.while.end.204:
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	subq %rdi, %rax
	leaq -32(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
.data
.L.str.902:
	.string "TK_STR"
.text
	leaq .L.str.902(%rip), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -8(%rbp), %rax
	movq (%rax), %rax
	push %rax
	leaq -76(%rbp), %rax
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
	pop %rdi
	movq %rax, (%rdi)
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.tokenize.again
	jmp .L.end.203
.L.else.203:
.L.end.203:
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call is_two_c_punct
	cmpq $1, %rax
	jne .L.else.205
	leaq -32(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
.data
.L.str.903:
	.string "TK_PUNCT"
.text
	leaq .L.str.903(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
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
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $2, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	pop %rdi
	addq %rdi, %rax
	pop %rdi
	movq %rax, (%rdi)
	jmp .L.tokenize.again
	jmp .L.end.205
.L.else.205:
.L.end.205:
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	push %rax
	pop %rdi
	movq $0, %rax
	call ispunct
	cmpq $1, %rax
	jne .L.else.206
	leaq -32(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
.data
.L.str.904:
	.string "TK_PUNCT"
.text
	leaq .L.str.904(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
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
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
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
	movq $32, %rax
	push %rax
	leaq -76(%rbp), %rax
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
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
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
	movq $10, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.208
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
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
	jmp .L.end.208
.L.else.208:
.L.end.208:
	movq $9, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	movq (%rax), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	sete %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.209
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
	movq (%rax), %rax
	addq $0, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -76(%rbp), %rax
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
	jmp .L.end.209
.L.else.209:
.L.end.209:
.data
.L.str.905:
	.string "TK_UNKOWN"
.text
	leaq .L.str.905(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
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
.L.str.906:
	.string "unkown character found"
.text
	leaq .L.str.906(%rip), %rax
	push %rax
	pop %rsi
	pop %rdi
	movq $0, %rax
	call print_error
.L.tokenize.again:
	jmp .L.while.start.191
.L.while.end.191:
	leaq -32(%rbp), %rax
	push %rax
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $28, %rax
	push %rax
.data
.L.str.907:
	.string "TK_EOF"
.text
	leaq .L.str.907(%rip), %rax
	push %rax
	leaq -76(%rbp), %rax
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
	leaq -32(%rbp), %rax
	movq (%rax), %rax
	addq $20, %rax
	push %rax
.data
.L.str.908:
	.string "EOF"
.text
	leaq .L.str.908(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -68(%rbp), %rax
	addq $28, %rax
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
	jne .L.else.210
.data
.L.str.909:
	.string "NULL"
.text
	leaq .L.str.909(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.210
.L.else.210:
.L.end.210:
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
.L.str.910:
	.string "+-<>;:{}=,()[].*!%&/"
.text
	leaq .L.str.910(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.211:
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
	jne .L.while.end.211
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
	jne .L.else.212
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.212
.L.else.212:
.L.end.212:
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
	jmp .L.while.start.211
.L.while.end.211:
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
	jne .L.else.213
.data
.L.str.911:
	.string "NULL"
.text
	leaq .L.str.911(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
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
	jne .L.else.214
	movq $57, %rax
	push %rax
	leaq -1(%rbp), %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.215
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.215
.L.else.215:
.L.end.215:
	jmp .L.end.214
.L.else.214:
.L.end.214:
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
	jne .L.else.216
	movq $90, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.217
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.217
.L.else.217:
.L.end.217:
	jmp .L.end.216
.L.else.216:
.L.end.216:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $97, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.else.218
	movq $122, %rax
	push %rax
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
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
	jmp .L.end.218
.L.else.218:
.L.end.218:
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
.L.str.912:
	.string "==<=>=!=++--"
.text
	leaq .L.str.912(%rip), %rax
	pop %rdi
	movq %rax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.220:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.220
	leaq -12(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $11, %rax
	pop %rdi
	cmpl %edi, %eax
	setle %al
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
	jne .L.else.222
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
	jne .L.else.223
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.223
.L.else.223:
.L.end.223:
	jmp .L.end.222
.L.else.222:
.L.end.222:
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
	jmp .L.while.start.220
.L.while.end.220:
	leave
	ret
.global print_error
print_error:
	push %rbp
	movq %rsp, %rbp
	subq $28, %rsp
	movq %rdi, -28(%rbp)
	movq %rsi, -20(%rbp)
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
	leaq -12(%rbp), %rax
	push %rax
	leaq -28(%rbp), %rax
	movq (%rax), %rax
	addq $8, %rax
	movq (%rax), %rax
	pop %rdi
	movq %rax, (%rdi)
.L.while.start.224:
	movq $10, %rax
	push %rax
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	pop %rdi
	subq %rdi, %rax
	movsbl (%rax), %eax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.224
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
	jmp .L.while.start.224
.L.while.end.224:
.L.while.start.225:
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
	jne .L.while.end.225
	movq $1, %rax
	push %rax
	leaq -12(%rbp), %rax
	movq (%rax), %rax
	push %rax
	movq $1, %rax
	push %rax
	pop %rdx
	pop %rsi
	pop %rdi
	movq $0, %rax
	call write
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
	jmp .L.while.start.225
.L.while.end.225:
.data
.L.str.913:
	.string ""
.text
	leaq .L.str.913(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
.L.while.start.226:
	leaq -4(%rbp), %rax
	movslq (%rax), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	cmpl %edi, %eax
	setl %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.226
.data
.L.str.914:
	.string " "
.text
	leaq .L.str.914(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
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
	jmp .L.while.start.226
.L.while.end.226:
.data
.L.str.915:
	.string "^ "
.text
	leaq .L.str.915(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call print
	leaq -20(%rbp), %rax
	movq (%rax), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
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
	jne .L.else.227
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
	jmp .L.end.227
.L.else.227:
.L.end.227:
.L.while.start.228:
	movq $0, %rax
	push %rax
	leaq -24(%rbp), %rax
	movslq (%rax), %rax
	pop %rdi
	cmpl %edi, %eax
	setne %al
	movzbl %al, %eax
	cmpq $1, %rax
	jne .L.while.end.228
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
	jne .L.else.229
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
	jmp .L.end.229
.L.else.229:
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
.L.end.229:
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
	jmp .L.while.start.228
.L.while.end.228:
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
.L.while.start.230:
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
	jne .L.while.end.230
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
	jmp .L.while.start.230
.L.while.end.230:
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
.L.while.start.231:
	movq $1, %rax
	cmpq $1, %rax
	jne .L.while.end.231
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
	jne .L.else.232
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
	jne .L.else.233
	movq $1, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
	jmp .L.end.233
.L.else.233:
.L.end.233:
	jmp .L.strcmp.ok_next
	jmp .L.end.232
.L.else.232:
	movq $0, %rax
	movq %rbp, %rsp
	pop %rbp
	retq
.L.end.232:
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
	jmp .L.while.start.231
.L.while.end.231:
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
	jne .L.else.234
.data
.L.str.916:
	.string "NULL"
.text
	leaq .L.str.916(%rip), %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call println
	movq $1, %rax
	push %rax
	pop %rdi
	movq $0, %rax
	call exit
	jmp .L.end.234
.L.else.234:
.L.end.234:
	leaq -4(%rbp), %rax
	push %rax
	movq $0, %rax
	pop %rdi
	movl %eax, (%rdi)
.L.while.start.235:
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
	jne .L.while.end.235
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
	jmp .L.while.start.235
.L.while.end.235:
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
# builtin start
.text
.global write
write:
	movq $1, %rax
	syscall
	ret
.global open
open:
	movq $2, %rax
	syscall
	ret
.global read
read:
	movq $0, %rax
	syscall
	ret
.global close
close:
    movq $3, %rax
    syscall
    ret
.global println
println:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $32, %rsp
	movq    %rdi, -24(%rbp)
	movl    $0, -4(%rbp)
	jmp     .L.println.2
.L.println.3:
	movl    -4(%rbp), %eax
	movslq  %eax, %rdx
	movq    -24(%rbp), %rsi
	addq    %rdx, %rsi
	movq    $1, %rdx
	movq    $1, %rdi
	movq    $1, %rax
	syscall
	addl    $1, -4(%rbp)
.L.println.2:
	movl    -4(%rbp), %eax
	movslq  %eax, %rdx
	movq    -24(%rbp), %rax
	addq    %rdx, %rax
	movzbl  (%rax), %eax
	testb   %al, %al
	jne     .L.println.3
	movq    $1, %rdx
	movq    $.L.str.newline, %rsi
	movq    $1, %rdi
	movq    $1, %rax
	syscall
	movl    -4(%rbp), %eax
	leave
	ret
	.global print
print:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $32, %rsp
	movq    %rdi, -24(%rbp)
	movl    $0, -4(%rbp)
	jmp     .L.print.2
.L.print.3:
	movl   -4(%rbp), %eax
	movslq %eax, %rdx
	movq   -24(%rbp), %rsi
	addq   %rdx, %rsi
	movq   $1, %rdx
	movq   $1, %rdi
	movq   $1, %rax
	syscall
	addl    $1, -4(%rbp)
.L.print.2:
	movl    -4(%rbp), %eax
	movslq  %eax, %rdx
	movq    -24(%rbp), %rax
	addq    %rdx, %rax
	movzbl  (%rax), %eax
	testb   %al, %al
	jne     .L.print.3
	movl    -4(%rbp), %eax
	leave
	ret
.global exit
exit:
	movq $60, %rax
	syscall
.bss
heap:
	.zero	5040000
heap_size:
	.zero	8
.text
.global	alloc
alloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	heap_size(%rip), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	cmpq	$5039999, %rax
	jbe	.L.alloc.2
	movl	$0, %eax
	jmp	.L.alloc_ret_null
.L.alloc.2:
	movq	heap_size(%rip), %rax
	leaq	heap(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	heap_size(%rip), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, heap_size(%rip)
	movq	-8(%rbp), %rax
.L.alloc_ret_null:
	popq	%rbp
	ret
.global iprintln
iprintln:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -56(%rbp)
    movq    $1, -8(%rbp)
    movl    $32, %eax
    subq    -8(%rbp), %rax
    movb    $10, -48(%rbp,%rax)
.L.iprintln.2:
    movq    -56(%rbp), %rcx
    movabsq $-3689348814741910323, %rdx
    movq    %rcx, %rax
    mulq    %rdx
    shrq    $3, %rdx
    movq    %rdx, %rax
    salq    $2, %rax
    addq    %rdx, %rax
    addq    %rax, %rax
    subq    %rax, %rcx
    movq    %rcx, %rdx
    movl    %edx, %eax
    leal    48(%rax), %edx
    movl    $31, %eax
    subq    -8(%rbp), %rax
    movb    %dl, -48(%rbp,%rax)
    addq    $1, -8(%rbp)
    movq    -56(%rbp), %rax
    movabsq $-3689348814741910323, %rdx
    mulq    %rdx
    movq    %rdx, %rax
    shrq    $3, %rax
    movq    %rax, -56(%rbp)
    cmpq    $0, -56(%rbp)
    jne     .L.iprintln.2
    movl    $32, %eax
    subq    -8(%rbp), %rax
    leaq    -48(%rbp), %rdx
    leaq    (%rdx,%rax), %rcx
    movq    -8(%rbp), %rax
    movq    %rax, %rdx
    movq    %rcx, %rsi
    movl    $1, %edi
    movl    $1, %eax
	syscall
    nop
    leave
    ret
.global iprint
.global iprint
iprint:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -56(%rbp)
    movq    $0, -8(%rbp)
    movl    $32, %eax
    subq    -8(%rbp), %rax
    #movb    $0, -48(%rbp,%rax)
.L.iprint.2:
    movq    -56(%rbp), %rcx
    movabsq $-3689348814741910323, %rdx
    movq    %rcx, %rax
    mulq    %rdx
    shrq    $3, %rdx
    movq    %rdx, %rax
    salq    $2, %rax
    addq    %rdx, %rax
    addq    %rax, %rax
    subq    %rax, %rcx
    movq    %rcx, %rdx
    movl    %edx, %eax
    leal    48(%rax), %edx
    movl    $31, %eax
    subq    -8(%rbp), %rax
    movb    %dl, -48(%rbp,%rax)
    addq    $1, -8(%rbp)
    movq    -56(%rbp), %rax
    movabsq $-3689348814741910323, %rdx
    mulq    %rdx
    movq    %rdx, %rax
    shrq    $3, %rax
    movq    %rax, -56(%rbp)
    cmpq    $0, -56(%rbp)
    jne     .L.iprint.2
    movl    $32, %eax
    subq    -8(%rbp), %rax
    leaq    -48(%rbp), %rdx
    leaq    (%rdx,%rax), %rcx
    movq    -8(%rbp), %rax
    movq    %rax, %rdx
    movq    %rcx, %rsi
    movl    $1, %edi
    movl    $1, %eax
    syscall
    nop
    leave
    ret
.data
.L.str.newline:
	.byte 10
	.byte 0
.text
.global	putchar
putchar:
	subq	$24, %rsp
	movl	$1, %edx
	movb	%dil, 12(%rsp)
	leaq	12(%rsp), %rsi
	movl	$1, %edi
	movq $1, %rax
	syscall
	movl	$1, %eax
	addq	$24, %rsp
	ret
.global	putstr
putstr:
	pushq	%rbp
	xorl	%ebp, %ebp
	pushq	%rbx
	movq	%rdi, %rbx
	pushq	%rcx
.L.putstr.4:
	movsbl	(%rbx), %edi
	testb	%dil, %dil
	je	.L.putstr.8
	call	putchar
	addq $1, %rbx # HERE
	addq	%rax, %rbp
	jmp	.L.putstr.4
.L.putstr.8:
	movq	%rbp, %rax
	popq	%rdx
	popq	%rbx
	popq	%rbp
	ret
.data
.LC.putunum.0:
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
.LC.putunum.1:
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
.global	putunum
putunum:
	pushq	%r13
	movl	%edx, %r13d
	pushq	%r12
	movl	%esi, %r12d
	pushq	%rbp
	xorl	%ebp, %ebp
	pushq	%rbx
	movq	%rdi, %rbx
	pushq	%rcx
	cmpq	%r12, %rdi
	jb	.L.putnum.10
	movzbl	%dl, %ecx
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%r12
	movl	%ecx, %edx
	movq	%rax, %rdi
	call	putunum
	movq	%rax, %rbp
.L.putnum.10:
	testb	%r13b, %r13b
	leaq	.LC.putunum.0(%rip), %rax
	leaq	.LC.putunum.1(%rip), %rcx
	cmovneq	%rax, %rcx
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%r12
	movsbl	(%rcx,%rdx), %edi
	call	putchar
	popq	%rdx
	popq	%rbx
	addq	%rbp, %rax
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.data
.L.printf.C2:
	.byte 40
	.byte 110
	.byte 105
	.byte 108
	.byte 41
	.byte 0
.L.printf.C3:
	.byte 48
	.byte 120
	.byte 0
.text
.global	printf
printf:
	pushq	%r13
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %rbp
	pushq	%rbx
	xorl	%ebx, %ebx
	subq	$88, %rsp
	leaq	128(%rsp), %rax
	movq	%rsi, 40(%rsp)
	movq	%rax, 16(%rsp)
	leaq	32(%rsp), %rax
	movq	%rdx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	movl	$8, 8(%rsp)
	movq	%rax, 24(%rsp)
.L.printf.17:
	movsbl	0(%rbp), %edi
	testb	%dil, %dil
	je	.L.printf.50
	leaq	1(%rbp), %r12
	cmpb	$37, %dil
	jne	.L.printf.18
	movb	1(%rbp), %al
	cmpb	$105, %al
	je	.L.printf.19
	jg	.L.printf.20
	cmpb	$99, %al
	je	.L.printf.21
	cmpb	$100, %al
	je	.L.printf.19
	movl	$37, %edi
	cmpb	$37, %al
	je	.L.printf.49
	jmp	.L.printf.23
.L.printf.20:
	cmpb	$112, %al
	je	.L.printf.24
	cmpb	$115, %al
	je	.L.printf.25
	jmp	.L.printf.23
.L.printf.21:
	movl	8(%rsp), %edx
	cmpl	$47, %edx
	ja	.L.printf.26
	movl	%edx, %eax
	addl	$8, %edx
	addq	24(%rsp), %rax
	movl	%edx, 8(%rsp)
	jmp	.L.printf.27
.L.printf.26:
	movq	16(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 16(%rsp)
.L.printf.27:
	movsbl	(%rax), %edi
	jmp	.L.printf.49
.L.printf.25:
	movl	8(%rsp), %edx
	cmpl	$47, %edx
	ja	.L.printf.29
	movl	%edx, %eax
	addl	$8, %edx
	addq	24(%rsp), %rax
	movl	%edx, 8(%rsp)
	jmp	.L.printf.30
.L.printf.29:
	movq	16(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 16(%rsp)
.L.printf.30:
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	jne	.L.printf.47
	jmp	.L.printf.48
.L.printf.24:
	movl	8(%rsp), %edx
	cmpl	$47, %edx
	ja	.L.printf.32
	movl	%edx, %eax
	addl	$8, %edx
	addq	24(%rsp), %rax
	movl	%edx, 8(%rsp)
	jmp	.L.printf.33
.L.printf.32:
	movq	16(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 16(%rsp)
.L.printf.33:
	movq	(%rax), %r13
	testq	%r13, %r13
	jne	.L.printf.34
.L.printf.48:
	leaq	.L.printf.C2(%rip), %rdi
.L.printf.47:
	call	putstr
.L.printf.46:
	addq	%rax, %rbx
	jmp	.L.printf.28
.L.printf.34:
	leaq	.L.printf.C3(%rip), %rdi
	call	putstr
	xorl	%edx, %edx
	movl	$16, %esi
	movq	%r13, %rdi
	movq	%rax, %rbp
	call	putunum
	addq	%rax, %rbp
	addq	%rbp, %rbx
	jmp	.L.printf.28
.L.printf.19:
	movl	8(%rsp), %edx
	cmpl	$47, %edx
	ja	.L.printf.35
	movl	%edx, %eax
	addl	$8, %edx
	addq	24(%rsp), %rax
	movl	%edx, 8(%rsp)
	jmp	.L.printf.36
.L.printf.35:
	movq	16(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 16(%rsp)
.L.printf.36:
	movl	(%rax), %ebp
	testl	%ebp, %ebp
	jns	.L.printf.37
	movl	$45, %edi
	negl	%ebp
	call	putchar
	addq	%rax, %rbx
.L.printf.37:
	movl	%ebp, %edi
	xorl	%edx, %edx
	movl	$10, %esi
	call	putunum
	jmp	.L.printf.46
.L.printf.49:
	call	putchar
	jmp	.L.printf.46
.L.printf.23:
	movl	$37, %edi
.L.printf.18:
	call	putchar
	movq	%rbp, %r12
	addq	%rax, %rbx
.L.printf.28:
	leaq	1(%r12), %rbp
	jmp	.L.printf.17
.L.printf.50:
	addq	$88, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
