; JB / JNAE → Jump if Below

section .data
    str_below     db "Hello, This is Laureen Ndanu, Admission Number 167075",10,0
    name_len equ $ - str_below
    str_not_below db "AX >= BX (Not Below)",10,0

section .text
    global _start
_start:
    mov ax,2
    mov bx,5
    cmp ax,bx
    jb below

    mov ecx, str_not_below
    jmp print

below:
    mov ecx, str_below

print:
    mov eax,4
    mov ebx,1
    mov edx, name_len
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
