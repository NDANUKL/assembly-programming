; JAE / JNB → Jump if Above or Equal

section .data
    str_ae db "Hello, This is Laureen Ndanu, Admission Number 167075",10,0
    name_len equ $ - str_ae
    str_below db "AX < BX (Below)",10,0

section .text
    global _start
_start:
    mov ax,5
    mov bx,5
    cmp ax,bx
    jae above_equal

    mov ecx, str_below
    jmp print

above_equal:
    mov ecx, str_ae

print:
    mov eax,4
    mov ebx,1
    mov edx, name_len
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
