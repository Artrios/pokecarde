INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 100
	db COOLTRAINER_F
	BT_Floor 12
	Text_EN "UMAMI"8
	Text_JP "ウマミ"8
	OT_ID 00000, 00000

	Intro_EN $0a48, $020e, $0e28, $0e14, $060a, $1044
	Win_EN $0c04, $103c, $122d, $0628, $1014, $0c3d
	Loss_EN $0a48, $0212, $0e1f, $060a, $0e24, $0c05

	Intro_JP $0a48, $020e, $0e28, $0e14, $060a, $1044
	Win_JP $0c04, $103c, $122d, $0628, $1014, $0c3d
	Loss_JP $0a48, $0212, $0e1f, $060a, $0e24, $0c05

	Pokemon ARMALDO
	Holds LEFTOVERS
	Moves HYPER_BEAM, ANCIENT_POWER, AERIAL_ACE, SWORDS_DANCE
	Level 100
	PP_Ups 0,0,0,0
	EVs 0,252,6,0,0,252
	OT_ID 00000, 00000
	IVs 20,31,31,20,20,20, 0
	PV $0000001C
	Text_EN "ARMALDO"11
	Text_JP "アーマルド"11
	Friendship 255

	Pokemon AGGRON
	Holds SHELL_BELL
	Moves EARTHQUAKE, AERIAL_ACE, DOUBLE_EDGE, IRON_TAIL
	Level 100
	PP_Ups 0,0,0,0
	EVs 0,252,252,0,0,6
	OT_ID 00000, 00000
	IVs 20,31,31,20,20,20, 1
	PV $000000E4
	Text_EN "AGGRON"11
	Text_JP "ボスゴドラ"11
	Friendship 255

	Pokemon METAGROSS
	Holds CHESTO_BERRY
	Moves EARTHQUAKE, METEOR_MASH, PSYCHIC, REST
	Level 100
	PP_Ups 0,0,0,0
	EVs 0,252,0,6,252,0
	OT_ID 00000, 00000
	IVs 20,31,20,20,31,20, 0
	PV $0000001B
	Text_EN "METAGROSS"11
	Text_JP "メタグロス"11
	Friendship 255

	End_Trainer