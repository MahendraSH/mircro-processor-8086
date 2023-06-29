.model small
.stack
.data
arr db 5, 3, 1, 4, 7
len db $-arr
sma db ?
.code
mov ax, @data
mov ds, ax

lea si, arr
mov cx, len
mov bl, [si]

JMP l1

store:  mov bl, [si]        
        inc si
        dec cx
        
l1:     cmp [si], bl
        JNG store
        inc si
        dec cx
        loop l1

mov ah, 4ch
int 21h
end