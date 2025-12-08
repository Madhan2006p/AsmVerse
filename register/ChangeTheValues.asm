section .data
	name db 'Madhan'

section .text

	global _start

_start:
	; Write the Name 'Madhan'
	
	mov eax , 4 ; sys_call(Write) 
	mov ebx , 1 ; Print on the screen stdout
	mov ecx , name ; pointer
	mov edx , 6 ; size
	int 0x80

	mov [name] , dword 'Eren' ; Changed Value

	;Print The Changed Value
	
	mov eax , 4 ; sys_call(Write)
	mov ebx , 1 ; Print on the Screen stdout
	mov ecx , name ; pointer
	mov edx , 4 ; size
	int 0x80

	mov eax , 1 ; sys_call (Exit)
	int 0x80
