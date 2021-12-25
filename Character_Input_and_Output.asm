.model small
.stack 100h
.data

.code
main proc
	;take input
	MOV AH,1
	INT 21H
	; value will be stored in the AL
	MOV DL,AL
	MOV AH,2
	INT 21H

	; exit program
	MOV AH,4CH
	INT 21H
main endp
end main
