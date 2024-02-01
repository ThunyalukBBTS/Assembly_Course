global _start
; 653040128-1 Thunyaluk Sasiwarinkul

section .data
; initalize m and y variable
    n   db  100
    Sum dw  0

section .text
_start:
    movzx ax, byte [n]
    ; check if n == 0 { Sum = 0 }
    cmp ax, 0
    je  returnZero
    ; check if n == 1 { Sum = 1 }
    cmp ax, 1
    je  returnOne
    ; else { bx = 1, cx = 2 }
    mov bx, 1
    mov cx, 2
myLoop:
    ; if cx mod 2 == 0 { addN }
    movzx ax, byte [n]
    cmp cx, ax
    ja  storeData
    ; clear ax
    mov ax, 0
    mov al, cl
    mov dl, 2
    div dl
    cmp ah, 0       ; cx mod 2 == 0
    je  addN
    ; else { subN }
    jmp subN
addN:
    add bx, cx
    inc cx
    jmp myLoop  ; back to mainloop
subN:
    sub bx, cx
    inc cx
    jmp myLoop  ; back to mainloop

storeData:
    ; stored result in Sum variable
    mov word [Sum], bx
    jmp exit

returnOne:
    mov word [Sum], 1
    jmp exit
returnZero:
    mov word [Sum], 0
    jmp exit
exit:
    mov rax, 60 
    mov rdi, 0
    syscall