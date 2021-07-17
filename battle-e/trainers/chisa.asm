INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db SCHOOL_KID_F
	BT_Floor 0
	Text_JP "チサ"8
	OT_ID 00000, 00000

	Intro_JP $1428, $020e, $162c, $1616, $1602, $1033
	Win_JP $1428, $0418, $0e16, $100b, $142f, $103f
	Loss_JP $0418, $0e16, $102b, $0a48, $1428, $020e

	Pokemon AZURILL
	Holds SEA_INCENSE
	Moves SING, SURF, RETURN, IRON_TAIL
	Level 94
	PP_Ups 0,0,0,0
	EVs 255,0,0,255,0,0
	OT_ID 00000, 00000
	IVs 15,15,31,15,15,31, 0
	PV $00000019
	Text_JP "ルリリ"11
	Friendship 255

	Pokemon WYNAUT
	Holds LAX_INCENSE
	Moves COUNTER, MIRROR_COAT, SAFEGUARD, SPLASH
	Level 94
	PP_Ups 0,0,0,0
	EVs 255,0,0,255,0,0
	OT_ID 00000, 00000
	IVs 15,15,31,15,15,31, 0
	PV $000000E0
	Text_JP "ソーナノ"11
	Friendship 255

	Pokemon PICHU
	Holds CHERI_BERRY
	Moves THUNDER_WAVE, SWEET_KISS, THUNDERBOLT, REVERSAL
	Level 95
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, 0
	PV $000000E7
	Text_JP "ピチュー"11
	Friendship 255

	End_Trainer