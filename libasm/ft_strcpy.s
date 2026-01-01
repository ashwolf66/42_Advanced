section	.text
global	ft_strcpy

ft_strcpy:
	cmp	rsi, 0
	jz	.done
	mov	rcx, 0

.loop:
	mov	al, byte [rsi + rcx]
	mov	byte [rdi + rcx], al
	test	al, al
	jz	.done
	inc	rcx
	jmp	.loop

.done:
	mov	rax, rdi
	ret
