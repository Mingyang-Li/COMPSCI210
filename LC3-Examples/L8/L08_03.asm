	.ORIG x3000 
	LD R3, V2 	; Load V2 to R3
	LD R2, V1 	; Load V1 to R2
	ADD R1, R2, R3 	; Add V1 to V2 and save the result at R1
	NOT R4, R1 		; Not the result of R1 and save the result at R4
EXIT 	TRAP x25 	; halt 
V1 	.FILL x0001 	; M[V1] = 1
V2 	.FILL xFFFF 	; M[V2] = -1
	.END
