    .MODEL SMALL
    .STACK 64
    .DATA
DATA1 DB  52H
DATA2 DB  29H
SUM DB  ?
.CODE
MAIN    PROC FAR
        MOV AX,@DATA
        MOV DS,AX
        MOV AL,DATA1 
        MOV BL,DATA2
        ADD AL,BL
        MOV SUM,AL
        MOV AH,4CH
        INT 21H   
MAIN ENDP
     END MAIN
          