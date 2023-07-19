INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db HEX_MANIAC
	BT_Floor 0
	Text_EN "RINA"8
	Text_JP "リナ"8
	OT_ID 00000, 00000

	Intro_EN $2005, $1601, $102a, $0a48, $0605, $103e
	Win_EN $0a48, $26c2, $0c04, $0a1c, $060e, $0c04
	Loss_EN $0a45, $0e0b, $0c06, $1601, $1010, $0c06

	Intro_JP $2005, $1601, $102a, $0a48, $0605, $103e
	Win_JP $0a48, $26c2, $0c04, $0a1c, $060e, $0c04
	Loss_JP $0a45, $0e0b, $0c06, $1601, $1010, $0c06

	Pokemon DUSCLOPS
	Holds APICOT_BERRY
	Moves WILL_O_WISP, TOXIC, ROCK_TOMB, DESTINY_BOND
	Level 84
	PP_Ups 0,0,0,0
	EVs 0,0,255,0,0,255
	OT_ID 00000, 00000
	IVs 15,15,31,15,15,31, 0
	PV $000000D5
	Text_EN "DUSCLOPS"11
	Text_JP "サマヨール"11
	Friendship 255

	Pokemon BANETTE
	Holds WHITE_HERB
	Moves SHADOW_BALL, THUNDERBOLT, PSYCHIC, DESTINY_BOND
	Level 87
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00000, 00000
	IVs 15,31,15,31,15,15, 0
	PV $0000000A
	Text_EN "BANETTE"11
	Text_JP "ジュペッタ"11
	Friendship 255

	Pokemon GARDEVOIR
	Holds TWISTED_SPOON
	Moves PSYCHIC, CALM_MIND, DOUBLE_TEAM, DESTINY_BOND
	Level 89
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, 1
	PV $0000000A
	Text_EN "GARDEVOIR"11
	Text_JP "サーナイト"11
	Friendship 255

	End_Trainer