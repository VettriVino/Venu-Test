  ; Program: Factorial of 5
 MOV CX, 05H
 MOV AX, 01H
 FACT:
 MUL CX
 LOOP FACT
 MOV DX,OFFSET NUM
 MOV AH,09H
 INT 21H
 MOV AH,02H
 MOV DL,'1'
 INT 21H
 MOV DL,'2'
 INT 21H
 MOV DL,'0'
 INT 21H
 ; Result in AX (for 5! = 120 -> 0078H)
 HLT
 NUM DB 'FACT 5 is:$'
 