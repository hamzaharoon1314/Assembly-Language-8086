; Coder Name: Hamza Haroon
; 01/20/2022
; https://github.com/hamzaharoon1314


.CODE
mov AX,0012h  
int 10h 
mov ah,0ch 
mov al,6
          
          
; <----- Phone Frame -----> 

; ROW AND COL SET
mov cx,200   ;COL
mov dx,80   ;ROW

; BOX CODE

MOV BX,250
MobileLine1:
int 10h 
INC DX
DEC BX
jnz MobileLine1    

MOV BX,150
MobileLine2:
int 10h 
INC CX
DEC BX
jnz MobileLine2

MOV BX,250
MobileLine3:
int 10h 
DEC DX
DEC BX
jnz MobileLine3
                                 
MOV BX,150
MobileLine4:
int 10h 
DEC CX
DEC BX
jnz MobileLine4  


; < Outer Frame >

; <----- Phone Frame -----> 

; ROW AND COL SET
mov cx,190   ;COL
mov dx,70   ;ROW

; BOX CODE

MOV BX,270
OuterLine1:
int 10h 
INC DX
DEC BX
jnz OuterLine1    

MOV BX,170
OuterLine2:
int 10h 
INC CX
DEC BX
jnz OuterLine2

MOV BX,270
OuterLine3:
int 10h 
DEC DX
DEC BX
jnz OuterLine3
                                 
MOV BX,170
OuterLine4:
int 10h 
DEC CX
DEC BX
jnz OuterLine4 


; / \ Lines to Outer Frame

; Line 1 \

; ROW AND COL SET
mov cx,190   ;COL
mov dx,70   ;ROW 

MOV BX,10
Line1:
int 10h
INC CX 
INC DX
DEC BX
jnz Line1  

; Line 2 /

; ROW AND COL SET
mov cx,190   ;COL
mov dx,340   ;ROW 

MOV BX,10
Line2:
int 10h
INC CX 
DEC DX
DEC BX
jnz Line2 

; Line 3 \

; ROW AND COL SET
mov cx,360   ;COL
mov dx,340   ;ROW 

MOV BX,10
Line3:
int 10h
DEC CX 
DEC DX
DEC BX
jnz Line3  

; Line 4 /

; ROW AND COL SET
mov cx,360   ;COL
mov dx,70   ;ROW 

MOV BX,10
Line4:
int 10h
DEC CX 
INC DX
DEC BX
jnz Line4
; <----------------------------------INNER PART---------------------------------->


; Top Frame
; ROW AND COL SET
mov cx,200   ;COL
mov dx,110   ;ROW

MOV BX,150
TopFrame1:
int 10h 
INC CX
DEC BX
jnz TopFrame1

; < ----- Speaker ----->
; ROW AND COL SET
mov cx,265   ;COL
mov dx,100   ;ROW

MOV BX,20
SpeakerLine1:
int 10h 
INC CX
DEC BX
jnz SpeakerLine1
                 
MOV BX,20
SpeakerLine2:
int 10h 
DEC DX
DEC BX
jnz SpeakerLine2 

MOV BX,20
SpeakerLine3:
int 10h 
DEC CX
DEC BX
jnz SpeakerLine3 

MOV BX,20
SpeakerLine4:
int 10h 
INC DX
DEC BX
jnz SpeakerLine4


; Button Frame
; ROW AND COL SET
mov cx,200   ;COL
mov dx,300   ;ROW

MOV BX,150
ButtomFrame1:
int 10h 
INC CX
DEC BX
jnz ButtomFrame1

; < ----- Buttons ----->
; ROW AND COL SET
mov cx,270   ;COL
mov dx,310   ;ROW


 
MOV BX,10
ButtonLine1:
int 10h 
INC CX
DEC BX
jnz ButtonLine1
                 
MOV BX,10
ButtonLine2:
int 10h 
INC DX
DEC BX
jnz ButtonLine2 

MOV BX,10
ButtonLine3:
int 10h 
DEC CX
DEC BX
jnz ButtonLine3 

MOV BX,10
ButtonLine4:
int 10h 
DEC DX
DEC BX
jnz ButtonLine4

 ; <Inner Buttom>
ADD CX,3
ADD DX,3

MOV BX,3
INNERButtonLine1:
int 10h 
INC CX
DEC BX
jnz INNERButtonLine1
                 
MOV BX,3
INNERButtonLine2:
int 10h 
INC DX
DEC BX
jnz INNERButtonLine2 

MOV BX,3
INNERButtonLine3:
int 10h 
DEC CX
DEC BX
jnz INNERButtonLine3 

MOV BX,3
INNERButtonLine4:
int 10h 
DEC DX
DEC BX
jnz INNERButtonLine4


              