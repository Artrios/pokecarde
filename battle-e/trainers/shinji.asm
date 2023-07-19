INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db PKMN_BREEDER_M
	BT_Floor 0
	Text_EN "SHINJI"8
	Text_JP "シンジ"8
	OT_ID 00000, 00000

	Intro_EN $1c12, $1034, $0a3b, $0e07, $1429, $100e
	Win_EN $1e1b, $244a, $1e11, $1002, $164c, $0c03
	Loss_EN $1e04, $0c03, $201e, $244a, $122d, $0c03

	Intro_JP $1c12, $1034, $0a3b, $0e07, $1429, $100e
	Win_JP $1e1b, $244a, $1e11, $1002, $164c, $0c03
	Loss_JP $1e04, $0c03, $201e, $244a, $122d, $0c03

	Pokemon BELLOSSOM
	Holds MIRACLE_SEED
	Moves INGRAIN, POISON_POWDER, RETURN, GIGA_DRAIN
	Level 90
	PP_Ups 0,0,0,0
	EVs 252,0,0,0,252,6
	OT_ID 00000, 00000
	IVs 31,15,15,15,31,15, 0
	PV $00000012
	Text_EN "BELLOSSOM"11
	Text_JP "キレイハナ"11
	Friendship 255

	Pokemon DUSTOX
	Holds SILVER_POWDER
	Moves TOXIC, PROTECT, SILVER_WIND, PSYCHIC
	Level 91
	PP_Ups 0,0,0,0
	EVs 252,252,0,0,0,6
	OT_ID 00000, 00000
	IVs 31,31,15,15,15,15, 0
	PV $00000083
	Text_EN "DUSTOX"11
	Text_JP "ドクケイル"11
	Friendship 255

	Pokemon GOREBYSS
	Holds SHELL_BELL
	Moves SURF, PSYCHIC, ICE_BEAM, CONFUSE_RAY
	Level 92
	PP_Ups 0,0,0,0
	EVs 252,0,6,0,0,252
	OT_ID 00000, 00000
	IVs 31,15,15,15,15,31, 0
	PV $0000000F
	Text_EN "GOREBYSS"11
	Text_JP "サクラビス"11
	Friendship 255

	End_Trainer