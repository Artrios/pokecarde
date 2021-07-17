INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db TRIATHLETE_M_SWIM
	BT_Floor 0
	Text_JP "リョウ"8
	OT_ID 00000, 00000

	Intro_JP $0a2c, $1643, $0c04, $0a3a, $1234, $020e
	Win_JP $0c37, $0c01, $1e0b, $020e, $1232, $1015
	Loss_JP $0613, $0c01, $123a, $020e, $1014, $0e0a

	Pokemon MAGCARGO
	Holds QUICK_CLAW
	Moves FLAMETHROWER, ROCK_SLIDE, LIGHT_SCREEN, AMNESIA
	Level 54
	PP_Ups 0,0,0,0
	EVs 252,0,252,0,0,6
	OT_ID 00000, 00000
	IVs 31,15,31,15,15,15, 0
	PV $00000011
	Text_JP "マグカルゴ"11
	Friendship 255

	Pokemon AZUMARILL
	Holds CHESTO_BERRY
	Moves SURF, REST, SUBSTITUTE, FOCUS_PUNCH
	Level 56
	PP_Ups 0,0,0,0
	EVs 252,6,0,0,0,252
	OT_ID 00000, 00000
	IVs 31,15,31,15,15,15, 1
	PV $00000080
	Text_JP "マリルリ"11
	Friendship 255

	Pokemon PORYGON2
	Holds CHESTO_BERRY
	Moves ICE_BEAM, THUNDERBOLT, REST, RECYCLE
	Level 58
	PP_Ups 0,0,0,0
	EVs 252,0,6,0,252,0
	OT_ID 00000, 00000
	IVs 31,15,15,15,31,15, 0
	PV $0000000F
	Text_JP "ポリゴン２"11
	Friendship 255

	End_Trainer