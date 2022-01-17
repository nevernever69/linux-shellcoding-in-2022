import ctypes, mmap, sys

# Convert string to bytes object. Differs between Python2 and Python3
if sys.version_info >= (3, 0):
    def b(string, charset='latin-1'):
        if isinstance(string, bytes) and not isinstance(string, str):
            return (string)
        else:
            return bytes(string, charset)
else:
    def b(string):
        return bytes(string)

def create_shellcode_function (shellcode_str):
    shellcode_bytes = b(shellcode_str)

    # Allocate memory with a RWX private anonymous mmap
    exec_mem = mmap.mmap(-1, len(shellcode_bytes),
                         prot = mmap.PROT_READ | mmap.PROT_WRITE | mmap.PROT_EXEC,
                         flags = mmap.MAP_ANONYMOUS | mmap.MAP_PRIVATE)

    # Copy shellcode from bytes object to executable memory
    exec_mem.write(shellcode_bytes)

    # Cast the memory to a C function object
    ctypes_buffer = ctypes.c_int.from_buffer(exec_mem)
    function = ctypes.CFUNCTYPE( ctypes.c_int64 )(ctypes.addressof(ctypes_buffer))
    function._avoid_gc_for_mmap = exec_mem

    # Return pointer to shell code function in executable memory
    return function

# linux machine code
shellcode = put you machine code year

# Create a pointer to our shell code and execute it with no parameters
create_shellcode_function(shellcode)()

