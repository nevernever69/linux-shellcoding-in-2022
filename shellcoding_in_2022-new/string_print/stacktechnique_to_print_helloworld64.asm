global _start

_start:

	xor rax,rax
	inc rax
	xor rdi, rdi
	inc rdi	
	push 0x0a646c72
	mov rbx,0x6f77206f6c6c6568
	push rbx
	mov rsi, rsp
	xor rdx, rdx
	mov dl, 12
	syscall
	
	xor rax,rax
	add rax, 60
	xor rdi, rdi
	syscall
