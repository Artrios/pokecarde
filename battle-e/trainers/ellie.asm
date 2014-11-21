INCLUDE "macros.asm"

	BT_Level MOSSDEEP
	Class BEAUTY
	BT_Floor MOSSDEEP
	OT_Name "ELLIE"
	OT_ID 00000, 00000

	Introduction I_AM,ON,A_LITTLE,DIET,_AND,HUNGRY
	After_Win    THIS,DIET,IS,REALLY,WORKING,ME
	After_Loss   SHOULD,I,EAT,LESS,_OR,MORE

	Pokemon CASTFORM
	Holds HEART_SCALE
	Moves RAIN_DANCE, WEATHER_BALL, THUNDER, ATTRACT
	Level 75
	PP_Ups 0,0,0,0
	EVs 252,0,6,0,252,0
	OT_ID 00000, 00000
	IVs 31,15,15,15,31,15, CASTFORM_FORECAST
	PV $0000000F ; ♀ Modest
	Nickname "CASTFORM"
	Friendship 255

	Pokemon KOFFING
	Holds PEARL
	Moves SLUDGE_BOMB, THUNDER, EXPLOSION, FLAMETHROWER
	Level 80
	PP_Ups 0,0,0,0
	EVs 252,6,0,0,0,252
	OT_ID 00000, 00000
	IVs 31,15,15,15,15,31, KOFFING_LEVITATE
	PV $0000008F ; ♂ Bashful
	Nickname "KOFFING"
	Friendship 255

	Pokemon CHIMECHO
	Holds STARDUST
	Moves PSYCHIC, CALM_MIND, LIGHT_SCREEN, YAWN
	Level 85
	PP_Ups 0,0,0,0
	EVs 252,0,6,0,252,0
	OT_ID 00000, 00000
	IVs 31,15,15,15,31,15, CHIMECHO_LEVITATE
	PV $0000000F ; ♀ Modest
	Nickname "CHIMECHO"
	Friendship 255
