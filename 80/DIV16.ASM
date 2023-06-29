.model small
.data
quo dw ?
rem dw ?
.code
mov ax, 4445h
mov bx, 0002h
mov dx, 0
div bx
mov quo, ax
mov rem, dx
mov ah, 4ch
int 21h
end
