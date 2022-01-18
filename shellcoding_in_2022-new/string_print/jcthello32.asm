global _start


_start:
	jmp string
	
code:	xor eax, eax
	mov al, 4
	xor ebx,ebx
	inc ebx
	xor ecx, ecx
	pop ecx
	xor edx, edx
	mov dl, 5
	int 80h
	
	xor eax, eax
	inc eax
	xor ebx, ebx
	int 80h
	
string:
	call code	
	msg: db "hello"
