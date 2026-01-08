section	.text
global	ft_strdup
extern	_malloc

ft_strdup:
	cmp	rdi, 0
	jz	.error

.error:
	xor rax, rax

.done:
	ret
