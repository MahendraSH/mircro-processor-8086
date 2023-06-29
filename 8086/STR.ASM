.model small
.stack
.data
str1 db"helleh$"
str2 db 10 dup(?)
len db $-str1 -1

msg1 db "equal$"

msg2 db  "not equal$" 

.code

mov ax,@data
mov ds,ax
mov es,ax
mov cl,len
mov si,0
mov di,cl
dec di
up:
   mov al,str1[si]
   mov str2[di] ,al
   inc si
   dec di
   loop up



cld
lea si,str1
lea di,str2
mov cl,len
repe cmpsb
je l

lea dx,msg2
jmp exit
l:
lea dx,msg1
exit: mov ah,9h
int 21h
mov ah,4ch
int 21h
end

