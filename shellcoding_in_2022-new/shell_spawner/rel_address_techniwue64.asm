;finally it works just terminate a /bin/sh string at the end(done that) just works fine
global _start


_start:

	jmp code
	msg: db '/bin/sh',0
	mov[rel msg],dil

code:
	xor  rax, rax
	mov al, 0x3b	
	xor rdi, rdi
	
	
	lea rdi, [rel msg]
	
	xor rsi,rsi
	xor rdx, rdx
	syscall
	
	xor rax, rax
	inc  rax
	xor rdi, rdi
	syscall
