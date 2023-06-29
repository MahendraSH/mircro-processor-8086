.model small
.stack
.data
n dw 3
res dw ?
.code

mov ax,@data
mov ds,ax
mov cx,n
mov ax,1
mov bx,cx
call fact
cmp cx,1
je exit
exit: mov res,ax
    mov ah,4ch
    int 21h
    fact proc 
   ;  mov bx,cx
   cmp bx,0
   je l1
    push bx
    dec bx
    call fact
    pop bx
    mul bx
    ret
    l1:
       mov ax,1
       ret 
       fact endp
       end
      

