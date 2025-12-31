section	.txt
global	ft_strlen

ft_strlen:
	mov	rax, 0
	mov	rbx, rdi

.loop:
	cmp	byte [rbx + rax], 0
	je	.done
	inc	rax
	jmp	.loop

.done:
	ret
