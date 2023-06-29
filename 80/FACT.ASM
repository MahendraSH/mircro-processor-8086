.model small
.data
n1 db 5
fac dw 1
.code
mov ax, @data
mov ds, ax

mov al, fac
back:   mul n1
        dec n1
        cmp n1, 0
        JNE back
mov ah, 4ch
int 21h
end
