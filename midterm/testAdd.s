global _start
section .data
    aVar    db  89
    bVar    db  90
    ansVar  db  0
section .text
_start:
    mov     al, byte [aVar] ; reg al = aVar
    sub     al, byte [bVar] ; al = al + bVar
    mov     byte [ansVar], al   ; ansVar = aVar + bVar
last:
    mov     rax, 60
    mov     rdi, 0
    syscall