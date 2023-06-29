.model small
.data
arr db 1,3,4,5,7
len db $-arr
key db 5
str1 db "found $"
str2 db "not found $"
.code
mov ax,@data
mov ds,ax
mov si,0
mov cl,len
mov ch,0
l1:cmp key , arr[si]
jne
  lea

