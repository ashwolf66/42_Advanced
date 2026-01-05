section .text
global ft_strcmp

ft_strcmp:
    mov rcx, 0
	
.loop:
    movzx rax, byte [rdi + rcx]
    movzx rdx, byte [rsi + rcx]
    
    cmp rax, rdx
    jne .done
    
    test rax, rax
    jz .done
    
    inc rcx
    jmp .loop
    
.done:
    sub rax, rdx
    ret
