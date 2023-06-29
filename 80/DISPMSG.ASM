.model small
.data
msg db "hello$"
.code
mov ax, @data
mov ds, ax
mov dh, 0
mov ah, 02h
mov dh, 12
mov dl, 30
int 10h
lea dx, msg
mov ah, 09h
int 21h
mov ah, 4ch
int 21h
end
