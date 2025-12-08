section .data
	msg db "Madhan" , 0xa
	len equ $ - msg

section .text
	global _start

_start:
	mov eax , 4 ; 4 => tell that sys_print (Sys_call)
	mov ebx , 1 ; 1 => tell on screen
	mov ecx , msg ; pointer to msg
	mov edx , len ; loop need (len of the message)
	int 0x80 ; init the Sys_Call (sys_print())

	mov eax , 1 ; 1 => exit() Sys_Call
	mov ebx , 0 ; exit code = 0 , if we combine the prev and current line => We get exit(0)

	int 0x80 ; init the exit(0) Sys_Call
