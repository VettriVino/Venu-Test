
org 100h

mov dx, 07h          ; motor connected to port 0
mov cx, 4            ; 4 step sequence
lea si, steps        ; point to step sequence table

rotate:
    mov al, [si]     ; get step pattern
    out dx, al       ; send to port
    call delay       ; wait
    inc si           ; next step
    loop rotate      ; repeat 4 steps

jmp start            ; keep rotating

start:
    mov cx, 4
    lea si, steps ;lea si, stepsanti for anticlockwise
    jmp rotate

; Step sequence for clockwise rotation
stepsanti db 09h,0Ch,06h,03h  
steps db 03h,06h,0Ch,09h

; -------------------
; Delay subroutine
; -------------------
delay proc
    mov bx, 000fh
d1: dec bx
    jnz d1
    ret
delay endp