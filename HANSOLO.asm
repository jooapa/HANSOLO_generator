section .data
    hansolo db 'HANSOLO', 0

section .text
    global _start

_start:
    mov ecx, 1000000 ; set loop counter to 1,000,000
    mov ebx, 1 ; set file descriptor to stdout
    mov edx, 7 ; set number of bytes to write to 7 (length of 'HANSOLO')
    mov esi, hansolo ; set source string to 'HANSOLO'

write_loop:
    push ecx ; save loop counter on the stack
    push esi ; save source string on the stack
    push edx ; save number of bytes to write on the stack
    push ebx ; save file descriptor on the stack
    mov eax, 4 ; set system call to write
    int 0x80 ; call kernel
    add esp, 16 ; clean up the stack
    pop esi ; restore source string from the stack
    pop ecx ; restore loop counter from the stack
    dec ecx ; decrement loop counter
    jnz write_loop ; jump to write_loop if loop counter is not zero

    mov eax, 1 ; set system call to exit
    xor ebx, ebx ; set exit status to 0
    int 0x80 ; call kernel
