        .MODEL SMALL
        .STACK 64
        .DATA
        ORG 10H
DATA_IN DB 25H,4FH,85H,1FH,2BH,0C4H
        ORG 28H
COPY    DB 6 DUP(?)
        
        .CODE
MAIN        PROC FAR
            MOV AX,DATA        
            MOV DS,AX
            MOV SI, OFFSET DATA_IN
            MOV DI, OFFSET COPY
            MOV CX,06H
MOV_LOOP:  MOV AL,[SI] 
          MOV [DI], AL
          INC SI
          INC DI
          DEC CX
          JNZ MOV_LOOP
          MOV AH, 4CH
          INT 21H
MAIN  ENDP
      END MAIN
            
            
                