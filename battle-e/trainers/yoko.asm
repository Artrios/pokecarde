INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db LASS
	BT_Floor 0
	Text_JP "ヨウコ"8
	OT_ID 00000, 00000

	Intro_JP $081c, $1643, $1643, $0e2a, $0418, $1021
	Win_JP $0c32, $1032, $0c03, $0419, $26d5, $1021
	Loss_JP $0c19, $0c00, $262d, $0e17, $0418, $103d

	Pokemon JIGGLYPUFF
	Holds PINK_SCARF
	Moves SING, CHARM, DEFENSE_CURL, MIMIC
	Level 85
	PP_Ups 0,0,0,0
	EVs 252,0,252,0,0,6
	OT_ID 00000, 00000
	IVs 31,15,31,15,15,15, 0
	PV $00000012
	Text_JP "プリン"11
	Friendship 255

	Pokemon SKITTY
	Holds PINK_SCARF
	Moves TICKLE, UPROAR, ASSIST, TAIL_WHIP
	Level 90
	PP_Ups 0,0,0,0
	EVs 252,0,252,0,0,6
	OT_ID 00000, 00000
	IVs 31,15,15,15,15,15, 0
	PV $000000DA
	Text_JP "エネコ"11
	Friendship 255

	Pokemon LUVDISC
	Holds PINK_SCARF
	Moves WATER_GUN, MUD_SPORT, SWEET_KISS, ATTRACT
	Level 95
	PP_Ups 0,0,0,0
	EVs 252,0,0,252,0,6
	OT_ID 00000, 00000
	IVs 31,15,15,31,15,15, 0
	PV $00000012
	Text_JP "ラブカス"11
	Friendship 255

	End_Trainer