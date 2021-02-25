section .data
    digit db 0,10

section .text
    global _start:

_start:
    push 4
    push 8
    push 3
    pop rax
    call _printRAXdigit
    pop rax
    call _printRAXdigit
    pop rax
    call _printRAXdigit
    
; the poped value is stored in rax resistor

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

