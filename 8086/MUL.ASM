data segment
a dw 0001h
b dw 0002h
c dd ?
data ends
code segment
assume cs:code ,ds: data
start:
mov ax,data
mov dx,ax
mov ax,a
mov bx,b
mul bx
mov word ptr c ,ax
mov word ptr c+2 ,dx
int 3
code ends
end start
