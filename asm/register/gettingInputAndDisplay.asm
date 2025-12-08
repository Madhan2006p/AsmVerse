section .data
	userMsg db 'Please Enter a number: ' 
	lenuserMsg equ $ - userMsg
	dispMsg db 'You entered: '
	lendisp equ $ - userMsg

section .text
	
	global _start

_start:
	mov eax , 4 ; syscall (sys_write())
	mov ebx , 1 ; 1 => to print on screen stdout
	mov ecx , userMsg ; pointer to userMsg
	mov edx , lenuserMsg ; to loop through
	int 0x80 ; This is responsible for displaying Enter the number 

	;Read and store the user input 
	
	mov eax , 3 ; syscall (sys_read())
	mov ebx , 0 ; 0 => stdin (get input from keyborad)
	mov ecx , dispMsg ; Storing Variable
	mov edx , lendisp ; Len of disp variable
	int 0x80 ; for init the sys_read()

	;Now display the output

	mov eax , 4 
	mov ebx , 1
	mov ecx , dispMsg
	mov edx , lendisp
	int 0x80

	 
