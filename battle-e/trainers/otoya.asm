INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db BIRD_KEEPER
	BT_Floor 0
	Text_EN "OTOYA"8
	Text_JP "オトヤ"8
	OT_ID 00000, 00000

	Intro_EN $0601, $0c00, $0a3a, $2413, $0a34, $0c01
	Win_EN $0c37, $1419, $0c00, $0a3d, $1421, $100f
	Loss_EN $1231, $0c04, $ffff, $2007, $2007, $0c04

	Intro_JP $0601, $0c00, $0a3a, $2413, $0a34, $0c01
	Win_JP $0c37, $1419, $0c00, $0a3d, $1421, $100f
	Loss_JP $1231, $0c04, $ffff, $2007, $2007, $0c04

	Pokemon TROPIUS
	Holds MIRACLE_SEED
	Moves EARTHQUAKE, AERIAL_ACE, MAGICAL_LEAF, BODY_SLAM
	Level 66
	PP_Ups 0,0,0,0
	EVs 252,252,6,0,0,0
	OT_ID 00000, 00000
	IVs 31,31,15,15,15,15, 0
	PV $000000E3
	Text_EN "TROPIUS"11
	Text_JP "トロピウス"11
	Friendship 255

	Pokemon XATU
	Holds SHARP_BEAK
	Moves CONFUSE_RAY, PSYCHIC, DRILL_PECK, TOXIC
	Level 67
	PP_Ups 0,0,0,0
	EVs 6,0,0,252,252,0
	OT_ID 00000, 00000
	IVs 15,15,15,15,15,15, 0
	PV $0000000C
	Text_EN "XATU"11
	Text_JP "ネイティオ"11
	Friendship 255

	Pokemon SKARMORY
	Holds SCOPE_LENS
	Moves STEEL_WING, AERIAL_ACE, PROTECT, SWIFT
	Level 68
	PP_Ups 0,0,0,0
	EVs 252,252,0,0,0,6
	OT_ID 00000, 00000
	IVs 31,31,15,15,15,15, 0
	PV $00000080
	Text_EN "SKARMORY"11
	Text_JP "エアームド"11
	Friendship 255

	End_Trainer