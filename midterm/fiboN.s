global _start
section .data
    n     dw    2
    fNumA dw    0
    fNumB dw    1
    total dw    0
section .text
_start:
    mov cx, word [n]
    cmp cx, 0
    je baseCase0
    cmp cx, 1
    je baseCase1
    mov bx, 2
fiboLoop:
    mov ax, word [fNumA]
    mov dx, word [fNumB]
    add ax, word [fNumB]
    mov word [fNumA], dx
    mov word [fNumB], ax
    mov word [total], ax
    inc bx
    loop fiboLoop
    jmp last
baseCase0:
    mov word [total], 0
    jmp last
baseCase1:
    mov word [total], 1
    jmp last
last:
    mov rax, 60
    mov rdi, 0
    syscall
