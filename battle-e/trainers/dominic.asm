INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level MOSSDEEP
	Class GUITARIST
	BT_Floor MOSSDEEP
	Text_EN "DOMINIC"8
	Text_JP "カツヒロ"8
	OT_ID 00000, 00000

	Intro_EN LISTEN,TO,MY,SONG,_AND,SPIRIT
	Win_EN   WOW,_EX_EX,ARE,YOU,LISTENING,_QU
	Loss_EN  ARRGH,I,DON_T,LIKE,SAD,SONGS

	Intro_JP $0a14, $262e, $0c01, $0c3c, $0c01, $ffff
	Win_JP $0a14, $1034, $ffff, $26bf, $1a19, $0c3c
	Loss_JP $0a14, $1034, $ffff, $200d, $1a19, $1220

	Pokemon SKARMORY
	Holds SHARP_BEAK
	Moves SPIKES, ROAR, DRILL_PECK, STEEL_WING
	Level 72
	PP_Ups 0,0,0,0
	EVs 0,0,0,255,0,255
	OT_ID 00000, 00000
	IVs 15,31,15,15,15,31, SKARMORY_STURDY
	PV $000000DF ; ♂ Careful
	Text_EN "SKARMORY"11
	Text_JP "エアームド"11
	Friendship 255

	Pokemon WAILORD
	Holds CHESTO_BERRY
	Moves ROAR, SURF, SLEEP_TALK, REST
	Level 70
	PP_Ups 0,0,0,0
	EVs 0,0,255,0,0,255
	OT_ID 00000, 00000
	IVs 15,15,31,15,15,31, WAILORD_WATER_VEIL
	PV $00000014 ; ♀ Calm
	Text_EN "WAILORD"11
	Text_JP "ホエルオー"11
	Friendship 255

	Pokemon EXPLOUD
	Holds SILK_SCARF
	Moves ROAR, HYPER_VOICE, ICE_BEAM, FLAMETHROWER
	Level 74
	PP_Ups 0,0,0,0
	EVs 255,55,100,0,0,100
	OT_ID 00000, 00000
	IVs 15,15,31,15,15,31, EXPLOUD_SOUNDPROOF
	PV $000000E8 ; ♂ Relaxed
	Text_EN "EXPLOUD"11
	Text_JP "バクオング"11
	Friendship 255

	End_Trainer