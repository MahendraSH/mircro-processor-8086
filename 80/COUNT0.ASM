.model small
.data
num dw 0203h
count1 db 0
count0 db 0
.code
mov ax, @data
mov ds, ax

mov ax, num
mov cx, 16

back:   ror ax, 1
        jnc l1
        inc count1
        jmp next

l1:     inc count0
next:   loop back
mov ah, 4ch
int 21h
end
