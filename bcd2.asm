 name 'bcd_aaa'
 org 100h
 mov ah,09h
 mov al,05h
 add al,ah
 xor ah,ah
 aaa
 mov dx,ax
 mov ah,0Eh
 or dh,30h
 mov al,dh
 int 10h
 or dh,30h
 mov al,dl
 int 10h
 mov ah,0
 int 16h
 ret
 
 