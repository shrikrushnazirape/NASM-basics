section .text
    global _start

section .bss
    digitSpace resb 100
    digitSpacepos resb 8

_start:
    mov rax, 123
    call _printRAXDigit

    mov rax, 60
    mov rdi, 0
    syscall

_printRAXDigit:
    mov rcx, digitSpace
    mov rbx, 10
    mov [rcx]