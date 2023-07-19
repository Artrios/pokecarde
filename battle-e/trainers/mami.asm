INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 50
	db PKMN_BREEDER_F
	BT_Floor 5
	Text_EN "MAMI"8
	Text_JP "マミ"8
	OT_ID 00000, 00000

	Intro_EN $040c, $0e16, $100b, $142f, $1044, $ffff
	Win_EN $0c32, $1032, $0c03, $0a3d, $0620, $1021
	Loss_EN $040b, $0c06, $0e1f, $062e, $1004, $0c06

	Intro_JP $040c, $0e16, $100b, $142f, $1044, $ffff
	Win_JP $0c32, $1032, $0c03, $0a3d, $0620, $1021
	Loss_JP $040b, $0c06, $0e1f, $062e, $1004, $0c06

	Pokemon GARDEVOIR
	Holds SITRUS_BERRY
	Moves PSYCHIC, THUNDERBOLT, WILL_O_WISP, CALM_MIND
	Level 50
	PP_Ups 0,0,0,0
	EVs 6,0,0,252,252,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, 0
	PV $0000000F
	Text_EN "GARDEVOIR"11
	Text_JP "サーナイト"11
	Friendship 255

	Pokemon NINETALES
	Holds LUM_BERRY
	Moves FLAMETHROWER, CONFUSE_RAY, SAFEGUARD, GRUDGE
	Level 50
	PP_Ups 0,0,0,0
	EVs 6,0,0,252,252,0
	OT_ID 00000, 00000
	IVs 31,15,15,15,31,15, 0
	PV $0000000F
	Text_EN "NINETALES"11
	Text_JP "キュウコン"11
	Friendship 255

	Pokemon MILOTIC
	Holds LEFTOVERS
	Moves TOXIC, DIVE, PROTECT, RECOVER
	Level 50
	PP_Ups 0,0,0,0
	EVs 252,0,252,0,0,6
	OT_ID 00000, 00000
	IVs 31,15,31,15,15,15, 0
	PV $0000000F
	Text_EN "MILOTIC"11
	Text_JP "ミロカロス"11
	Friendship 255

	End_Trainer