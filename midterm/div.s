global _start
section .data
    wNumA   dw  4321
    wNumB   dw  1234
    wAns2   dw  0
    wRem2   dw  0
section .text
_start:
    ; wAns2 = wNumA / wNumB (unsigned)
	mov     dx, 0
	mov     ax, word [wNumA]
	div     word [wNumB]        ; ax = dx:ax / wNumB
	mov     word [wAns2], ax    ; result
	mov     word [wRem2], dx    ; remainder
last: 
    mov     rax, 60
    mov     rdi, 0
    syscall