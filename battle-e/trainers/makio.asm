INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db POKEFAN_M
	BT_Floor 0
	Text_EN "MAKIO"8
	Text_JP "マキオ"8
	OT_ID 00000, 00000

	Intro_EN $1e10, $020e, $100b, $1219, $1021, $ffff
	Win_EN $24b8, $1228, $0c01, $281e, $2818, $0c01
	Loss_EN $1219, $0e16, $100b, $1427, $1239, $1015

	Intro_JP $1e10, $020e, $100b, $1219, $1021, $ffff
	Win_JP $24b8, $1228, $0c01, $281e, $2818, $0c01
	Loss_JP $1219, $0e16, $100b, $1427, $1239, $1015

	Pokemon GLALIE
	Holds LEPPA_BERRY
	Moves ICE_BEAM, EARTHQUAKE, CRUNCH, SHEER_COLD
	Level 62
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, 0
	PV $000000D7
	Text_EN "GLALIE"11
	Text_JP "オニゴーリ"11
	Friendship 255

	Pokemon LOUDRED
	Holds LIECHI_BERRY
	Moves HYPER_VOICE, OVERHEAT, EXTRASENSORY, SHADOW_BALL
	Level 57
	PP_Ups 0,0,0,0
	EVs 0,255,0,0,255,0
	OT_ID 00000, 00000
	IVs 15,31,15,15,31,15, 0
	PV $000000E1
	Text_EN "LOUDRED"11
	Text_JP "ドゴーム"11
	Friendship 255

	Pokemon SHIFTRY
	Holds CHESTO_BERRY
	Moves GIGA_DRAIN, REST, EXTRASENSORY, EXPLOSION
	Level 59
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00000, 00000
	IVs 31,15,15,15,31,15, 1
	PV $000000D7
	Text_EN "SHIFTRY"11
	Text_JP "ダーテング"11
	Friendship 255

	End_Trainer