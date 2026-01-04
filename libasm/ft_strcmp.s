section	.text
global	ft_strcmp

ft_strcmp:
	mov	rcx, 0	

.loop:
	mov	al, byte [rdi + rcx]
	mov	cl, byte [rsi + rcx]
	inc	rcx
	jmp	.loop

.done:
	sub	al, cl
	mov	rax, al
	ret
