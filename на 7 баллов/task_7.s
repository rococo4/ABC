.file "task.c"
 .intel_syntax noprefix
 .text
 .globl Task
 .type Task, @function
Task:
 endbr64
 push rbp
 mov rbp, rsp
 mov QWORD PTR -24[rbp], rdi # -24 - массив A. Из rdi передается в массив A.
 mov DWORD PTR -28[rbp], esi # -28 - size. Из esi передается в B.
 mov QWORD PTR -40[rbp], rdx # -40 - массив B. Из rdx передается в массив B.
 mov DWORD PTR -32[rbp], ecx # -32 - X. Из ecx в передается в X.
 mov DWORD PTR -4[rbp], 0 # -4 - counter
 mov r15d, 0 # r15d - i
 jmp .L2
.L4:
 mov eax, r15d
 lea rdx, 0[0+rax*4]
 mov rax, QWORD PTR -24[rbp]
 add rax, rdx
 mov eax, DWORD PTR [rax]
 cdq
 idiv DWORD PTR -32[rbp]
 mov eax, edx
 test eax, eax
 jne .L3
 mov eax, r15d
 lea rdx, 0[0+rax*4]
 mov rax, QWORD PTR -24[rbp]
 lea rcx, [rdx+rax]
 mov eax, DWORD PTR -4[rbp]
 lea edx, 1[rax]
 mov DWORD PTR -4[rbp], edx
 lea rdx, 0[0+rax*4]
 mov rax, QWORD PTR -40[rbp]
 add rdx, rax
 mov eax, DWORD PTR [rcx]
 mov DWORD PTR [rdx], eax
.L3:
 add r15d, 1
.L2:
 mov eax, r15d
 cmp eax, DWORD PTR -28[rbp]
 jl .L4
 mov eax, DWORD PTR -4[rbp] # return counter.
 pop rbp
 ret
 .size Task, .-Task
 .ident "GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
 .section .note.GNU-stack,"",@progbits
 .section .note.gnu.property,"a"
 .align 8
 .long 1f - 0f
 .long 4f - 1f
 .long 5
0:
 .string "GNU"
1:
 .align 8
 .long 0xc0000002
 .long 3f - 2f
2:
 .long 0x3
3:
 .align 8
4:
