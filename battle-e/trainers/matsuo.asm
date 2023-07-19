INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db RICH_BOY
	BT_Floor 0
	Text_EN "MATSUO"8
	Text_JP "マツオ"8
	OT_ID 00000, 00000

	Intro_EN $0e31, $0418, $020e, $0e0b, $0602, $0c00
	Win_EN $0e31, $1427, $100c, $0a1d, $020e, $0c00
	Loss_EN $1c12, $0e0b, $0e31, $0620, $020e, $1645

	Intro_JP $0e31, $0418, $020e, $0e0b, $0602, $0c00
	Win_JP $0e31, $1427, $100c, $0a1d, $020e, $0c00
	Loss_JP $1c12, $0e0b, $0e31, $0620, $020e, $1645

	Pokemon SPHEAL
	Holds CHERI_BERRY
	Moves AURORA_BEAM, EARTHQUAKE, REST, SNORE
	Level 92
	PP_Ups 0,0,0,0
	EVs 0,255,0,0,255,0
	OT_ID 00000, 00000
	IVs 15,31,15,15,31,15, 0
	PV $00000011
	Text_EN "SPHEAL"11
	Text_JP "タマザラシ"11
	Friendship 255

	Pokemon JIGGLYPUFF
	Holds PERSIM_BERRY
	Moves SING, DOUBLE_EDGE, PSYCHIC, THUNDERBOLT
	Level 91
	PP_Ups 0,0,0,0
	EVs 0,255,0,0,255,0
	OT_ID 00000, 00000
	IVs 15,31,15,15,31,15, 0
	PV $0000001B
	Text_EN "JIGGLYPUFF"11
	Text_JP "プリン"11
	Friendship 255

	Pokemon MARILL
	Holds PECHA_BERRY
	Moves SURF, ICE_BEAM, DIG, DOUBLE_EDGE
	Level 94
	PP_Ups 0,0,0,0
	EVs 0,255,0,0,255,0
	OT_ID 00000, 00000
	IVs 15,31,15,15,31,15, 1
	PV $0000001F
	Text_EN "MARILL"11
	Text_JP "マリル"11
	Friendship 255

	End_Trainer