INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db NINJA_BOY
	BT_Floor 0
	Text_EN "YU"8
	Text_JP "ユウ"8
	OT_ID 00000, 00000

	Intro_EN $26bc, $0e1d, $ffff, $1232, $1017, $ffff
	Win_EN $2005, $0c04, $ffff, $1804, $160a, $0c03
	Loss_EN $0a3d, $0c01, $1804, $1e23, $1216, $1017

	Intro_JP $26bc, $0e1d, $ffff, $1232, $1017, $ffff
	Win_JP $2005, $0c04, $ffff, $1804, $160a, $0c03
	Loss_JP $0a3d, $0c01, $1804, $1e23, $1216, $1017

	Pokemon WEEZING
	Holds LAX_INCENSE
	Moves SLUDGE_BOMB, FLAMETHROWER, THUNDERBOLT, EXPLOSION
	Level 82
	PP_Ups 0,0,0,0
	EVs 0,255,0,0,255,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,15,31, 0
	PV $000000E1
	Text_EN "WEEZING"11
	Text_JP "マタドガス"11
	Friendship 255

	Pokemon SWALOT
	Holds LAX_INCENSE
	Moves SLUDGE_BOMB, YAWN, GIGA_DRAIN, ICE_BEAM
	Level 80
	PP_Ups 0,0,0,0
	EVs 0,255,0,0,255,0
	OT_ID 00000, 00000
	IVs 15,15,31,15,15,31, 0
	PV $00000019
	Text_EN "SWALOT"11
	Text_JP "マルノーム"11
	Friendship 255

	Pokemon MUK
	Holds LAX_INCENSE
	Moves SLUDGE_BOMB, GIGA_DRAIN, ROCK_TOMB, EXPLOSION
	Level 81
	PP_Ups 0,0,0,0
	EVs 0,255,255,0,0,0
	OT_ID 00000, 00000
	IVs 15,31,15,15,15,31, 1
	PV $000000E4
	Text_EN "MUK"11
	Text_JP "ベトベトン"11
	Friendship 255

	End_Trainer