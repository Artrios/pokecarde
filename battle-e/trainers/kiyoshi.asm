INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 50
	db PSYCHIC_M
	BT_Floor 12
	Text_EN "KIYOSHI"8
	Text_JP "キヨシ"8
	OT_ID 00000, 00000

	Intro_EN $143a, $061e, $ffff, $2023, $2017, $0c01
	Win_EN $1618, $100e, $ffff, $0a3a, $2546, $0c00
	Loss_EN $1427, $1014, $0c04, $0a3a, $2546, $0c06

	Intro_JP $143a, $061e, $ffff, $2023, $2017, $0c01
	Win_JP $1618, $100e, $ffff, $0a3a, $2546, $0c00
	Loss_JP $1427, $1014, $0c04, $0a3a, $2546, $0c06

	Pokemon GRUMPIG
	Holds LUM_BERRY
	Moves EXTRASENSORY, LIGHT_SCREEN, SHADOW_BALL, CONFUSE_RAY
	Level 50
	PP_Ups 0,0,0,0
	EVs 252,0,0,252,6,0
	OT_ID 00000, 00000
	IVs 31,15,15,31,15,15, 1
	PV $00000013
	Text_EN "GRUMPIG"11
	Text_JP "ブーピッグ"11
	Friendship 255

	Pokemon SHIFTRY
	Holds LEFTOVERS
	Moves EXTRASENSORY, BRICK_BREAK, GIGA_DRAIN, FEINT_ATTACK
	Level 50
	PP_Ups 0,0,0,0
	EVs 6,0,0,252,252,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, 1
	PV $00000011
	Text_EN "SHIFTRY"11
	Text_JP "ダーテング"11
	Friendship 255

	Pokemon EXPLOUD
	Holds CHESTO_BERRY
	Moves EXTRASENSORY, HYPER_VOICE, REST, SLEEP_TALK
	Level 50
	PP_Ups 0,0,0,0
	EVs 252,0,6,0,252,0
	OT_ID 00000, 00000
	IVs 31,15,15,15,31,15, 0
	PV $0000008C
	Text_EN "EXPLOUD"11
	Text_JP "バクオング"11
	Friendship 255

	End_Trainer