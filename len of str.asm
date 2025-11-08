MOV SI, OFFSET STR 
MOV CX, 0 
NEXT_CHAR: 
CMP BYTE PTR [SI], '$'    
JE END 
INC CX 
INC SI 
JMP NEXT_CHAR 
END: 

HLT 
STR DB 'venumadhavan$', 0