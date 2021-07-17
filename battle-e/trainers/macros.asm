INCLUDE "../macros.asm"
INCLUDE "../constants/abilities.asm"
INCLUDE "../constants/easychat.asm"
INCLUDE "../constants/items.asm"
INCLUDE "../constants/moves.asm"
INCLUDE "../constants/natures.asm"
INCLUDE "../constants/pokemon.asm"
INCLUDE "../constants/trainerclasses.asm"

MOSSDEEP EQU 0

Battle_Trainer: MACRO
	Section "battle",ROM0[$100]
	db $01
	dd $02000000
	db REGION,0,REGION,0,0,0,$04,0,$80,$01,0,0
	db $0D
	dd $02000018
	db $02,$00
	ENDM

BT_Level EQUS "db"
Class EQUS "db"
BT_Floor EQUS "dw" ; the byte after it is 00, but apparently means something…
Intro_EN: MACRO
	IF REGION == REGION_EN
	dw \1, \2, \3, \4, \5, \6
	ENDC
	ENDM
Win_EN: MACRO
	IF REGION == REGION_EN
	dw \1, \2, \3, \4, \5, \6
	ENDC
	ENDM
Loss_EN: MACRO
	IF REGION == REGION_EN
	dw \1, \2, \3, \4, \5, \6
	ENDC
	ENDM
Intro_JP: MACRO
	IF REGION == REGION_JP
	dw \1, \2, \3, \4, \5, \6
	ENDC
	ENDM
Win_JP: MACRO
	IF REGION == REGION_JP
	dw \1, \2, \3, \4, \5, \6
	ENDC
	ENDM
Loss_JP: MACRO
	IF REGION == REGION_JP
	dw \1, \2, \3, \4, \5, \6
	ENDC
	ENDM
Pokemon EQUS "dw"
Holds EQUS "dw"
Moves EQUS "dw"
Level EQUS "db"
PP_Ups: MACRO
	db (\1) + (\2 << 2) + (\3 << 4) + (\4 << 6)
	ENDM
EVs EQUS "db"
OT_ID EQUS "dw"
IVs: MACRO
	dw \1 + (\2 << 5) + (\3 << 10) + ((\4 & 1) << 15)
	dw (\4 >> 1) + (\5 << 4) + (\6 << 9) + (\7 << 15)
	ENDM
PV: MACRO
	dw (\1 & $FFFF), (\1 >> 16)
	ENDM
Friendship EQUS "db"

End_Trainer: MACRO
	db 0,0,0,0
	EOF
	ENDM