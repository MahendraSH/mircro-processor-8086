.model small
.data
odd db ?
eve db ?
n1 db 23h
.code
mov ax, @data
mov ds, ax
mov al, n1
test al, 01
jz label1
mov odd, 01
jmp stop
label1: mov eve, 01
stop:   mov ah, 4ch
        int 21h
end
