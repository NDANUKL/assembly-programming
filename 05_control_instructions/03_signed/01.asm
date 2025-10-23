; JG / JNLE → Jump if Greater
section .data
    msg_greater db "Hello, This is Laureen Ndanu, Admission Number 167075",10,0
    name_len equ $ - msg_greater
    msg_not_greater db "AX <= BX (Not Greater)",10,0

section .text
    global _start
_start:
    mov ax,7
    mov bx,3
    cmp ax,bx
    jg greater

    mov ecx, msg_not_greater
    jmp print

greater:
    mov ecx, msg_greater

print:
    mov eax,4
    mov ebx,1
    mov edx, name_len
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
