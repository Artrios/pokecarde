INCLUDE "../macros.asm"

Enigma_Berry: MACRO
	Section "berry",ROM0[$100]
	db $01
	dd $02000000
	db REGION,0,REGION,0,0,0,$04,0,$00,$02,0,0
	db $07
	dd $02000018
	db $02,$00
	ENDM

; firmness
Firmness EQUS "db"
VERY_SOFT  EQU 1
SOFT       EQU 2
HARD       EQU 3
VERY_HARD  EQU 4
SUPER_HARD EQU 5

Yield_Range: MACRO
	db \2, \1
	ENDM

Size: MACRO
	dw \1 * 10 + \2
	ENDM

Growth_Stage_Hours EQUS "db"
Flavor EQUS "db"
Smoothness EQUS "dw" ; not sure if the second byte is significant on its own

End_Berry: MACRO
	dd 0 ; placeholder for checksum
	EOF
	ENDM