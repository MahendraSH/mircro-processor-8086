.model small
.stack 100
.data
que dw ?
rem dw ?
.code
mov ax,@data
mov ds,ax
mov ax,25
mov bx,100

div bx
mov rem ,dx
mov que , ax
mov ah,4ch
int 21h
end

