INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db TUBER_F
	BT_Floor 0
	Text_EN "HARUE"8
	Text_JP "ハルエ"8
	OT_ID 00000, 00000

	Intro_EN $0a02, $0175, $1222, $0c03, $1642, $1602
	Win_EN $2639, $042c, $0c06, $0628, $042c, $0c06
	Loss_EN $0c0a, $0c00, $0a01, $1034, $0175, $0c04

	Intro_JP $0a02, $0175, $1222, $0c03, $1642, $1602
	Win_JP $2639, $042c, $0c06, $0628, $042c, $0c06
	Loss_JP $0c0a, $0c00, $0a01, $1034, $0175, $0c04

	Pokemon CLAMPERL
	Holds DEEPSEASCALE
	Moves RAIN_DANCE, CONFUSE_RAY, TOXIC, PROTECT
	Level 71
	PP_Ups 0,0,0,0
	EVs 0,0,255,0,0,255
	OT_ID 00000, 00000
	IVs 15,15,31,15,15,31, 0
	PV $000000DC
	Text_EN "CLAMPERL"11
	Text_JP "パールル"11
	Friendship 255

	Pokemon HUNTAIL
	Holds BRIGHTPOWDER
	Moves RAIN_DANCE, HYDRO_PUMP, CRUNCH, ROCK_TOMB
	Level 73
	PP_Ups 0,0,0,0
	EVs 0,0,0,0,255,255
	OT_ID 00000, 00000
	IVs 15,15,15,15,31,31, 0
	PV $00000010
	Text_EN "HUNTAIL"11
	Text_JP "ハンテール"11
	Friendship 255

	Pokemon GOREBYSS
	Holds SHELL_BELL
	Moves RAIN_DANCE, SURF, PSYCHIC, SHADOW_BALL
	Level 74
	PP_Ups 0,0,0,0
	EVs 0,0,0,0,255,255
	OT_ID 00000, 00000
	IVs 15,15,15,15,31,31, 0
	PV $00000010
	Text_EN "GOREBYSS"11
	Text_JP "サクラビス"11
	Friendship 255

	End_Trainer