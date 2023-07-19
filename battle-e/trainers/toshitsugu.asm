INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db RUIN_MANIAC
	BT_Floor 0
	Text_EN "TOSHI"8
	Text_JP "トシツグ"8
	OT_ID 00000, 00000

	Intro_EN $0c1c, $1c26, $1034, $1241, $140c, $100b
	Win_EN $1c26, $1034, $1813, $0e28, $1241, $140c
	Loss_EN $0810, $0c04, $1c26, $1034, $1827, $0c04

	Intro_JP $0c1c, $1c26, $1034, $1241, $140c, $100b
	Win_JP $1c26, $1034, $1813, $0e28, $1241, $140c
	Loss_JP $0810, $0c04, $1c26, $1034, $1827, $0c04

	Pokemon RELICANTH
	Holds SEA_INCENSE
	Moves SURF, ROCK_SLIDE, YAWN, SAFEGUARD
	Level 55
	PP_Ups 0,0,0,0
	EVs 255,255,0,0,0,0
	OT_ID 00000, 00000
	IVs 31,31,15,15,15,15, 0
	PV $000000D4
	Text_EN "RELICANTH"11
	Text_JP "ジーランス"11
	Friendship 255

	Pokemon ARMALDO
	Holds SCOPE_LENS
	Moves SLASH, ROCK_SLIDE, EARTHQUAKE, IRON_TAIL
	Level 54
	PP_Ups 0,0,0,0
	EVs 0,255,0,0,0,255
	OT_ID 00000, 00000
	IVs 15,31,15,15,15,31, 0
	PV $0000001C
	Text_EN "ARMALDO"11
	Text_JP "アーマルド"11
	Friendship 255

	Pokemon CRADILY
	Holds LEFTOVERS
	Moves GIGA_DRAIN, ANCIENT_POWER, AMNESIA, RECOVER
	Level 58
	PP_Ups 0,0,0,0
	EVs 0,0,255,0,0,255
	OT_ID 00008, 00000
	IVs 15,15,31,15,15,31, 0
	PV $00000007
	Text_EN "CRADILY"11
	Text_JP "ユレイドル"11
	Friendship 255

	End_Trainer