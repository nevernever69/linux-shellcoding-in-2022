global _start


_start:
	
	jmp code
	name: db "hello"
	code:	
	xor eax, eax	
	inc eax
	xor rdi, rdi	
	inc edi
	lea rsi, [rel name]
	xor rdx, rdx	
	mov dl, 5
	syscall
	
	xor rax, rax
	add rax, 60
	xor rdi, rdi
	syscall
	
