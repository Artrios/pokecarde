INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db LADY
	BT_Floor 0
	Text_EN "MOET"8
	Text_JP "モエ"8
	OT_ID 00000, 00000

	Intro_EN $244a, $1e11, $0a48, $020e, $1643, $080a
	Win_EN $0619, $1034, $1439, $0204, $1026, $ffff
	Loss_EN $123a, $020e, $0e1f, $060a, $0e24, $0c04

	Intro_JP $244a, $1e11, $0a48, $020e, $1643, $080a
	Win_JP $0619, $1034, $1439, $0204, $1026, $ffff
	Loss_JP $123a, $020e, $0e1f, $060a, $0e24, $0c04

	Pokemon RALTS
	Holds BRIGHT_POWDER
	Moves FUTURE_SIGHT, WILL_O_WISP, LIGHT_SCREEN, TOXIC
	Level 69
	PP_Ups 0,0,0,0
	EVs 255,0,255,0,0,0
	OT_ID 00000, 00000
	IVs 15,15,31,15,15,31, 1
	PV $0000001F
	Text_EN "RALTS"11
	Text_JP "ラルトス"11
	Friendship 255

	Pokemon KIRLIA
	Holds TWISTED_SPOON
	Moves FUTURE_SIGHT, DESTINY_BOND, REFLECT, SHADOW_BALL
	Level 72
	PP_Ups 0,0,0,0
	EVs 0,0,255,255,0,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,15,31, 0
	PV $00000012
	Text_EN "KIRLIA"11
	Text_JP "キルリア"11
	Friendship 255

	Pokemon GARDEVOIR
	Holds LEFTOVERS
	Moves PSYCHIC, THUNDERBOLT, HYPNOSIS, PROTECT
	Level 75
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00015, 00000
	IVs 15,15,15,31,31,15, 0
	PV $0000000F
	Text_EN "GARDEVOIR"11
	Text_JP "サーナイト"11
	Friendship 255

	End_Trainer