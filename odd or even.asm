                                                                                                                                        org 100h

mov ax, 000fh      ; number to check (5)

test ax, 1         ; check LSB (1 = odd)
jz EVEN            ; if ZF = 1 ? even

; ---- ODD ----
mov dx, offset odd_msg
mov ah, 09h
int 21h
hlt

EVEN:
mov dx, offset even_msg
mov ah, 09h
int 21h
hlt

odd_msg  db 0Dh,0Ah, 'Number is ODD $'
even_msg db 0Dh,0Ah, 'Number is EVEN $'