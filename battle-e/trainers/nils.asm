INCLUDE "macros.asm"

	BT_Level 50
	Class GENTLEMAN
	BT_Floor 0
	OT_Name "NILS"
	OT_ID 00000, 00000

	Introduction YOUR,CHALLENGE,IS,MORE,THAN,WELCOME
	After_Win    THAT_S,REALLY,ALL,YOU,GOT,_QU
	After_Loss   HMM,WELL,DONE,_ELIP,YOUNG,TRAINER

	Pokemon SABLEYE
	dw SITRUS_BERRY
	Moves NIGHT_SHADE, FAKE_OUT, DETECT, KNOCK_OFF
	Level 50
	PP_Ups 0,0,0,0
	EVs 255,100,0,155,0,0
	OT_ID 00000, 00000
	IVs 15,15,15,15,15,15, SABLEYE_KEEN_EYE
	PV $000000CE ; ♂ Docile
	Nickname "SABLEYE"
	Friendship 255

	Pokemon PLUSLE
	Holds MAGNET
	Moves FAKE_TEARS, SPARK, QUICK_ATTACK, ENCORE
	Level 50
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00000, 00000
	IVs 15,15,15,15,15,15, PLUSLE_PLUS
	PV $0000000F ; ♀ Modest
	Nickname "PLUSLE"
	Friendship 255

	Pokemon LUDICOLO
	Holds SHELL_BELL
	Moves RAIN_DANCE, SURF, THIEF, GIGA_DRAIN
	Level 50
	PP_Ups 0,0,0,0
	EVs 170,0,0,170,170,0
	OT_ID 00000, 00000
	IVs 15,15,15,15,15,15, LUDICOLO_SWIFT_SWIM
	PV $000000D2 ; ♂ Timid
	Nickname "LUDICOLO"
	Friendship 255
