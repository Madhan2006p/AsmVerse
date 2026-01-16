section .data 
	sum dq 0

section .text
	global _start

_start: 
	mov rcx , 1
	mov rax , 1

loop_start:
	cmp rcx , 5
	jg loop_end

	mul rax , rcx
	inc rcx

	jmp loop_start

loop_end:
	mov [sum] , rax 
	
	mov rax , 60
	xor rdi , rdi 
	syscall
