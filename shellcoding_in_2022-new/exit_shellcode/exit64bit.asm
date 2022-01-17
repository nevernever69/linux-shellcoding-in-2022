global _start


section .text

_start:
	xor rax, rax 
	add rax, 60 ;don't put h with it	
	xor rdi, rdi 
	inc rdi ;exited with return 1
	syscall
	
