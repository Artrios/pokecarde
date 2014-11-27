INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level MOSSDEEP
	Class GENTLEMAN
	BT_Floor MOSSDEEP
	Text_EN "ANTONIO"8
	OT_ID 00000, 00000

	Intro_EN HMM,HOW,ARE,MY,POKEMON,_QU
	Win_EN   HMM,HOW,WERE,MY,POKEMON,_QU_EX
	Loss_EN  NOTHING,MUCH,ABOUT,MY,POKEMON,_ELIP

	Pokemon DONPHAN
	Holds SITRUS_BERRY
	Moves EARTHQUAKE, ROCK_TOMB, SUNNY_DAY, FISSURE
	Level 53
	PP_Ups 0,0,0,0
	EVs 255,255,0,0,0,0
	OT_ID 00000, 00000
	IVs 31,31,15,15,15,15, DONPHAN_STURDY
	PV $000000E4 ; ♂ Adamant
	Text_EN "DONPHAN"11
	Friendship 255

	Pokemon SKARMORY
	Holds SHARP_BEAK
	Moves DRILL_PECK, STEEL_WING, METAL_SOUND, FACADE
	Level 55
	PP_Ups 0,0,0,0
	EVs 0,255,0,255,0,0
	OT_ID 00000, 00000
	IVs 15,31,15,31,15,15, SKARMORY_STURDY
	PV $0000001C ; ♀ Adamant
	Text_EN "SKARMORY"11
	Friendship 255

	Pokemon HOUNDOOM
	Holds CHESTO_BERRY
	Moves OVERHEAT, IRON_TAIL, SLUDGE_BOMB, REST
	Level 60
	PP_Ups 0,0,0,0
	EVs 0,252,0,6,252,0
	OT_ID 00000, 00000
	IVs 15,31,15,31,31,15, HOUNDOOM_EARLY_BIRD
	PV $000000E1 ; ♂ Hardy
	Text_EN "HOUNDOOM"11
	Friendship 255

	End_Trainer