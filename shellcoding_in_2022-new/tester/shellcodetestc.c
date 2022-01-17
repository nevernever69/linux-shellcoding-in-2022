#include <unistd.h>
#include <sys/mman.h>
#include <string.h>
int main(int argc, char **argv) {
        char *code= put you shellcode here;

	
	int size = strlen(code);

        void *mem = mmap(NULL, size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
        memcpy(mem, code, size);
        mprotect(mem, size, PROT_READ | PROT_EXEC);
        void (*fn)(void) = mem;
        fn();
}
