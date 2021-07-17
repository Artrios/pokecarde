INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db NINJA_BOY
	BT_Floor 0
	Text_JP "トシナオ"8
	OT_ID 00000, 00000

	Intro_JP $0812, $102d, $0c00, $1e15, $0c00, $ffff
	Win_JP $265c, $1034, $0619, $102d, $0c00, $ffff
	Loss_JP $265c, $0e1f, $0c04, $201c, $102d, $0c04

	Pokemon TENTACRUEL
	Holds SITRUS_BERRY
	Moves CONFUSE_RAY, SURF, TOXIC, MIRROR_COAT
	Level 50
	PP_Ups 0,0,0,0
	EVs 252,0,252,0,0,6
	OT_ID 00000, 00000
	IVs 31,15,31,15,15,15, 0
	PV $0000008C
	Text_JP "ドククラゲ"11
	Friendship 255

	Pokemon WEEZING
	Holds CHERI_BERRY
	Moves PROTECT, TOXIC, EXPLOSION, FLAMETHROWER
	Level 52
	PP_Ups 0,0,0,0
	EVs 252,0,0,0,6,252
	OT_ID 00000, 00000
	IVs 31,15,15,15,15,31, 0
	PV $00000080
	Text_JP "マタドガス"11
	Friendship 255

	Pokemon CROBAT
	Holds LUM_BERRY
	Moves TOXIC, CONFUSE_RAY, SHADOW_BALL, AIR_CUTTER
	Level 54
	PP_Ups 0,0,0,0
	EVs 252,6,0,0,0,252
	OT_ID 00000, 00000
	IVs 31,15,15,15,15,31, 0
	PV $0000001C
	Text_JP "クロバット"11
	Friendship 255

	End_Trainer