global _start


_start:


	xor eax, eax
	add al, 4
	xor ebx, ebx
	inc ebx
	push 0x0a646c72
	xor edi, edi
	mov edi, 0x6f77206f
	push edi
	xor esi, esi
	mov esi, 0x6c6c6568
	push esi
	xor ecx, ecx
	mov ecx, esp
	xor edx, edx
	mov dl, 12
	int 80h

	xor eax, eax
	inc eax
	xor ebx, ebx
	int 80h
