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

; result = (w1+w2) – w3

.data
	
	w1 WORD 200
	w2 DWORD 10000
	w3 WORD 150
	result DWORD ?
	strg BYTE "The Answer is : ", 0
	; data declarations go here

.code
main PROC

	movzx eax,w1
	mov ebx,w2
	movzx ecx,w3
	add eax,ebx
	sub eax,ecx
	mov result,eax

	mov edx, OFFSET strg
    call WriteString 
	mov eax, result
	call WriteDec
	
	; code goes here
	
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
