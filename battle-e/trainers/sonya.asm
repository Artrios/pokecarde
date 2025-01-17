INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level MOSSDEEP
	Class TUBER_F
	BT_Floor MOSSDEEP
	Text_EN "SONYA"8
	Text_JP "ジュンコ"8
	OT_ID 00000, 00000

	Intro_EN GROUND,POKEMON,ARE,SO,SCARY,_ELIP
	Win_EN   MY,SURPRISE,STRATEGY,WAS,PERFECT,_QU_EX
	Loss_EN  SIGH,_ELIP,MY,STRATEGY,DOESN_T,WORK

	Intro_JP $0a45, $0426, $0432, $1219, $0c06, $0c25
	Win_JP $2536, $0616, $1419, $1014, $0c02, $ffff
	Loss_JP $0616, $1014, $0e0a, $060a, $0c06, $1220

	Pokemon CLAYDOL
	Holds BRIGHTPOWDER
	Moves PSYCHIC, EARTHQUAKE, ICE_BEAM, REFLECT
	Level 51
	PP_Ups 0,0,0,0
	EVs 0,0,255,0,0,255
	OT_ID 00000, 00000
	IVs 15,31,15,15,31,15, CLAYDOL_LEVITATE
	PV $00000020 ; ⚲ Relaxed
	Text_EN "CLAYDOL"11
	Text_JP "ネンドール"11
	Friendship 255

	Pokemon CHIMECHO
	Holds TWISTEDSPOON
	Moves PSYCHIC, SHADOW_BALL, LIGHT_SCREEN, DISABLE
	Level 53
	PP_Ups 0,0,0,0
	EVs 255,0,0,0,255,0
	OT_ID 00000, 00000
	IVs 31,15,15,15,31,0, CHIMECHO_LEVITATE
	PV $0000000F ; ♀ Modest
	Text_EN "CHIMECHO"11
	Text_JP "チリーン"11
	Friendship 255

	Pokemon WEEZING
	Holds LAX_INCENSE
	Moves SLUDGE_BOMB, THUNDERBOLT, FLAMETHROWER, EXPLOSION
	Level 55
	PP_Ups 0,0,0,0
	EVs 0,255,0,0,0,255
	OT_ID 00000, 00000
	IVs 15,31,15,15,31,15, WEEZING_LEVITATE
	PV $000000D9 ; ♂ Quiet
	Text_EN "WEEZING"11
	Text_JP "マタドガス"11
	Friendship 255

	End_Trainer