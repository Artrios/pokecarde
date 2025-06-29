INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	Class GENTLEMAN
	BT_Floor 0
	Text_EN "EARL"8
	Text_JP "ノートン"8
	OT_ID 00000, 00000

	Intro_JP $0618, $0e28, $0616, $0e0b, $062b, $1025
	Win_JP $2203, $162c, $0448, $1e0d, $062b, $1025
	Loss_JP $0c1c, $269c, $0616, $26c1, $0e24, $0c01

	Intro_EN GOOD, STRATEGY, IS, IMPORTANT, IN, BATTLE
	Win_EN THE, EARLY_BIRD, GETS, THE, BERRY, _EX
	Loss_EN YOU, DEFEATED, MY, SLEEP, STRATEGY, _EX_EX

	Pokemon TORKOAL
	Holds CHESTO_BERRY
	Moves BODY_SLAM, OVERHEAT, AMNESIA, REST
	Level 60
	PP_Ups 0,0,0,0
	EVs 6,0,252,0,0,252
	OT_ID 00000, 00000
	IVs 15,15,31,15,15,31, 0
	PV $000000E7
	Text_EN "TORKOAL"11
	Text_JP "コータス"11
	Friendship 255

	Pokemon CLAYDOL
	Holds CHESTO_BERRY
	Moves COSMIC_POWER, DOUBLE_TEAM, ANCIENTPOWER, REST
	Level 62
	PP_Ups 0,0,0,0
	EVs 6,252,0,0,0,252
	OT_ID 00000, 00000
	IVs 15,31,15,15,15,31, 0
	PV $00000017
	Text_EN "CLAYDOL"11
	Text_JP "ネンドール"11
	Friendship 255

	Pokemon DUSCLOPS
	Holds CHESTO_BERRY
	Moves WILL_O_WISP, CONFUSE_RAY, SHADOW_BALL, REST
	Level 64
	PP_Ups 0,0,0,0
	EVs 6,0,252,0,0,252
	OT_ID 00000, 00000
	IVs 15,15,31,15,15,31, 0
	PV $000000E6
	Text_EN "DUSCLOPS"11
	Text_JP "サマヨール"11
	Friendship 255

	End_Trainer