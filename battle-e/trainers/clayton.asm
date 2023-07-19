INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 50
	Class PKMN_RANGER_M
	BT_Floor 5
	Text_EN "CLAYTON"8
	Text_JP "エイコウ"8
	OT_ID 00000, 00000

	Intro_EN HEHE,MY,BATTLE,ISN_T,THAT,SHAKY
	Win_EN   HEHE,_ELIP,_EARTHQUAKE,IS,VERY,SHAKY
	Loss_EN  UH_OH,MY,ATTACK,WAS,A_LITTLE,SHAKY

	Intro_JP $0606, $2459, $0c06, $1404, $103e, $ffff
	Win_JP $0c30, $0c06, $ffff, $2459, $0620, $1019
	Loss_JP $0c09, $0c06, $ffff, $2459, $2001, $ffff

	Pokemon FLYGON
	Holds SOFT_SAND
	Moves EARTHQUAKE, DRAGON_CLAW, GIGA_DRAIN, FLAMETHROWER
	Level 50
	PP_Ups 0,0,0,0
	EVs 0,252,0,252,6,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,15,15, ABILITY1
	PV $00000090 ; ♂ Rash
	Text_EN "FLYGON"11
	Text_JP "フライゴン"11
	Friendship 255

	Pokemon RHYDON
	Holds QUICK_CLAW
	Moves EARTHQUAKE, THUNDERBOLT, MEGAHORN, ROCK_TOMB
	Level 50
	PP_Ups 0,0,0,0
	EVs 252,252,0,0,0,6
	OT_ID 00000, 00000
	IVs 31,31,15,15,15,15, ABILITY2
	PV $0000001B ; ♀ Brave
	Text_EN "RHYDON"11
	Text_JP "サイドン"11
	Friendship 255

	Pokemon SWAMPERT
	Holds LEFTOVERS
	Moves EARTHQUAKE, SURF, PROTECT, IRON_TAIL
	Level 50
	PP_Ups 0,0,0,0
	EVs 252,252,0,0,0,6
	OT_ID 00000, 00000
	IVs 31,31,15,15,15,15, ABILITY1
	PV $0000007E ; ♂ Lonely
	Text_EN "SWAMPERT"11
	Text_JP "ラグラージ"11
	Friendship 255

	End_Trainer