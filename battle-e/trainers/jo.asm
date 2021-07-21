INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db KINDLER
	BT_Floor 0
	Text_EN "JO"8
	Text_JP "ジョウ"8
	OT_ID 00000, 00000

	Intro_EN $141f, $26f1, $0c00, $201f, $26f1, $0c00
	Win_EN $0e09, $26f1, $0c01, $0609, $26f1, $0c01
	Loss_EN $1402, $26f1, $100b, $1430, $1239, $0c06

	Intro_JP $141f, $26f1, $0c00, $201f, $26f1, $0c00
	Win_JP $0e09, $26f1, $0c01, $0609, $26f1, $0c01
	Loss_JP $1402, $26f1, $100b, $1430, $1239, $0c06

	Pokemon SOLROCK
	Holds WHITE_HERB
	Moves SUNNY_DAY, SOLARBEAM, FLAMETHROWER, EXPLOSION
	Level 58
	PP_Ups 0,0,0,0
	EVs 252,0,6,0,0,252
	OT_ID 00000, 00000
	IVs 31,15,15,15,15,31, 0
	PV $0000000F
	Text_EN "SOLROCK"11
	Text_JP "ソルロック"11
	Friendship 255

	Pokemon SHIFTRY
	Holds 
	Moves SUNNY_DAY, SOLARBEAM, GIGA_DRAIN, THIEF
	Level 60
	PP_Ups 0,0,0,0
	EVs 252,0,0,0,252,6
	OT_ID 00000, 00000
	IVs 31,15,15,15,31,15, 0
	PV $0000000F
	Text_EN "SHIFTRY"11
	Text_JP "ダーテング"11
	Friendship 255

	Pokemon CAMERUPT
	Holds CHARCOAL
	Moves SUNNY_DAY, FLAMETHROWER, EARTHQUAKE, AMNESIA
	Level 62
	PP_Ups 0,0,0,0
	EVs 252,0,252,0,0,6
	OT_ID 00000, 00000
	IVs 31,15,31,15,15,15, 0
	PV $0000008C
	Text_EN "CAMERUPT"11
	Text_JP "バクーダ"11
	Friendship 255

	End_Trainer