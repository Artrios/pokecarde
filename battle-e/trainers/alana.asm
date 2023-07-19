INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level MOSSDEEP
	Class POKEFAN_F
	BT_Floor MOSSDEEP
	Text_EN "ALANA"8
	Text_JP "チズ"8
	OT_ID 00000, 00000

	Intro_EN LET_S,START,THIS,_ELIP,BATTLE,_EX
	Win_EN   OH_,DID,I,_ELIP,WIN,_QU
	Loss_EN  OH_,DID,I,_ELIP,LOSE,_QU

	Intro_JP $0e0e, $0c06, $0c06, $061c, $0c06, $1005
	Win_JP $0c0c, $0c06, $0c06, $0607, $0c03, $ffff
	Loss_JP $0c0c, $0c06, $0c06, $062e, $0c03, $ffff

	Pokemon TORKOAL
	Holds QUICK_CLAW
	Moves OVERHEAT, BODY_SLAM, FLAIL, YAWN
	Level 82
	PP_Ups 0,0,0,0
	EVs 0,0,0,0,255,255
	OT_ID 00000, 00000
	IVs 15,15,15,15,31,31, ABILITY1
	PV $000000D9 ; ♂ Quiet
	Text_EN "TORKOAL"11
	Text_JP "コータス"11
	Friendship 255

	Pokemon DUSCLOPS
	Holds CHESTO_BERRY
	Moves CONFUSE_RAY, WILL_O_WISP, TOXIC, REST
	Level 80
	PP_Ups 0,0,0,0
	EVs 0,0,255,0,0,255
	OT_ID 00000, 00000
	IVs 15,15,31,15,15,31, ABILITY1
	PV $00000016 ; ♀ Sassy
	Text_EN "DUSCLOPS"11
	Text_JP "サマヨール"11
	Friendship 255

	Pokemon CORSOLA
	Holds MYSTIC_WATER
	Moves SURF, ROCK_TOMB, MIRROR_COAT, RECOVER
	Level 85
	PP_Ups 0,0,0,0
	EVs 0,0,0,0,255,255
	OT_ID 00000, 00000
	IVs 15,15,15,15,31,31, ABILITY2
	PV $0000001B ; ♀ Brave
	Text_EN "CORSOLA"11
	Text_JP "サニーゴ"11
	Friendship 255

	End_Trainer