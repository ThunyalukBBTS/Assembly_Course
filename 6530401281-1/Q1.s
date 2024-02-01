global _start
; 653040128-1 Thunyaluk Sasiwarinkul

section .data
; initalize m and y variable
    m   dw  3
    y   dw  0
    term2 dw 2
    term3 dw 4

section .text
_start:
    mov ax, word [m] ; set ax to m (3)
    mul word [m] ; m*m = m^2
    ; store m^2 in bx (term 2)
    mov bx, ax
    mul word [m] ; m^2 * m = m^3
    mov cx, ax ; stored ax to cx
    ; give cx is result
    ; consider at term2 : 2*m^2
    mov ax, bx ; set ax to bx (m^2)
    mul word [term2]   ; term 2 : 2*m^2
    add cx, ax ; add term 2
    ; consider at term3 : 4*m
    mov ax, word [m]
    mul word [term3]
    sub cx, ax
    ; consider at term4 : +1
    inc cx
    mov word [y], cx ; stored result to y

exit:
    mov rax, 60 
    mov rdi, 0
    syscall