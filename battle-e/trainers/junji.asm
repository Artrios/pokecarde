INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db COLLECTOR
	BT_Floor 0
	Text_EN "JUNJI"8
	Text_JP "ジュンジ"8
	OT_ID 00000, 00000

	Intro_EN $0467, $1034, $1429, $020e, $1606, $1028
	Win_EN $0467, $1429, $0134, $1232, $102d, $0c00
	Loss_EN $0467, $1429, $020e, $0e36, $1606, $103f

	Intro_JP $0467, $1034, $1429, $020e, $1606, $1028
	Win_JP $0467, $1429, $0134, $1232, $102d, $0c00
	Loss_JP $0467, $1429, $020e, $0e36, $1606, $103f

	Pokemon SPINDA
	Holds MACHO_BRACE
	Moves TEETER_DANCE, THRASH, TRICK, ATTRACT
	Level 88
	PP_Ups 0,0,0,0
	EVs 252,252,6,0,0,0
	OT_ID 00000, 00000
	IVs 31,31,15,15,15,15, 0
	PV $EEE32A53
	Text_EN "SPINDA"11
	Text_JP "パッチール"11
	Friendship 255

	Pokemon SPINDA
	Holds PERSIM_BERRY
	Moves TEETER_DANCE, DIZZY_PUNCH, HYPNOSIS, FAINT_ATTACK
	Level 88
	PP_Ups 0,0,0,0
	EVs 252,6,252,0,0,0
	OT_ID 00000, 00000
	IVs 15,15,15,15,15,15, 0
	PV $E3FDF3FD
	Text_EN "SPINDA"11
	Text_JP "パッチール"11
	Friendship 255

	Pokemon SPINDA
	Holds CHERI_BERRY
	Moves TEETER_DANCE, PSYBEAM, DOUBLE_EDGE, ROCK_SLIDE
	Level 88
	PP_Ups 0,0,0,0
	EVs 252,252,6,0,0,0
	OT_ID 00000, 00000
	IVs 31,15,15,15,15,15, 0
	PV $88888888
	Text_EN "SPINDA"11
	Text_JP "パッチール"11
	Friendship 255

	Pokemon SPECIES_NONE
	Holds ITEM_NONE
	Moves MOVE_NONE, MOVE_NONE, MOVE_NONE, MOVE_NONE
	Level 100
	PP_Ups 0,0,0,0
	EVs 0,0,0,0,0,0
	OT_ID 00000, 00000
	IVs 31,31,31,31,31,31, ABILITY1
	PV HARDY_FEMALE
	Text_EN "BULBASUAR"11
	Friendship 255

	Pokemon SPECIES_NONE
	Holds ITEM_NONE
	Moves MOVE_NONE, MOVE_NONE, MOVE_NONE, MOVE_NONE
	Level 100
	PP_Ups 0,0,0,0
	EVs 0,0,0,0,0,0
	OT_ID 00000, 00000
	IVs 31,31,31,31,31,31, ABILITY1
	PV HARDY_FEMALE
	Text_EN "BULBASUAR"11
	Friendship 255

	Pokemon SPECIES_NONE
	Holds ITEM_NONE
	Moves MOVE_NONE, MOVE_NONE, MOVE_NONE, MOVE_NONE
	Level 100
	PP_Ups 0,0,0,0
	EVs 0,0,0,0,0,0
	OT_ID 00000, 00000
	IVs 31,31,31,31,31,31, ABILITY1
	PV HARDY_FEMALE
	Text_EN "BULBASUAR"11
	Friendship 255

	End_Trainer