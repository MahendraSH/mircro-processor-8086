data segment
a dw 4445h
b dw 0002h
quo dw ?
rem dw ?
data ends
code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
mov ax, a
mov bx, b
mov dx, 0
div bx
mov quo, ax
mov rem, dx
mov ah, 4ch
int 21h
code ends
end start
