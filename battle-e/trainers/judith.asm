INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level MOSSDEEP
	Class PSYCHIC_F
	BT_Floor MOSSDEEP
	Text_EN "JUDITH"8
	Text_JP "ナナエ"8
	OT_ID 00000, 00000

	Intro_EN WELCOME,_ELIP_EX,I_AM,_A,_TRICK,_T_PSYCHIC
	Win_EN   ISN_T,MY,_TRICK,SO,COOL,_QU
	Loss_EN  _A,GOOD,_TRICK,IS,NEVER,EASY

	Intro_JP $0828, $0c05, $ffff, $0a45, $270f, $040e
	Win_JP $0a45, $1034, $270f, $1423, $1021, $ffff
	Loss_JP $270f, $0e17, $1229, $102b, $103f, $0c00

	Pokemon ALAKAZAM
	Holds CHOICE_BAND
	Moves TRICK, DISABLE, PSYCHIC, REFLECT
	Level 70
	PP_Ups 0,0,0,0
	EVs 6,0,0,252,252,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, ABILITY1
	PV $00000087 ; ♂ Timid
	Text_EN "ALAKAZAM"11
	Text_JP "フーディン"11
	Friendship 255

	Pokemon KECLEON
	Holds CHOICE_BAND
	Moves TRICK, BLIZZARD, FIRE_BLAST, THUNDER
	Level 72
	PP_Ups 0,0,0,0
	EVs 252,0,252,0,6,0
	OT_ID 00000, 00000
	IVs 31,15,31,15,15,15, ABILITY1
	PV $00000016 ; ⚲ Sassy
	Text_EN "KECLEON"11
	Text_JP "カクレオン"11
	Friendship 255

	Pokemon LINOONE
	Holds CHOICE_BAND
	Moves TRICK, RETURN, ROAR, ATTRACT
	Level 74
	PP_Ups 0,0,0,0
	EVs 252,6,0,252,0,0
	OT_ID 00000, 00000
	IVs 31,15,15,31,15,15, ABILITY1
	PV $00000085 ; ♂ Impish
	Text_EN "LINOONE"11
	Text_JP "マッスグマ"11
	Friendship 255

	End_Trainer