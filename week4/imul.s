global	_start
section	.data
	wNumA	dd	1200
	wNumB	dd	-2000
	wAns1	dd	0
	wAns2	dd	0
	dNumA	dd	42000
	dNumB	dd	-13000
	dAns1	dd	0
	dAns2	dd	0
	qNumA	dq	120000
	qNumB	dq	-230000
	qAns1	dq	0
	qAns2	dq	0

section	.text
_start:
	; wAns1 = wNumA * -13 = C310h
	mov		ax, word [wNumA]
	imul	ax, -13 ; result in ax
	mov 	word [wAns1], ax

	; wAns2 = wNumA * wNumB = -2400000 = FFDB6100h
	mov		eax, dword [wNumA]
	imul	eax, dword [wNumB] ; result in ax
	mov		dword [wAns2], eax

	; dAns1 = dNum1 * 113 = 4746000 = 486B10h
	mov 	eax, dword [dNumA]
	imul	eax, 113 ; result in eax
	mov	dword [dAns1], eax

	; dAns2 = dNumA * dNumB = -543000000 = DF74B380h
	mov	eax, dword [dNumA]
	imul	eax, dword [dNumB] ; result in eax
	mov	dword [dAns2], eax

	; qAns1 = qNumA * 7096 = 851520000 = 32C12A00h
	mov	rax, qword [qNumA]
	imul	rax, 7096 ; result in rax
	mov	qword [qAns1], rax

	; qAns2 = qNumA * qNumB = -27600000000 = FFFFFFF992E96C00h
	mov	rax, qword [qNumA]
	imul	rax, qword [qNumB] ; result in rax
	mov	qword [qAns2], rax


	mov	rax, 60
	mov	rdi, 0
	syscall



