.STACK 100

.DATA
DATA1 DB -23
DATA2 DB -44 
RESULT DW ? 

.CODE
MAIN PROC FAR  
;initialize DS 
MOV AX,@DATA
MOV DS,AX

SUB AH,AH
MOV AL,DATA1
MOV BL,DATA2
ADD AL,BL 
JNO OVER
MOV AL,DATA2
CBW
MOV BX,AX
MOV AL,DATA1
CBW
ADD AX,BX
OVER: MOV RESULT,AX 


MAIN ENDP
END MAIN
RET