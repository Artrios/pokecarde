INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db AROMA_LADY
	BT_Floor 0
	Text_EN "MIYOKO"8
	Text_JP "ミヨコ"8
	OT_ID 00000, 00000

	Intro_EN $0a02, $041c, $020e, $1222, $1004, $0c03
	Win_EN $041c, $020e, $1443, $061d, $1014, $1021
	Loss_EN $2538, $0e1d, $ffff, $1405, $1021, $ffff

	Intro_JP $0a02, $041c, $020e, $1222, $1004, $0c03
	Win_JP $041c, $020e, $1443, $061d, $1014, $1021
	Loss_JP $2538, $0e1d, $ffff, $1405, $1021, $ffff

	Pokemon CACTURNE
	Holds SHELL_BELL
	Moves LEECH_SEED, FAINT_ATTACK, COUNTER, NEEDLE_ARM
	Level 55
	PP_Ups 0,0,0,0
	EVs 255,255,0,0,0,0
	OT_ID 00000, 00000
	IVs 15,15,31,15,31,15, 0
	PV $000000DC
	Text_EN "CACTURNE"11
	Text_JP "ノクタス"11
	Friendship 255

	Pokemon LUDICOLO
	Holds LEFTOVERS
	Moves DIVE, LEECH_SEED, TOXIC, ATTRACT
	Level 52
	PP_Ups 0,0,0,0
	EVs 255,0,255,0,0,0
	OT_ID 00000, 00000
	IVs 15,15,31,15,15,31, 1
	PV $00000014
	Text_EN "LUDICOLO"11
	Text_JP "ルンパッパ"11
	Friendship 255

	Pokemon SCEPTILE
	Holds LUM_BERRY
	Moves LEECH_SEED, LEAF_BLADE, DRAGON_CLAW, DOUBLE_TEAM
	Level 54
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, 0
	PV $000000D7
	Text_EN "SCEPTILE"11
	Text_JP "ジュカイン"11
	Friendship 255

	End_Trainer