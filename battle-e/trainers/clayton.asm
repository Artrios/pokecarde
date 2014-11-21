INCLUDE "macros.asm"

	BT_Level 50
	db PKMN_RANGER_M
	BT_Floor 5
	OT_Name "CLAYTON"
	OT_ID 00000, 00000

	Introduction HEHE,MY,BATTLE,ISN_T,THAT,SHAKY
	After_Win    HEHE,_ELIP,_EARTHQUAKE,IS,VERY,SHAKY
	After_Loss   UH_OH,MY,ATTACK,WAS,A_LITTLE,SHAKY

	Pokemon FLYGON
	Holds SOFT_SAND
	Moves EARTHQUAKE, DRAGON_CLAW, GIGA_DRAIN, FLAMETHROWER
	Level 50
	PP_Ups 0,0,0,0
	EVs 0,252,0,252,6,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,15,15, FLYGON_LEVITATE
	PV $00000090 ; ♂ Rash
	Nickname "FLYGON"
	Friendship 255

	Pokemon RHYDON
	Holds QUICK_CLAW
	Moves EARTHQUAKE, THUNDERBOLT, MEGAHORN, ROCK_TOMB
	Level 50
	PP_Ups 0,0,0,0
	EVs 252,252,0,0,0,6
	OT_ID 00000, 00000
	IVs 31,31,15,15,15,15, RHYDON_ROCK_HEAD
	PV $0000001B ; ♀ Brave
	Nickname "RHYDON"
	Friendship 255

	Pokemon SWAMPERT
	Holds LEFTOVERS
	Moves EARTHQUAKE, SURF, PROTECT, IRON_TAIL
	Level 50
	PP_Ups 0,0,0,0
	EVs 252,252,0,0,0,6
	OT_ID 00000, 00000
	IVs 31,31,15,15,15,15, SWAMPERT_TORRENT
	PV $0000007E ; ♂ Lonely
	Nickname "SWAMPERT"
	Friendship 255
