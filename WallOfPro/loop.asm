section .data
	sum dq 0 ; int sum = 0
section .text
	global _start


_start:
	mov rcx , 1 ; int i = 1
	mov rax , 0 ; sum = 0

loop_start:
	cmp rcx , 5 ; i <= 5
	jg loop_end ; if i > 5 ; exit loop

	add rax , rcx ; sum += i
	inc rcx ; i ++

	jmp loop_start ; repeat loop

loop_end:
	mov [sum] , rax  ; store sum in memory

	;exit program 
	mov rax , 60
	xor rdi , rdi
	syscall 
