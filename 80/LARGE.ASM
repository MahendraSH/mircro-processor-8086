.model small
.data
n1 db 08h
n2 db 03h
lar db ?
.code
mov ax, @data
mov ds, ax

mov al, n1
mov bl, n2
cmp al, bl
JG label1
mov lar, bl
JMP stop
label1: mov lar, al
stop:   mov ah, 4ch
        int 21h
        end
