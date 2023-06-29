.model small
.code
mov bh, 0
mov ah, 02h
mov dh, 12
mov dl, 40
int 10h
mov ah, 4ch
int 21h
end
