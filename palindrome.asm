org 100h

.data
msg1 db 'Enter a string: $'
msg2 db 0Dh,0Ah,'It is a Palindrome.$'
msg3 db 0Dh,0Ah,'It is NOT a Palindrome.$'
string db 20,0,20 dup('$')    ; Buffer for input string

.code
start:
    mov ax, @data
    mov ds, ax

    ; --- Prompt user to enter string ---
    mov ah, 09h
    lea dx, msg1
    int 21h

    mov ah, 0Ah
    lea dx, string
    int 21h

    ; SI points to first character
    lea si, string+2

    ; CX = string length (ignore CR)
    mov cl, [string+1]
    mov ch, 0

    ; DI points to last character
    lea di, string+2
    add di, cx
    dec di

check_loop:
    cmp si, di
    jge palindrome       ; crossed or equal ? all matched

    mov al, [si]
    mov bl, [di]
    cmp al, bl
    jne not_palindrome   ; mismatch ? not palindrome

    inc si
    dec di
    jmp check_loop

palindrome:
    mov ah, 09h
    lea dx, msg2
    int 21h
    jmp end_prog

not_palindrome:
    mov ah, 09h
    lea dx, msg3
    int 21h

end_prog:
    mov ah, 4Ch
    int 21h
end start