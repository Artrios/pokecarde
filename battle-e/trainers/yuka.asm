INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db BEAUTY
	BT_Floor 0
	Text_EN "YUKA"8
	Text_JP "ユカ"8
	OT_ID 00000, 00000

	Intro_EN $044a, $1a2a, $ffff, $1228, $102e, $0c00
	Win_EN $0e36, $044a, $103c, $1606, $0e19, $0c03
	Loss_EN $0e36, $044a, $103c, $1606, $103f, $0c04

	Intro_JP $044a, $1a2a, $ffff, $1228, $102e, $0c00
	Win_JP $0e36, $044a, $103c, $1606, $0e19, $0c03
	Loss_JP $0e36, $044a, $103c, $1606, $103f, $0c04

	Pokemon SABLEYE
	Holds BRIGHTPOWDER
	Moves SHADOW_BALL, KNOCK_OFF, FAINT_ATTACK, CONFUSE_RAY
	Level 75
	PP_Ups 0,0,0,0
	EVs 252,6,0,0,252,0
	OT_ID 00000, 00000
	IVs 31,31,15,15,15,15, 0
	PV $0000001B
	Text_EN "SABLEYE"11
	Text_JP "ヤミラミ"11
	Friendship 255

	Pokemon GRUMPIG
	Holds BRIGHTPOWDER
	Moves PSYCHIC, REST, SNORE, FLASH
	Level 80
	PP_Ups 0,0,0,3
	EVs 6,0,0,252,252,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, 0
	PV $0000008C
	Text_EN "GRUMPIG"11
	Text_JP "ブーピッグ"11
	Friendship 255

	Pokemon CLAMPERL
	Holds BRIGHTPOWDER
	Moves SURF, DOUBLE_TEAM, ICE_BEAM, IRON_DEFENSE
	Level 85
	PP_Ups 0,0,0,0
	EVs 252,0,6,0,252,0
	OT_ID 00000, 00000
	IVs 31,15,15,15,31,15, 0
	PV $00000016
	Text_EN "CLAMPERL"11
	Text_JP "パールル"11
	Friendship 255

	End_Trainer