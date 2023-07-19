INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level MOSSDEEP
	Class LADY
	BT_Floor MOSSDEEP
	Text_EN "SOPHIE"8
	Text_JP "マミナ"8
	OT_ID 00000, 00000

	Intro_EN MY,CUTENESS,WILL,_STOP,YOU,_EX
	Win_EN   FUFUFU,DID,YOU,LIKE,IT,_QU_EX
	Loss_EN  EH_,YOU,ARE,VERY,CUTE,TOO

	Intro_JP $0a48, $0419, $0e28, $2432, $1026, $0c00
	Win_JP $0c13, $ffff, $ffff, $26d5, $1e11, $0c03
	Loss_JP $0419, $1034, $1402, $0a46, $26d5, $0c05

	Pokemon DELCATTY
	Holds SILK_SCARF
	Moves SING, REST, SUBSTITUTE, DOUBLE_EDGE
	Level 90
	PP_Ups 0,0,0,0
	EVs 0,255,0,255,0,0
	OT_ID 00000, 00000
	IVs 15,31,15,31,15,15, ABILITY1
	PV $0000001C ; ♀ Adamant
	Text_EN "DELCATTY"11
	Text_JP "エネコロロ"11
	Friendship 255

	Pokemon LUVDISC
	Holds MENTAL_HERB
	Moves ATTRACT, SWEET_KISS, SURF, FLAIL
	Level 92
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, ABILITY1
	PV $000000E7 ; ♂ Docile
	Text_EN "LUVDISC"11
	Text_JP "ラブカス"11
	Friendship 255

	Pokemon KIRLIA
	Holds BRIGHT_POWDER
	Moves ATTRACT, PSYCHIC, HYPNOSIS, DREAM_EATER
	Level 90
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, ABILITY2
	PV $0000000F ; ♀ Modest
	Text_EN "KIRLIA"11
	Text_JP "キルリア"11
	Friendship 255

	End_Trainer