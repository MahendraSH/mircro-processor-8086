.model small
.stack
.data
arr dw 3000h,4000h,5000h,8000h,9000h
len dw($-arr)/2
key dw 8000h
msg db "key found at postion "
res db " $"
msg2 db "key not found $"
.code
mov ax,@data
mov ds,ax
mov cx,key
mov bx,0
mov dx,len
up:
cmp bx,dx
ja not_found
mov ax,bx
add ax,dx
shr ax,1
mov si,ax
add si,si

cmp cx,arr[si]
jae found
dec ax
mov dx,ax
jmp up
found:
je success
inc ax
mov bx,ax
jmp up
success:
inc ax
lea si,res
add ax,30h 
mov [si],ax
lea dx,msg1
jmp exit


not_found:
lea dx,msg2
exit:
mov ah,09h
int 21h

mov ah,4ch
int 21h
end
