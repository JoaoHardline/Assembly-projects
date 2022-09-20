; para compilar: nasm -f elf64 helloworld.asm
; para linkeditar (transformar em ling de maquina pra um executavel): ld -s -o helloworld helloworld.o
section .data

    msg db 'Hello World!', 0xA
    tam equ $- msg

section .text

global _start

_start:

    mov EAX, 0x4 ; quero fazer uma saida
    mov EBX, 0x1 ; na saida padrao
    mov ECX, msg ; essa eh a msg
    mov EDX, tam ; esse e o tamanho dela
    int 0x80 ; executa

    mov EAX, 0x1 ; SO estou terminando o programa
    mov EBX, 0x0 ; SO o valor de retorno eh 0
    int 0x80  