.model small
.stack
.data
hex_digit db ?
.code

mov ax,@data
mov ds,ax

;read hex_digit

mov ah,01h
int 21h
mov cl,al

mov ah,01h
int 21h

mov ah,cl
sub ax,3030h
AAD
mov hex_digit,ax

;clear screen
mov ah,02h
mov bh,00
mov dh,12
mov dl,40
int 10h

; display
mov dl,hex_digit
mov cl,4
shr dl,cl
cmp dl,0Ah
jc char
add dl,7h
char:	add dl,30h
	mov ah,02h
	int 21h

mov dl,hex_digit
AND dl,0Fh
cmp dl,0Ah
jc char2
add dl,7h
char2:add dl,30h
	mov ah,02h
	int 21h

mov ah,4ch
int 21h
end

