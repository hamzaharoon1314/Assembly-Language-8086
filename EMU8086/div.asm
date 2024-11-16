
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


        .MODEL SMALL
        .STACK 64 
        .DATA
        
A          DW 11
B          DW 5  
MULTIPLICATION   DW   ?      
.CODE
MAIN       PROC FAR            ;this is the program entry point
           MOV  AX,@DATA       ;load the data segment address
           MOV  DS,AX          ;assign value to ds
           MOV  AX,A           ;get the first oprend
           MOV  BX,B
           MUL  BX           ;get the second oprend
           MOV  MULTIPLICATION,BX       ;store result in location sum
           INT  21H
           MOV  AH,4CH         ;set up to return to dos
           INT  21H
           ENDP                     
END MAIN                       ;this is the program exit point

ret






