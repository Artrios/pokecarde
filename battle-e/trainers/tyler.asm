INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level MOSSDEEP
	Class POKEMANIAC
	BT_Floor MOSSDEEP
	Text_EN "TYLER"8
	OT_ID 00000, 00000

	Intro_EN WHOAH,OVERWHELMING,MEGA,BLANK,ATTACK,_EX
	Win_EN   WAHAHAHA,_EX,THAT,WAS,SERIOUS,_1_HIT_KO_
	Loss_EN  TOO_STRONG,_EX,GO_EASY,ON,ME,_EX

	Pokemon WALREIN
	Holds LAX_INCENSE
	Moves SHEER_COLD, REST, SNORE, ICE_BEAM
	Level 62
	PP_Ups 0,0,0,0
	EVs 252,0,6,0,0,252
	OT_ID 00000, 00000
	IVs 15,15,31,15,15,31, WALREIN_THICK_FAT
	PV $00000013 ; ♀ Rash
	Text_EN "WALREIN"11
	Friendship 255

	Pokemon PINSIR
	Holds BRIGHTPOWDER
	Moves GUILLOTINE, SUBMISSION, EARTHQUAKE, ROCK_TOMB
	Level 64
	PP_Ups 0,0,0,0
	EVs 252,6,0,252,0,0
	OT_ID 00000, 00000
	IVs 31,15,15,31,15,15, PINSIR_HYPER_CUTTER
	PV $0000008A ; ♂ Jolly
	Text_EN "PINSIR"11
	Friendship 255

	Pokemon RHYDON
	Holds QUICK_CLAW
	Moves HORN_DRILL, ROCK_SLIDE, EARTHQUAKE, MEGAHORN
	Level 66
	PP_Ups 0,0,0,0
	EVs 252,252,0,0,0,6
	OT_ID 00000, 00000
	IVs 31,31,15,15,15,15, RHYDON_ROCK_HEAD
	PV $00000016 ; ♀ Sassy
	Text_EN "RHYDON"11
	Friendship 255

	End_Trainer