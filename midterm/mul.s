global _start
section .data
    aVar    db  20
    bVar    db  30
    ansVar  dw  0

section .text
_start:
    mov     al, byte [aVar] ; al = aVar
    mul     byte [bVar] ; al = al * bVar
    mov     byte [ansVar], al ; ansVar = al
    mov     byte [ansVar+1], ah ; ansVar = ah:al
last:
    mov     rax, 60
    mov     rdi, 0
    syscall