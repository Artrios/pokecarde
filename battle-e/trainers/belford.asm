INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 100
	Class COOLTRAINER_M
	BT_Floor 5
	Text_EN "BELFORD"8
	OT_ID 00000, 00000

	Intro_EN YOU,WILL,NOT,LIKE,MY,ATTACK
	Win_EN   TOO,BAD,YOU,DON_T,LIKE,POISON
	Loss_EN  WHAT,_A,POKEMON,TRAINER,I,SURRENDER

	Pokemon DUSCLOPS
	Holds LEFTOVERS
	Moves TOXIC, NIGHT_SHADE, CONFUSE_RAY, WILL_O_WISP
	Level 100
	PP_Ups 0,0,0,0
	EVs 252,0,252,0,0,6
	OT_ID 00000, 00000
	IVs 31,20,31,20,20,20, DUSCLOPS_PRESSURE
	PV $00000094 ; ♂ Careful
	Text_EN "DUSCLOPS"11
	Friendship 255

	Pokemon CROBAT
	Holds BRIGHTPOWDER
	Moves TOXIC, AIR_CUTTER, CONFUSE_RAY, SHADOW_BALL
	Level 100
	PP_Ups 0,0,0,0
	EVs 252,252,6,0,0,0
	OT_ID 00000, 00000
	IVs 31,31,20,20,20,20, CROBAT_INNER_FOCUS
	PV $0000001C ; ♀ Adamant
	Text_EN "CROBAT"11
	Friendship 255

	Pokemon REGISTEEL
	Holds CHESTO_BERRY
	Moves TOXIC, REST, EARTHQUAKE, IRON_DEFENSE
	Level 100
	PP_Ups 0,0,0,0
	EVs 252,6,0,0,0,252
	OT_ID 00000, 00000
	IVs 31,20,20,20,20,31, REGISTEEL_CLEAR_BODY
	PV $0000001E ; ⚲ Bold
	Text_EN "REGISTEEL"11
	Friendship 255

	End_Trainer