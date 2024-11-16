; Coder Name: Hamza Haroon
; 01/20/2022
; https://github.com/hamzaharoon1314

.MODEL SMALL
.STACK 100H
.DATA
.CODE  

; set video mode - 700x400 - mode 12h 

MOV AX,0012h ; video mode ; choice video mode
INT 10h  ; execute the config


MOV AH,0CH ; for pixel draw
; Color will change with AL   
; FLAG BOX START HERE  

                      
; --> Fill - Green Color 
MOV al,2 ; Green Color
MOV cx,250   ;COL
MOV dx,160   ;ROW

; Outer Loop - Work with Value on DX
WholeGreen:
; 1st Inner Loop
MOV BX,170
Green1:
INT 10h 
INC CX

DEC BX ; Inner Loop Dec
JNZ Green1
INC DX ; DX INC For Next Line

; 2nd Inner Loop
MOV BX,170

Green2:
INT 10h 
DEC CX

DEC BX ; 2nd Inner Loop Dec
JNZ Green2
INC DX ; DX INC For Next Line

CMP DX,270
JNGE WholeGreen ; [Jump if not Greater or Equal]                       
; --> Green Color End Here                        
                        
; --> Fill - White Color 
MOV al,15 ; White color
MOV cx,200   ;COL
MOV dx,160   ;ROW

; Outer Loop - Work with Value on DX
OuterWhiteall:
; 1st Inner Loop
MOV BX,50
White1:
INT 10h 
INC CX

DEC BX ; Inner Loop Dec
JNZ White1
INC DX; DX INC For Next Line

; 2nd Inner Loop
MOV BX,50
White2:
INT 10h 
DEC CX
DEC BX ; 2nd Inner Loop Dec
JNZ White2
INC DX ; DX INC For Next Line
CMP DX,270
JNGE OuterWhiteall ; [Jump if not Greater or Equal]   
; --> White Color End Here


; --> Middle Line to Separate White/Green
MOV AL,6
MOV cx,250   ;COL
MOV dx,160   ;ROW  

; Line Loop
MOV BX,110
LINEm:
INT 10h 
INC DX

DEC BX ; Loop Dec
JNZ LINEm 

; --> Start - Half Star Print
MOV AL,0FH
; Start Prit
MOV cx,340   ;COL
MOV dx,200   ;ROW
  
;---
MOV BX,6
S1:
INT 10h    
INC CX
INC DX

DEC BX ; Loop Dec
JNZ S1

;--
MOV BX,6
S2:
INT 10h    
INC CX

DEC BX ; Loop Dec
JNZ S2 

;--
MOV BX,6
S3:
INT 10h    
DEC CX
INC DX

DEC BX ; Loop Dec
JNZ S3   

;---
MOV BX,6
S4:
INT 10h    
INC DX

DEC BX ; Loop Dec
jnz S4 

;--
MOV BX,6
S10:
INT 10h    
DEC CX
DEC DX

DEC BX ; Loop Dec
JNZ S10
         
; --> END  - Half Star Print

; --> Start - Half Star Print
MOV cx,340   ;COL
MOV dx,200   ;ROW
  
;--
MOV BX,6
S5:
INT 10h    
DEC CX
INC DX

DEC BX ; Loop Dec
JNZ S5 

;--
MOV BX,6
S6:
INT 10h    
DEC CX

DEC BX ; Loop Dec
JNZ S6

;--
MOV BX,6
S7:
INT 10h    
INC CX
INC DX

DEC BX ; Loop Dec
JNZ S7 

;--
MOV BX,6
S8:
INT 10h    
INC DX

DEC BX ; Loop Dec
JNZ S8 

;--
MOV BX,7
S9:
INT 10h    
INC CX
DEC DX

DEC BX ; Loop Dec
JNZ S9

; --> END - Half Star Prin  

; --> Start - FlaG Outline
MOV al,6 ; Color Brown
MOV cx,200   ;COL
MOV dx,160   ;ROW

; Loop
MOV BX,220
LINE1:
INT 10h 
INC CX

DEC BX
JNZ LINE1 

; Loop
MOV BX,110
LINE2:
INT 10h 
INC DX

DEC BX
JNZ LINE2 

; Loop
MOV BX,220
LINE3:
INT 10h 
DEC CX

DEC BX
JNZ LINE3 

; Loop
MOV BX,110
LINE4:
INT 10h 
DEC DX

DEC BX 
JNZ LINE4 
 
; --> END - FlaG Outline   


; -----> ! FLAG BOX END HERE ! <-----


; --> Flag Rod
MOV DX,270 ;ROW
MOV CX,200 ;COL                          
MOV al,6 ; Brown   

; Loop
MOV BX,160
LINE5:
INT 10h 
INC DX

DEC BX ; Loop Dec
JNZ LINE5 
; Line 5 END

; Loop for / Line of ROD
MOV BX,6
LINE6:
INT 10h
DEC CX 
INC DX

DEC BX ; Loop Dec
JNZ LINE6 
; Line 6 END              

; ROD Long Line 3D
MOV BX,270
LINELong:
INT 10h 
DEC DX

DEC BX ; Loop Dec
JNZ LINELong  

; Loop for / Line of ROD
MOV BX,6
LINETop:
INT 10h
INC CX 
DEC DX

DEC BX ; Loop Dec
JNZ LINETop              
            
; --> END - Flag Rod  




; !---- FOR 3D LINE of BOX ----!
MOV AL,6
MOV DX,270
MOV CX,200
; Line \
MOV BX,6
LINE3D_1:
INT 10h
INC CX 
INC DX

DEC BX ; Loop Dec
JNZ LINE3D_1 
; Line Top \ End

; Stright Line 
MOV BX,208
LINE3D_bIG:
INT 10h 
INC CX

DEC BX ; Loop Dec
JNZ LINE3D_bIG  

; Line /
MOV BX,6
LINE3D_2:
INT 10h
INC CX 
DEC DX

DEC BX ; Loop Dec
JNZ LINE3D_2 
; Line / 

; !---- 3ND 3D LINE of BOX ----!