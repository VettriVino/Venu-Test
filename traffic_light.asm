    org 100h
    mov ax, all_red
    out 07h, ax
    mov si, offset s1

next:
    mov ax, [si]
    out 07h, ax

    ; Wait for approximately 8 seconds delay
    mov cx, 70h        ; Updated delay for ~8 seconds
    mov dx, 0000h
    mov ah, 86h
    int 15h

    add si, 2           ; Move to next pattern
    cmp si, offset s_end
    jb  next
    mov si, offset s1
    jmp next

;     FEDC_BA98_7654_3210
start dw 0000_0010_0100_1001b
s1    dw 0000_0010_0100_1010b  
s2    dw 0000_0010_0100_1100b  
s3    dw 0000_0010_0101_0001b
s4    dw 0000_0010_0110_0001b    
s5    dw 0000_0010_1000_1001b
s6    dw 0000_0011_0000_1001b
s7    dw 0000_0100_0100_1001b
s8    dw 0000_1000_0100_1001b
s9    dw 0000_0011_0000_1100b
s10   dw 0000_0010_0100_1001b
s11   dw 0000_0110_1001_1010b
s12   dw 0000_1000_0110_0001b
s13   dw 0000_1000_0110_0001b
s14   dw 0000_0100_1101_0011b
s_end = $

all_red equ 0000_0010_0100_1001b

ret
