INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level MOSSDEEP
	Class PSYCHIC_M
	BT_Floor MOSSDEEP
	Text_EN "GRIFFIN"8
	OT_ID 00000, 00000

	Intro_EN CAN,YOU,SENSE,THE,PRESSURE,_QU
	Win_EN   YOUR,PRESSURE,IS,WEAK,_AND,LACKING
	Loss_EN  ARRGH,_EX,WHAT,FANTASTIC,PRESSURE,_EX_EX

	Pokemon BANETTE
	Holds LEPPA_BERRY
	Moves SPITE, PROTECT, DOUBLE_TEAM, WILL_O_WISP
	Level 52
	PP_Ups 0,0,0,0
	EVs 252,0,252,0,0,6
	OT_ID 00000, 00000
	IVs 31,15,31,15,15,15, BANETTE_INSOMNIA
	PV $00000085 ; ♂ Impish
	Text_EN "BANETTE"11
	Friendship 255

	Pokemon ABSOL
	Holds BRIGHTPOWDER
	Moves PROTECT, DOUBLE_TEAM, REST, SLASH
	Level 54
	PP_Ups 0,0,0,0
	EVs 252,0,252,0,0,6
	OT_ID 00000, 00000
	IVs 31,15,31,15,15,15, ABSOL_PRESSURE
	PV $0000001C ; ♀ Adamant
	Text_EN "ABSOL"11
	Friendship 255

	Pokemon DUSCLOPS
	Holds CHESTO_BERRY
	Moves PROTECT, REST, EARTHQUAKE, SHADOW_BALL
	Level 56
	PP_Ups 0,0,0,0
	EVs 252,0,252,0,0,6
	OT_ID 00000, 00000
	IVs 31,15,15,15,15,31, DUSCLOPS_PRESSURE
	PV $0000001C ; ♀ Adamant
	Text_EN "DUSCLOPS"11
	Friendship 255

	End_Trainer