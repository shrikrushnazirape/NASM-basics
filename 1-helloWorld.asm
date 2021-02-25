section .data
    text db "Hello World!"

section .text
    global _start

_start:
    mov rax, 01
    mov rdi, 01
    mov rsi, text   
    mov rdx, 14
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
