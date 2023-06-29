.model small
.data
string db "this is a sample$"
.code
mov ax, @data
mov ds, ax
lea dx, string
mov ah, 09h
int 21h
mov ah, 4ch
int 21h
end
                            
