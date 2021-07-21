INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db GUITARIST
	BT_Floor 0
	Text_EN "KYOHEI"8
	Text_JP "キョウヘイ"8
	OT_ID 00000, 00000

	Intro_EN $2010, $0612, $1621, $1236, $100e, $ffff
	Win_EN $0612, $1628, $0e2b, $0a1e, $122f, $0c01
	Loss_EN $0a1d, $0612, $0e28, $060c, $100e, $ffff

	Intro_JP $2010, $0612, $1621, $1236, $100e, $ffff
	Win_JP $0612, $1628, $0e2b, $0a1e, $122f, $0c01
	Loss_JP $0a1d, $0612, $0e28, $060c, $100e, $ffff

	Pokemon RAICHU
	Holds MAGNET
	Moves THUNDER, RAIN_DANCE, FACADE, REVERSAL
	Level 54
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, 0
	PV $000000D7
	Text_EN "RAICHU"11
	Text_JP "ライチュウ"11
	Friendship 255

	Pokemon SHARPEDO
	Holds SHELL_BELL
	Moves SURF, CRUNCH, EARTHQUAKE, ROCK_TOMB
	Level 56
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00000, 00000
	IVs 15,31,15,15,31,15, 0
	PV $000000E1
	Text_EN "SHARPEDO"11
	Text_JP "サメハダー"11
	Friendship 255

	Pokemon ROSELIA
	Holds POISON_BARB
	Moves SLUDGE_BOMB, GIGA_DRAIN, GRASSWHISTLE, SYNTHESIS
	Level 58
	PP_Ups 0,0,0,0
	EVs 0,255,0,0,255,0
	OT_ID 00000, 00000
	IVs 15,31,15,31,15,15, 1
	PV $00000019
	Text_EN "ROSELIA"11
	Text_JP "ロゼリア"11
	Friendship 255

	End_Trainer