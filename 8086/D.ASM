.model small
.stack
.data
arr db 10,20,30,40,50
len db $-arr
key equ 20
m1 db "element found at"
res db " postion " ,10 ,13 ,"$"
m2 db "element not found$"

.code

mov ax,@data
mov ds,ax

mov al,key
mov cl,len
mov si,0
UP:
cmp al,arr[si]
je found
inc si
loop UP

lea dx,m2
jmp exit

Found:   MOV AL,SI
         add al,1
         add al,30h
         lea si,res
         mov [si],al
		
         lea dx,m1
	 
exit:  mov ah,09h
int 21h

	mov ah,4ch
	int 21h
	end	  
