global _start
section .data
    small db 50
    large dw 0
section .text
_start:
    movzx ax, byte [small]
    mov word [large], ax

    mov rax, 60
    mov rdi, 0
    syscall
