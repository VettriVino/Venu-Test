org 100h

mov ax, 48      ; first number
mov bx, 18      ; second number

gcd:
    cmp bx, 0
    je finish
    mov dx, 0
    div bx       ; remainder ? DX
    mov ax, bx   ; a = b
    mov bx, dx   ; b = r
    jmp gcd

finish:
hlt