//first install gcc-multilib
//and then compiled with nasm -f elf32 filename.asm -o filename.o
//and link it with linker ld -m elf_i386 filename.o -o filename
//run it by gcc -m32 filename	
#include<stdio.h>
#include<string.h>
#include<sys/mman.h>

unsigned char code[]=enter you compiled 32bit machine code here

int main(){
  printf("Shellcode length: %d\n", strlen(code));
  int r =  mprotect((void *)((int)code & ~4095),  4096, PROT_READ | PROT_WRITE|PROT_EXEC);
  printf("mprotect: %d\n",r);
  int (*ret)() = (int(*)())code;
  return ret();
}

