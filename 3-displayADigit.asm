section .data
    digit db 0,10

section .text
    global _start:

_start:
    mov rax, 6
    mov rbx, 2
    div rbx     ;divides rax by rbx
    call _printRAXdigit

    mov rax, 60
    mov rdi, 0
    syscall

_printRAXdigit:
    add rax, 48 
    mov [digit], al
    mov rax, 01
    mov rdi, 01
    mov rsi, digit
    mov rdx, 2
    syscall
    ret

