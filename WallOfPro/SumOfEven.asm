section .data
	sum dq 0
	i dq 0

section .text
	global _start

_start:
	mov rcx , 10
	mov rax , 0

loop_start:
	cmp rcx , 10
	jg loop_end
	
	mov [i] , rcx

	mov rbx , i % 2
		
	cmp rbx , 0
	add rax , rcx

	inc rcx

loop_end:
	mov [sum] , rax
	
	mov rax , 60
	xor rdi , rdi
	syscall 
