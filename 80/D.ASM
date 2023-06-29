time macro cr
; for taking time form sytem 
mov ah,2ch
int 21h
mov al,cr
AAM
mov bx,ax

mov dl,bh
add dl,30h
mov ah,02h
int 21h

mov dl,bl
add dl,30h
mov ah,02h
int 21h

mov dl,':'
mov ah,2h
int 21h
endm

; .model small
; .stack
; .data
; .code

; time ch

; time cl

; time dh

; mov ah,4ch
; int 21h
; end

; time macro cr
; ; for taking time form sytem 
; mov ah,2ch
; int 21h
; mov al,cr
; AAM
; mov bx,ax

; ; for display
; mov dl,bh
; add dl,30h
; mov ah,2
; int 21h
; mov dl,bl
; add dl,30h
; mov ah,2
; int 21h
; mov dl,":"
; mov ah,2
; int 21h
; endm

.model small
.stack
.data
.code
; for hours
time ch

; for min
time  cl

; for sec
time  dh

mov ah,4ch
int 21h
end 
