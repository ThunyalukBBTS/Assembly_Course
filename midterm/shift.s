global _start
section .data
    mydata  db  0x11

section .text
_start:
    mov al, byte [mydata]
    shl al, 1
    
    mov rax, 60
    mov rdi, 0
    syscall