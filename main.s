	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"input.txt"
.LC2:
	.string	"%d"
.LC3:
	.string	"w"
.LC4:
	.string	"output.txt"
.LC5:
	.string	"%d "
.LC6:
	.string	" Enter X:"
	.align 8
.LC7:
	.string	"Input length (0 < length <= %d): "
.LC8:
	.string	"Incorrect length = %d\n"
.LC9:
	.string	"A[%d] =  "
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 232
	mov	DWORD PTR -228[rbp], edi
	mov	QWORD PTR -240[rbp], rsi
	cmp	DWORD PTR -228[rbp], 3
	jne	.L2
	mov	rax, rsp
	mov	rbx, rax
	mov	rax, QWORD PTR -240[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	atoi@PLT
	mov	DWORD PTR -136[rbp], eax
	mov	rax, QWORD PTR -240[rbp]
	add	rax, 16
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	atoi@PLT
	mov	DWORD PTR -132[rbp], eax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -80[rbp], rax
	mov	eax, DWORD PTR -132[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -88[rbp], rdx
	movsx	rdx, eax
	mov	QWORD PTR -256[rbp], rdx
	mov	QWORD PTR -248[rbp], 0
	movsx	rdx, eax
	mov	QWORD PTR -272[rbp], rdx
	mov	QWORD PTR -264[rbp], 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L3:
	cmp	rsp, rdx
	je	.L4
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L3
.L4:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L5
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L5:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -96[rbp], rax
	mov	eax, DWORD PTR -132[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -104[rbp], rdx
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
.L6:
	cmp	rsp, rdx
	je	.L7
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L6
.L7:
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L8
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
.L8:
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -112[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L9
.L10:
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -96[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -80[rbp]
	lea	rcx, .LC2[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	add	DWORD PTR -52[rbp], 1
.L9:
	mov	eax, DWORD PTR -132[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jl	.L10
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	fclose@PLT
	mov	ecx, DWORD PTR -136[rbp]
	mov	esi, DWORD PTR -132[rbp]
	mov	rdx, QWORD PTR -112[rbp]
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	call	Task@PLT
	mov	DWORD PTR -116[rbp], eax
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -128[rbp], rax
	mov	DWORD PTR -56[rbp], 0
	jmp	.L11
.L12:
	mov	rax, QWORD PTR -112[rbp]
	mov	edx, DWORD PTR -56[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -128[rbp]
	lea	rcx, .LC5[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	fprintf@PLT
	add	DWORD PTR -56[rbp], 1
.L11:
	mov	eax, DWORD PTR -56[rbp]
	cmp	eax, DWORD PTR -116[rbp]
	jl	.L12
	mov	rax, QWORD PTR -128[rbp]
	mov	rdi, rax
	call	fclose@PLT
	mov	eax, 0
	mov	rsp, rbx
	jmp	.L20
.L2:
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -136[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	esi, 10
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -132[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -132[rbp]
	test	eax, eax
	jle	.L14
	mov	eax, DWORD PTR -132[rbp]
	cmp	eax, 10
	jle	.L15
.L14:
	mov	eax, DWORD PTR -132[rbp]
	mov	esi, eax
	lea	rax, .LC8[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 1
	jmp	.L20
.L15:
	mov	DWORD PTR -60[rbp], 0
	jmp	.L16
.L17:
	mov	eax, DWORD PTR -60[rbp]
	mov	esi, eax
	lea	rax, .LC9[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -176[rbp]
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -60[rbp], 1
.L16:
	mov	eax, DWORD PTR -132[rbp]
	cmp	DWORD PTR -60[rbp], eax
	jl	.L17
	mov	ecx, DWORD PTR -136[rbp]
	mov	esi, DWORD PTR -132[rbp]
	lea	rdx, -224[rbp]
	lea	rax, -176[rbp]
	mov	rdi, rax
	call	Task@PLT
	mov	DWORD PTR -68[rbp], eax
	mov	DWORD PTR -64[rbp], 0
	jmp	.L18
.L19:
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	mov	eax, DWORD PTR -224[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -64[rbp], 1
.L18:
	mov	eax, DWORD PTR -64[rbp]
	cmp	eax, DWORD PTR -68[rbp]
	jl	.L19
	mov	eax, 0
.L20:
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
