global _start
section .data
    dLeft   db  90
    dRight  db  70
    ansVar  db  0
section .text
_start:
    mov al, byte [dLeft]
    cmp al, byte [dRight] ; compare dLeft : dRight
    jge doSection
    ; else {ansVar = 88}
    mov byte [ansVar], 88
    jmp last
doSection:
    ; if true do ansVar = 55
    mov byte [ansVar], 55 
last:
    mov rax, 60
    mov rdi, 0
    syscall