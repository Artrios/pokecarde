INCLUDE "macros.asm"

	BT_Level MOSSDEEP
	db PICNICKER
	BT_Floor MOSSDEEP
	OT_Name "RENEE"
	OT_ID 00000, 00000

	Introduction MY,NATURE,IS,_ELIP,STATIC,_EX
	After_Win    MY,FEELING,IS,NOW,LIKE,_SUNNY_DAY
	After_Loss   MY,FEELING,IS,NOW,LIKE,DRIZZLE

	Pokemon CASTFORM
	dw PETAYA_BERRY
	Moves WEATHER_BALL, SOLARBEAM, SUNNY_DAY, FLAMETHROWER
	Level 72
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, CASTFORM_FORECAST
	PV $00000012 ; ♀ Bashful
	Nickname "CASTFORM"
	Friendship 255

	Pokemon CASTFORM
	Holds SALAC_BERRY
	Moves WEATHER_BALL, THUNDER, RAIN_DANCE, THUNDERBOLT
	Level 70
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, CASTFORM_FORECAST
	PV $000000DA ; ♂ Bashful
	Nickname "CASTFORM"
	Friendship 255

	Pokemon CASTFORM
	dw APICOT_BERRY
	Moves WEATHER_BALL, BLIZZARD, HAIL, ICE_BEAM
	Level 74
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,255,0
	OT_ID 00000, 00000
	IVs 15,15,15,31,31,15, CASTFORM_FORECAST
	PV $00000012 ; ♀ Bashful
	Nickname "CASTFORM"
	Friendship 255
