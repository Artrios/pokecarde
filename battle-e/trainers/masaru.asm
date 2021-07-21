INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 0
	db TC_BLACK_BELT
	BT_Floor 0
	Text_EN "MASARU"8
	Text_JP "マサル"8
	OT_ID 00000, 00000

	Intro_EN $0c11, $0c01, $ffff, $061e, $2808, $0c01
	Win_EN $0c10, $ffff, $ffff, $0421, $250c, $0c01
	Loss_EN $0e2c, $1002, $0c03, $061e, $062e, $0c03

	Intro_JP $0c11, $0c01, $ffff, $061e, $2808, $0c01
	Win_JP $0c10, $ffff, $ffff, $0421, $250c, $0c01
	Loss_JP $0e2c, $1002, $0c03, $061e, $062e, $0c03

	Pokemon MEDICHAM
	Holds BLACK_BELT
	Moves DETECT, RECOVER, HI_JUMP_KICK, PSYCHIC
	Level 52
	PP_Ups 0,0,0,0
	EVs 0,255,0,0,255,0
	OT_ID 00000, 00000
	IVs 15,31,15,15,31,15, 0
	PV $0000001F
	Text_EN "MEDICHAM"11
	Text_JP "チャーレム"11
	Friendship 255

	Pokemon MACHAMP
	Holds SCOPE_LENS
	Moves BULK_UP, CROSS_CHOP, EARTHQUAKE, ROCK_SLIDE
	Level 51
	PP_Ups 0,0,0,0
	EVs 0,255,0,255,0,0
	OT_ID 00000, 00000
	IVs 15,31,15,31,15,15, 0
	PV $000000E4
	Text_EN "MACHAMP"11
	Text_JP "カイリキー"11
	Friendship 255

	Pokemon HERACROSS
	Holds SALAC_BERRY
	Moves MEGAHORN, ENDURE, REVERSAL, EARTHQUAKE
	Level 53
	PP_Ups 0,0,0,0
	EVs 0,255,0,255,0,0
	OT_ID 00000, 00000
	IVs 15,31,15,31,15,15, 0
	PV $000000E4
	Text_EN "HERACROSS"11
	Text_JP "ヘラクロス"11
	Friendship 255

	End_Trainer