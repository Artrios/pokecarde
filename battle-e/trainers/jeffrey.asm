INCLUDE "macros.asm"

	BT_Level MOSSDEEP
	db YOUNGSTER
	BT_Floor MOSSDEEP
	OT_Name "JEFFREY"
	OT_ID 00000, 00000

	Introduction I,WILL,SHOW,YOU,MY,SECRET
	After_Win    YEAH,MY,SECRET,_ELIP,IS,SECRET
	After_Loss   GO_EASY,ON,ME,_ELIP,PLEASE,_EX

	Pokemon PINSIR
	Holds KING_S_ROCK
	Moves SWORDS_DANCE, GUILLOTINE, EARTHQUAKE, BRICK_BREAK
	Level 60
	PP_Ups 0,0,0,0
	EVs 252,0,6,0,0,252
	OT_ID 00000, 00000
	IVs 31,15,15,15,15,31, PINSIR_HYPER_CUTTER
	PV $00000080 ; ♂ Adamant
	Nickname "PINSIR"
	Friendship 255

	Pokemon NINETALES
	Holds CHARCOAL
	Moves FLAMETHROWER, CONFUSE_RAY, IRON_TAIL, FIRE_SPIN
	Level 62
	PP_Ups 0,0,0,0
	EVs 6,0,0,252,252,0
	OT_ID 00000, 00000
	IVs 31,15,15,15,31,15, NINETALES_FLASH_FIRE
	PV $0000000F ; ♀ Modest
	Nickname "NINETALES"
	Friendship 255

	Pokemon BLASTOISE
	dw MYSTIC_WATER
	Moves SURF, BRICK_BREAK, EARTHQUAKE, ICE_BEAM
	Level 64
	PP_Ups 0,0,0,0
	EVs 252,0,0,0,252,6
	OT_ID 00000, 00000
	IVs 31,15,15,15,31,15, BLASTOISE_TORRENT
	PV $00000083 ; ♂ Docile
	Nickname "BLASTOISE"
	Friendship 255
