global _start

section .data
    height  db  12
    width   db  15
    R_area  dw  0
    radius  db  7
    C_area  dw  0
    C2_area dw  0

section .text
_start:
;   R_area = height * width
    mov al, byte [height]
    mul byte [width]
    mov word [R_area], ax

;   C_area = pi*r^2 note : carry make loss
;   pi = 22/7
    mov al, 22
    mov ah, 0
    mov bx, 7
    div bx
    mov word [C_area], ax
;   calculate r^2
    mov al, byte [radius]
    mul al
;   calculate pi*r^2
    mov ah, 0
    mul word [C_area]
    mov word [C_area], ax

;   ------
;   way 2: (r*r) * 22 / 7
    mov al, byte [radius]
    mul al
    mov bl, 22
    mul bl
    mov bx, 7
    div bx
    mov word [C2_area], ax