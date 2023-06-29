.model small
.data
arr db 1, 2, 1, 3, 4, 4, 5
key db 1
len db $-arr
count db 0
.code
mov ax, @data
mov ds, ax
mov al, key
mov cl, len
lea bx, arr
back:
cmp al, [bx]
JNE next
INC count
next:
INC bx
loop back
mov ah, 4ch
int 21h
end
