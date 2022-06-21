; nasm -f win32 hello.asm -o hello.o
; linkeditar -> transformar *.o (linguagem de máquina) para executável
;   ld hello.o -o hello.exe
; nasm hello.asm -o hello.o -f elf32
; ld hello.o -o hello -m i386pe


section .data
    msg db 'Hello World!'
    tam equ $- msg

section .text

global _start

_start: 
    mov eax, 0x4 ; vai ser enviado alguma coisa para a saída padrão
    mov ebx, 0x1
    mov ecx, msg
    mov edx, tam
    int 0x80

    ; mov-> destino, origem - base hexa
    mov eax, 0x1 ; S.O. estou terminando o programa
    mov ebx, 0x0 ; SO o valor de retorno é 0
    int 0x80 ; SO recupera as movimentações e executa