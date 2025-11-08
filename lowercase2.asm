MOV AH, 1       ; Function to read a character from keyboard
INT 21H         ; AL = typed character

CMP AL, 'a'     ; Check if lowercase
JB SKIP
CMP AL, 'z'
JA SKIP
SUB AL, 20H     ; Convert lowercase ? uppercase

SKIP:
MOV DL, AL      ; Move result to DL for printing
MOV AH, 02h
INT 21H         ; Display character

HL'