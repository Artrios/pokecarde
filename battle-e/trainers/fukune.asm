INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 100
	db HEX_MANIAC
	BT_Floor 12
	Text_JP "フクネ"8
	OT_ID 00000, 00000

	Intro_JP $1e0f, $1219, $0c04, $201a, $102d, $0c05
	Win_JP $0e2d, $26ae, $1034, $143a, $102d, $0c05
	Loss_JP $0a48, $020e, $0e1d, $26ae, $0c06, $0c03

	Pokemon DUSCLOPS
	Holds LEFTOVERS
	Moves CONFUSE_RAY, NIGHT_SHADE, PROTECT, CURSE
	Level 100
	PP_Ups 0,0,0,0
	EVs 252,0,252,0,0,6
	OT_ID 00000, 00000
	IVs 31,20,20,20,20,31, 0
	PV $00000093
	Text_JP "サマヨール"11
	Friendship 255

	Pokemon TORKOAL
	Holds CHESTO_BERRY
	Moves BODY_SLAM, REST, AMNESIA, CURSE
	Level 100
	PP_Ups 0,0,0,3
	EVs 252,0,6,0,0,252
	OT_ID 00000, 00000
	IVs 31,20,20,20,20,31, 0
	PV $00000016
	Text_JP "コータス"11
	Friendship 255

	Pokemon SWAMPERT
	Holds SHELL_BELL
	Moves EARTHQUAKE, BRICK_BREAK, REST, CURSE
	Level 100
	PP_Ups 0,0,0,0
	EVs 252,0,6,0,0,252
	OT_ID 00000, 00000
	IVs 31,20,20,20,20,31, 0
	PV $00000080
	Text_JP "ラグラージ"11
	Friendship 255

	End_Trainer