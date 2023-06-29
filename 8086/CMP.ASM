.model small
.stack
.data
str1 db "rama"
str2 db "ravi"


.code
mov ax,@data
mov ds,ax
mov es ,ax
lea si,str1
lea di,str2
mov cx,4
repe cmpsb
mov ah,4ch
int 21h
end 
