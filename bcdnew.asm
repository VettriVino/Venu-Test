

mov al, 29h      ; first BCD number = 25
add al, 37h      ; second BCD number = 37

daa              ; adjust result to valid BCD

; print result (two digits)
mov bl, al
mov ah, 0

; upper digit
mov dl, bl
shr dl, 4        ; high nibble
add dl, 30h
mov ah, 02h
int 21h

; lower digit
mov dl, bl
and dl, 0Fh      ; low nibble
add dl, 30h
mov ah, 02h
int 21h

hlt