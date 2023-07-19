INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db RICH_BOY
	BT_Floor 0
	Text_EN "JUNPEI"8
	Text_JP "ジュンペイ"8
	OT_ID 00000, 00000

	Intro_EN $1e0b, $0408, $ffff, $061b, $1405, $1021
	Win_EN $0a1e, $0408, $1034, $061b, $142f, $100e
	Loss_EN $1c12, $1429, $0408, $1606, $100d, $1005

	Intro_JP $1e0b, $0408, $ffff, $061b, $1405, $1021
	Win_JP $0a1e, $0408, $1034, $061b, $142f, $100e
	Loss_JP $1c12, $1429, $0408, $1606, $100d, $1005

	Pokemon ALTARIA
	Holds CHERI_BERRY
	Moves DRAGON_CLAW, AERIAL_ACE, PROTECT, PERISH_SONG
	Level 50
	PP_Ups 0,0,0,0
	EVs 252,0,6,0,0,252
	OT_ID 00000, 00000
	IVs 31,15,15,15,15,31, 0
	PV $00000089
	Text_EN "ALTARIA"11
	Text_JP "チルタリス"11
	Friendship 255

	Pokemon METAGROSS
	Holds QUICK_CLAW
	Moves METEOR_MASH, BRICK_BREAK, EARTHQUAKE, PSYCHIC
	Level 52
	PP_Ups 0,0,0,0
	EVs 252,6,252,0,0,0
	OT_ID 00000, 00000
	IVs 31,15,31,15,15,15, 0
	PV $0000001B
	Text_EN "METAGROSS"11
	Text_JP "メタグロス"11
	Friendship 255

	Pokemon KINGDRA
	Holds BLACK_GLASSES
	Moves DRAGON_BREATH, SURF, ICE_BEAM, HIDDEN_POWER
	Level 54
	PP_Ups 0,0,0,0
	EVs 252,0,0,0,252,6
	OT_ID 00000, 00000
	IVs 15,15,15,15,31,31, 0
	PV $0000000F
	Text_EN "KINGDRA"11
	Text_JP "キングドラ"11
	Friendship 255

	End_Trainer