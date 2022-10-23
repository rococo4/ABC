.file "main.c"
 .intel_syntax noprefix
 .text
 .section .rodata
.LC0:
 .string "r"
.LC1:
 .string "input.txt"
.LC2:
 .string "%d"
.LC3:
 .string "w"
.LC4:
 .string "output.txt"
.LC5:
 .string "%d "
.LC6:
 .string " Enter X:"
 .align 8
.LC7:
 .string "Input length (0 < length <= %d): "
.LC8:
 .string "Incorrect length = %d\n"
.LC9:
 .string "A[%d] =  "
 .text
 .globl main
 .type main, @function
main:
 endbr64
 push rbp
 mov rbp, rsp
 push r15
 push r14
 push r13
 push r12
 push rbx
 sub rsp, 232
 mov DWORD PTR -228[rbp], edi # -228 - argc
 mov QWORD PTR -240[rbp], rsi # -240 - argv
 cmp DWORD PTR -228[rbp], 3  # -228 - argc
 jne .L2
 mov rbx, rax
 mov rax, QWORD PTR -240[rbp] # -240 - argv
 add rax, 8
 mov rax, QWORD PTR [rax]
 mov rdi, rax
 call atoi@PLT
 mov DWORD PTR -136[rbp], eax # -136 - X
 mov rax, QWORD PTR -240[rbp] # -240 - argv
 add rax, 16
 mov rdi, QWORD PTR [rax]
 call atoi@PLT
 mov DWORD PTR -132[rbp], eax # -132 - length
 lea rax, .LC0[rip]
 mov rsi, rax
 lea rax, .LC1[rip]
 mov rdi, rax
 call fopen@PLT
 mov QWORD PTR -80[rbp], rax # -80 - input
 mov eax, DWORD PTR -132[rbp] # -132 - length
 movsx rdx, eax
 sub rdx, 1
 mov QWORD PTR -88[rbp], rdx
 movsx rdx, eax
 mov QWORD PTR -256[rbp], rdx
 mov QWORD PTR -248[rbp], 0
 movsx rdx, eax
 mov QWORD PTR -272[rbp], rdx
 mov QWORD PTR -264[rbp], 0
 lea rdx, 0[0+rax*4]
 mov eax, 16
 sub rax, 1
 add rax, rdx
 mov esi, 16
 mov edx, 0
 div rsi
 imul rax, rax, 16
 mov rcx, rax
 and rcx, -4096
 mov rdx, rsp
 sub rdx, rcx
.L3:
 cmp rsp, rdx
 je .L4
 sub rsp, 4096
 or QWORD PTR 4088[rsp], 0
 jmp .L3
.L4:
 mov rdx, rax
 and edx, 4095
 sub rsp, rdx
 mov rdx, rax
 and edx, 4095
 test rdx, rdx
 je .L5
 and eax, 4095
 sub rax, 8
 add rax, rsp
 or QWORD PTR [rax], 0
.L5:
 mov rax, rsp
 add rax, 3
 shr rax, 2
 sal rax, 2
 mov QWORD PTR -96[rbp], rax # -96 - Массив А
 mov eax, DWORD PTR -132[rbp] # -132 - length
 movsx rdx, eax
 sub rdx, 1
 mov QWORD PTR -104[rbp], rdx
 movsx rdx, eax
 mov r14, rdx
 mov r15d, 0
 movsx rdx, eax
 mov r12, rdx
 mov r13d, 0
 lea rdx, 0[0+rax*4]
 mov eax, 16
 sub rax, 1
 add rax, rdx
 mov edi, 16
 mov edx, 0
 div rdi
 imul rax, rax, 16
 mov rcx, rax
 and rcx, -4096
 mov rdx, rsp
 sub rdx, rcx
.L6:
 cmp rsp, rdx
 je .L7
 sub rsp, 4096
 or QWORD PTR 4088[rsp], 0
 jmp .L6
.L7:
 mov rdx, rax
 and edx, 4095
 sub rsp, rdx
 mov rdx, rax
 and edx, 4095
 test rdx, rdx
 je .L8
 and eax, 4095
 sub rax, 8
 add rax, rsp
 or QWORD PTR [rax], 0
.L8:
 mov rax, rsp
 add rax, 3
 shr rax, 2
 sal rax, 2
 mov QWORD PTR -112[rbp], rax # -112 - Массив B
 mov r12d, 0 # r12d - i
 jmp .L9
.L10:
 mov eax, r12d # r12d - i
 lea rdx, 0[0+rax*4]
 mov rax, QWORD PTR -96[rbp] # -96 - Массив А
 add rdx, rax
 mov rax, QWORD PTR -80[rbp] # -80 - input
 lea rcx, .LC2[rip]
 mov rsi, rcx
 mov rdi, rax
 mov eax, 0
 call __isoc99_fscanf@PLT
 add r12d, 1 # r12d - i
.L9:
 mov eax, DWORD PTR -132[rbp] # -132 - length
 cmp r12d, eax # r12d - i
 jl .L10
 mov rax, QWORD PTR -80[rbp] # -80 - input
 mov rdi, rax
 call fclose@PLT
 mov ecx, DWORD PTR -136[rbp] # -136 - X. В функцию передается  X
 mov esi, DWORD PTR -132[rbp] # -132 - length. В функцию передается  length
 mov rdx, QWORD PTR -112[rbp] # -112 - Массив B. В функцию передается массив B.
 mov rax, QWORD PTR -96[rbp] # -96 - Массив А. В функцию передается массив  А.
 mov rdi, rax
 call Task@PLT
 mov DWORD PTR -116[rbp], eax # -116 - size_b. Передача результата выполнения функции в size_b.
 lea rax, .LC3[rip]
 mov rsi, rax
 lea rax, .LC4[rip]
 mov rdi, rax
 call fopen@PLT
 mov QWORD PTR -128[rbp], rax # -128 - output
 mov r12d, 0 # r12d - i в новом цикле
 jmp .L11
.L12:
 mov rax, QWORD PTR -112[rbp] # -112 - Массив B
 mov edx, r12d # r12d - i в новом цикле
 movsx rdx, edx
 mov edx, DWORD PTR [rax+rdx*4]
 mov rax, QWORD PTR -128[rbp] # -128 - output
 lea rcx, .LC5[rip]
 mov rsi, rcx
 mov rdi, rax
 mov eax, 0
 call fprintf@PLT
 add r12d, 1 # r12d - i в новом цикле
.L11:
 mov eax, r12d # r12d - i в новом цикле
 cmp eax, DWORD PTR -116[rbp] # -116 - size_b 
 jl .L12
 mov rax, QWORD PTR -128[rbp] # -128 - output
 mov rdi, rax
 call fclose@PLT
 mov eax, 0
 mov rsp, rbx
 jmp .L20
.L2:
 lea rax, .LC6[rip]
 mov rdi, rax
 mov eax, 0
 call printf@PLT
 lea rax, -136[rbp] # -136 - X
 mov rsi, rax
 lea rax, .LC2[rip]
 mov rdi, rax
 mov eax, 0
 call __isoc99_scanf@PLT
 mov esi, 10
 lea rax, .LC7[rip]
 mov rdi, rax
 mov eax, 0
 call printf@PLT
 lea rax, -132[rbp] # -132 - length
 mov rsi, rax
 lea rax, .LC2[rip]
 mov rdi, rax
 mov eax, 0
 call __isoc99_scanf@PLT
 mov eax, DWORD PTR -132[rbp] # -132 - length
 test eax, eax
 jle .L14
 mov eax, DWORD PTR -132[rbp] # -132 - length
 cmp eax, 10
 jle .L15
.L14:
 mov eax, DWORD PTR -132[rbp] # -132 - length
 mov esi, eax
 lea rax, .LC8[rip]
 mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 1
	jmp	.L20
.L15:
	mov	r12d, 0 # r12d - i в новом цикле 2
	jmp	.L16
.L17:
	mov	eax, r12d # r12d - i в новом цикле 2
	mov	esi, eax
	lea	rax, .LC9[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -176[rbp] # -176 - массив А после if
	mov	eax, r12d # r12d - i в новом цикле 2
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	r12d, 1 # r12d - i в новом цикле 2
.L16:
	mov	eax, DWORD PTR -132[rbp] # -132 - length
	cmp	r12d, eax # r12d - i в новом цикле 2
	jl	.L17
	mov	ecx, DWORD PTR -136[rbp] # -136 - X. В функцию передается X.
	mov	esi, DWORD PTR -132[rbp] # -132 - length. В функцию передается length.
	lea	rdx, -224[rbp] # -224 - массив B после i. В функцию передается массив B.
	lea	rax, -176[rbp] # -176 - массив А после if. В функцию передается массив A.
	mov	rdi, rax
	call	Task@PLT
	mov	DWORD PTR -68[rbp], eax # -68 - b_size. Резултат функции передается передается в b_size.
	mov	r12d, 0 # r12d - i в новом цикле 3
	jmp	.L18
.L19:
	mov	eax, r12d # r12d - i в новом цикле 3
	mov	eax, DWORD PTR -224[rbp+rax*4] # -224 - массив B после if
	mov	esi, eax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	r12d, 1 # r12d - i в новом цикле 3
.L18:
	mov	eax, r12d # r12d - i в новом цикле 3
	cmp	eax, DWORD PTR -68[rbp] # -68 - b_size
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
