	.ORIG x3000 
	LD R3, V2 	; Load V2 to R3
	LD R2, V1 	; Load V1 to R2
	ADD R1, R2, R3 	; Add V1 to V2 and save the result at R1
	ADD R4, R2, R1 	; Add V1 to the result again and save the result at R4
EXIT 	TRAP x25 	; halt 
V1 	.FILL x0001 	; M[V1] = 1
V2 	.FILL xFFFE 	; M[V2] = -2
	.END
