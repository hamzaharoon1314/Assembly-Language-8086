; Coder Name: Hamza Haroon
; 01/20/2022
; https://github.com/hamzaharoon1314


.CODE
mov AX,0012h  
int 10h 
mov ah,0ch 
mov al,6 

; <----- Outer Box ----->
; ROW AND COL SET
mov cx,190   ;COL
mov dx,210   ;ROW 


; BOX CODE

MOV BX,90
OLINE1:
int 10h 
INC CX
DEC DX
DEC BX
jnz OLINE1

MOV BX,90
OLINE2:
int 10h 
INC CX
INC DX
DEC BX 
jnz OLINE2  

MOV BX,90
OLINE3:
int 10h 
DEC CX
INC DX
DEC BX
jnz OLINE3

MOV BX,90
OLINE4:
int 10h 
DEC CX
DEC DX
DEC BX 
jnz OLINE4 

; <--- STAND ---> 
; ROW AND COL SET
mov cx,0106H   ;COL
mov dx,011AH ;ROW

MOV BX,25
STANDLINE1:
int 10h 
DEC CX
INC DX
DEC BX 
jnz STANDLINE1 

MOV BX,83
STANDLINE2:
int 10h 
INC CX
DEC BX
jnz STANDLINE2  

MOV BX,25
STANDLINE3:
int 10h 
DEC CX
DEC DX
DEC BX
jnz STANDLINE3


; <----- Inner Box -----> 

; ROW AND COL SET
mov cx,210   ;COL
mov dx,210   ;ROW

; BOX CODE

MOV BX,70
LINE1:
int 10h 
INC CX
DEC DX
DEC BX 
jnz LINE1

MOV BX,70
LINE2:
int 10h 
INC CX
INC DX
DEC BX 
jnz LINE2  

MOV BX,70
LINE3:
int 10h 
DEC CX
INC DX
DEC BX
jnz LINE3

MOV BX,70
LINE4:
int 10h 
DEC CX
DEC DX
DEC BX 
jnz LINE4

; MID Line.
MOV BX,140
LINEMidHorizontal:
int 10h 
INC CX
DEC BX 
jnz LINEMidHorizontal  

; MID Line.
MOV CX,0118h
MOV DX,008Ch
MOV BX,140
LINEMidVertical:
int 10h 
INC DX
DEC BX
jnz LINEMidVertical 


