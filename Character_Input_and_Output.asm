; We have to move 1 in AH register and then call 21h interrupt to take a character input. Then we get the input character in AL.
; To display any character we have to move it to the DX(or DL) register and then mov 02h to AH and call 21h interrupt.

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
