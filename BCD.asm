
org 100h
.data
    num1 db 29h        ; First BCD number = 25
    num2 db 37h        ; Second BCD number = 37
    result db ?         ; To store the result
    msg db 0Dh,0Ah,'BCD Addition Result: $'
.code
start:
    mov ax, @data
    mov ds, ax

    mov al, num1
    add al, num2
    daa                 ; Adjust for BCD addition
    mov result, al

    mov ah, 09h
    lea dx, msg
    int 21h

    mov al, result
    call display_bcd

    mov ah, 4ch
    int 21h

; ---- Display BCD Subroutine ----
display_bcd proc
    push ax
    mov ah, 02h

    ; Display high nibble
    mov dl, al
    and dl, 0F0h
    shr dl, 4
    add dl, 30h
    int 21h

    ; Display low nibble
    mov dl, al
    and dl, 0Fh 
    add dl, 30h
    int 21h

    pop ax
    ret
display_bcd endp
end start