
;failed due to in x86 architecture rel technique din work

global _start


_start:
	
	jmp code
	name: db "hello"
	len: equ $-name
	
code:
	xor eax, eax
	mov al, 4	
	xor ebx, ebx
	mov bl, 1
	lea ecx, [rel name]
	xor edx, edx
	mov dl, name	
	int 80h
	
	xor eax, eax
	mov al, 1
	xor ebx, ebx
	int 80h
	
