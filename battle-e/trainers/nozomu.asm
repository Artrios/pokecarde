INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db TRIATHLETE_M_BIKE
	BT_Floor 0
	Text_EN "NOZOMU"8
	Text_JP "ノゾム"8
	OT_ID 00000, 00000

	Intro_EN $2013, $1a15, $1a34, $1c28, $1c0a, $1011
	Win_EN $1643, $1007, $103e, $0a3a, $020e, $0c00
	Loss_EN $201e, $1014, $0c04, $0a3a, $020e, $0c04

	Intro_JP $2013, $1a15, $1a34, $1c28, $1c0a, $1011
	Win_JP $1643, $1007, $103e, $0a3a, $020e, $0c00
	Loss_JP $201e, $1014, $0c04, $0a3a, $020e, $0c04

	Pokemon RAICHU
	Holds LUM_BERRY
	Moves THUNDERBOLT, THUNDER_WAVE, LIGHT_SCREEN, IRON_TAIL
	Level 55
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, 0
	PV $0000000F
	Text_EN "RAICHU"11
	Text_JP "ライチュウ"11
	Friendship 255

	Pokemon GOLDUCK
	Holds BRIGHTPOWDER
	Moves SURF, ICE_BEAM, AERIAL_ACE, PSYCHIC
	Level 57
	PP_Ups 0,0,0,0
	EVs 255,0,0,0,255,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, 0
	PV $000000D7
	Text_EN "GOLDUCK"11
	Text_JP "ゴルダック"11
	Friendship 255

	Pokemon TAUROS
	Holds SHELL_BELL
	Moves HYPER_BEAM, EARTHQUAKE, THUNDERBOLT, FACADE
	Level 60
	PP_Ups 0,0,0,0
	EVs 0,255,0,255,0,0
	OT_ID 00000, 00000
	IVs 15,31,15,15,15,31, 0
	PV $000000E4
	Text_EN "TAUROS"11
	Text_JP "ケンタロス"11
	Friendship 255

	End_Trainer