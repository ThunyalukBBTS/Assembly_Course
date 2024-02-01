global _start
; 653040128-1 Thunyaluk Sasiwarinkul

section .data
; initalize m and y variable
    f       db  40
    C       db  0
    C_rem    db  0

section .text
_start:
    mov al, byte [f]    ; set al to f var
    sub al, 32          ; al = f-32
    mov bl, 9           ; set bl to multiply operand
    mul bl              ; al = al * bl or al * 9
    mov bl, 5           ; set bl to divide operand
    div bl              ; al = al / bl or al / 5
    mov byte [C], al    ; stored result (al) into C 
    mov byte [C_rem], ah    ; stored remainder (ah) into C_rem
exit:
    mov rax, 60 
    mov rdi, 0
    syscall