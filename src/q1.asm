TITLE

; Name: 
; Date: 
; ID: 
; Description: 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

; result = (a + b) - b

.data
	
	a WORD 100
    b WORD 50
	result WORD ?
	strg BYTE "The Answer is : ", 0
	; data declarations go here

.code
main PROC

	mov ax,a
	mov bx,b
	add ax,bx
	sub ax,bx
	mov result,ax

	mov edx, OFFSET strg
    call WriteString 
	movzx eax, result
	call WriteDec
	
	; code goes here
	
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
