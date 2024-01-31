global _start

section .data
    voltage dw  500
    current dw  500
    alVar   db  0
    ahVar   db  0
    axVar   dw  0
    axMVar   dw  0
    power   dw  0

section .text
_start:
    mov ax, word [voltage] ; set ax = voltage var
    mul word [current]      ; ax = ax * current
    mov byte [ahVar], ah
    mov byte [alVar], al
    mov byte [axMVar], al
    mov byte [axMVar+1], ah

    mov word [power], ax

    mov rax, 60
    mov rdi, 0
    syscall