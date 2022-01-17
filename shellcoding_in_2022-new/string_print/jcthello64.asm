global _start


_start:
	
	jmp strings
	
	
code:	
	
	xor rax, rax
	inc rax	
	xor rdi, rdi
	inc rdi
	pop rsi
	xor rdx, rdx
	mov  dl, 5
	syscall
	
	xor rax, rax
	add rax, 60
	xor ebx, ebx
	syscall
strings:
	call code
	msg: db "hello"
