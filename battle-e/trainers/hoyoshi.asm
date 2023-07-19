INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 100
	db PKMN_RANGER_F
	BT_Floor 19
	Text_EN "HOYOSHI"8
	Text_JP "ホヨシ"8
	OT_ID 00000, 00000

	Intro_EN $0a48, $061d, $0e1d, $0e1a, $142a, $1042
	Win_EN $1e1b, $0c03, $ffff, $142a, $1010, $1021
	Loss_EN $0a02, $1615, $0620, $0e36, $142a, $102a

	Intro_JP $0a48, $061d, $0e1d, $0e1a, $142a, $1042
	Win_JP $1e1b, $0c03, $ffff, $142a, $1010, $1021
	Loss_JP $0a02, $1615, $0620, $0e36, $142a, $102a

	Pokemon CRADILY
	Holds LUM_BERRY
	Moves INGRAIN, GIGA_DRAIN, CONFUSE_RAY, REST
	Level 100
	PP_Ups 0,0,0,0
	EVs 6,0,252,0,0,252
	OT_ID 00000, 00000
	IVs 20,20,31,20,20,31, 0
	PV $0000001E
	Text_EN "CRADILY"11
	Text_JP "ユレイドル"11
	Friendship 255

	Pokemon LUDICOLO
	Holds LEFTOVERS
	Moves LEECH_SEED, TOXIC, DOUBLE_TEAM, RAIN_DANCE
	Level 100
	PP_Ups 0,0,0,0
	EVs 6,0,252,0,0,252
	OT_ID 00000, 00000
	IVs 31,20,31,20,20,20, 1
	PV $000000E6
	Text_EN "LUDICOLO"11
	Text_JP "ルンパッパ"11
	Friendship 255

	Pokemon MILOTIC
	Holds BRIGHT_POWDER
	Moves RECOVER, SURF, CONFUSE_RAY, MIRROR_COAT
	Level 100
	PP_Ups 0,0,0,0
	EVs 0,0,252,6,252,0
	OT_ID 00000, 00000
	IVs 20,20,31,31,20,20, 0
	PV $0000001E
	Text_EN "MILOTIC"11
	Text_JP "ミロカロス"11
	Friendship 255

	End_Trainer