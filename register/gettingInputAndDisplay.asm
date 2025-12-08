section .data
	userMsg db 'Please Enter a number: '  , 0
	lenuserMsg equ $ - userMsg

	dispMsg db 'You entered: ' , 0
	lendisp equ $ - dispMsg

section .bss 
	input_buf resb 32 ; buffer to store user input (max 31 bytes + optional newline)

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
	mov ecx , input_buf ; Storing Variable
	mov edx , 31 ; Len of disp variable
	int 0x80 ; for init the sys_read()
	mov esi , eax ; save bytes_read in esi  for later use
	;Now display the output

	mov eax , 4 
	mov ebx , 1
	mov ecx , dispMsg
	mov edx , lendisp
	int 0x80
	
	; To Display the saved value from esi 
	mov eax , 4 ; sys_call(write())
	mov ebx , 1 ; 1 => print on the screen stdout
	mov ecx , input_buf
	mov edx , esi
	int 0x80

	;Exit 
	mov eax , 1 ; sys_exit()
	xor ebx , ebx
	int 0x80

	 
