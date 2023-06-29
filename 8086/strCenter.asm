.model small
.stack
.data 
msg db "hello$"
.code 
mov ax,@data
mov ds,ax

mov ah,02h
mov bh,00
mov dh,12
mov dh,40
int 10h
lea dx,msg
mov ah,9
int 21h

mov ah,4ch
int 21h
end

