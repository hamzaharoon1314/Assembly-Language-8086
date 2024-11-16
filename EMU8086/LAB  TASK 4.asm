.model small ; The . MODEL Directive. The memory model directive specifies the size of the memory the program needs
.stack 64
.data
	worda dw 120d ; Here 120D is a Integer Constants and it store 120 Decimal value to worda Variable
	wordb dw 121d ; Same logic as above comment
.code 
main proc        ; main is a label proc is a mnemonic
   mov ax,@data  ; This is way of loading starting address of data segment in ax.
   mov DS,AX     ; Move the ADDRESS store in of AX to DS
   mov ax,worda  ; move value of worda to Ax Register
   mov bx,wordb  ; move value of wordb to Bx Register

; Below is the code to Exit the MAIN Directive    
mov ah,4ch
int 21h
main endp
end main        