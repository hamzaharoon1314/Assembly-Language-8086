;;;;; This program does basic arithmetic operations for two variables 
;A and B are the variables   
 
Org 100h 
 
;;;;; Data segment starts   
.DATA  
A	DW      11  
B	DW      4
SUM  DW    ? 
DIFFERENCE DW  ? 
MULTIPLICATION DW    ?    
DIVISION  DW ? 
 
;;;;; Code segment starts  
.CODE  
    
MAIN PROC FAR  
;initialize DS  

MOV AX,@DATA
MOV DS,AX

;add the numbers
MOV AX,A
ADD AX,B
MOV SUM,AX

;subtract the numbers
MOV AX,A
SUB AX,B
MOV DIFFERENCE,AX        

;multiply the numbers   
MOV AX,A
MOV BX,B
MUL BX
MOV MULTIPLICATION,AX

;divide the numbers
MOV AX,A
DIV BX
MOV DIVISION,AX

MAIN ENDP
END MAIN
RET