INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db GENTLEMAN
	BT_Floor 0
	Text_EN "ANTHONY"8
	Text_JP "アンソニー"8
	OT_ID 00000, 00000

	Intro_EN $0a43, $1e0b, $0408, $1228, $102b, $100b
	Win_EN $0a43, $1034, $020e, $1405, $0408, $100b
	Loss_EN $0a1a, $1034, $020e, $1405, $0408, $100b

	Intro_JP $0a43, $1e0b, $0408, $1228, $102b, $100b
	Win_JP $0a43, $1034, $020e, $1405, $0408, $100b
	Loss_JP $0a1a, $1034, $020e, $1405, $0408, $100b

	Pokemon ALAKAZAM
	Holds LUM_BERRY
	Moves CALM_MIND, PSYCHIC, REFLECT, THUNDER_PUNCH
	Level 50
	PP_Ups 0,0,0,0
	EVs 6,0,0,252,252,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, 0
	PV $0000000F
	Text_EN "ALAKAZAM"11
	Text_JP "フーディン"11
	Friendship 255

	Pokemon HARIYAMA
	Holds FOCUS_BAND
	Moves REVENGE, EARTHQUAKE, FAKE_OUT, REVERSAL
	Level 53
	PP_Ups 0,0,0,0
	EVs 252,252,0,0,0,6
	OT_ID 00000, 00000
	IVs 31,31,15,15,15,15, 0
	PV $00000080
	Text_EN "HARIMYAMA"11
	Text_JP "ハリテヤマ"11
	Friendship 255

	Pokemon SHEDINJA
	Holds SPELL_TAG
	Moves CONFUSE_RAY, SHADOW_BALL, TOXIC, PROTECT
	Level 56
	PP_Ups 0,0,0,0
	EVs 0,252,6,252,0,0
	OT_ID 00000, 00000
	IVs 15,31,15,31,15,15, 0
	PV $0000001C
	Text_EN "SHEDINJA"11
	Text_JP "ヌケニン"11
	Friendship 255

	End_Trainer