.model samll
.data
.code
mov ah,1
int 21h
mov dl,al
mov ah,2
int 21h
mov ah,4ch
int 21h
end
