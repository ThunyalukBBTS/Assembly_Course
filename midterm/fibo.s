global _start
section .data
    n   db  0
    ans db  0
    total db 0

section .text
_start:
    mov al, byte [n]
    cmp al, 0
    jg  base_case_0
    cmp al, 1
    jg  base_case_1

base_case_0:
    mov dl, 0
    jmp store_data

base_case_1:
    mov dl, 1
    jmp store_data

store_data:
    mov byte [total], dl
    jmp last

last: 
    mov rax, 60
    mov rdi, 0
    syscall