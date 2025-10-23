; JA / JNBE → Jump if Above
section .data
    str_above db "Hello, this is Laureen Ndanu, Admission Number 167075",10,0
    name_len equ $ - str_above
    str_not_above db "AX <= BX (Not Above)",10,0

section .text
    global _start
_start:
    mov ax, 7
    mov bx, 3
    cmp ax, bx
    ja above

    mov ecx, str_not_above
    jmp print

above:
    mov ecx, str_above

print:
    mov eax,4
    mov ebx,1
    mov edx, name_len
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
