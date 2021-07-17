INCLUDE "trainers/macros.asm"

	Battle_Trainer

	BT_Level 100
	db EXPERT_M
	BT_Floor 5
	Text_JP "フゲン"8
	OT_ID 00000, 00000

	Intro_JP $1620, $140f, $1005, $0a28, $061d, $0c05
	Win_JP $24b3, $1034, $0612, $1e1b, $100b, $0c01
	Loss_JP $141a, $100b, $0c00, $0e2d, $24b3, $0c01

	Pokemon RAICHU
	Holds LEFTOVERS
	Moves REVERSAL, THUNDERBOLT, THUNDER_WAVE, SLAM
	Level 100
	PP_Ups 0,0,0,0
	EVs 6,0,0,252,252,0
	OT_ID 00000, 00000
	IVs 20,20,20,31,31,20, 0
	PV $0000001D
	Text_JP "ライチュウ"11
	Friendship 255

	Pokemon MEDICHAM
	Holds LUM_BERRY
	Moves REVERSAL, HI_JUMP_KICK, ICE_PUNCH, PSYCHIC
	Level 100
	PP_Ups 0,0,0,0
	EVs 252,0,0,252,0,6
	OT_ID 00000, 00000
	IVs 31,20,20,31,20,20, 0
	PV $00000080
	Text_JP "チャーレム"11
	Friendship 255

	Pokemon BLAZIKEN
	Holds SALAC_BERRY
	Moves REVERSAL, BLAZE_KICK, SKY_UPPERCUT, ENDURE
	Level 100
	PP_Ups 0,0,0,0
	EVs 6,252,0,252,0,0
	OT_ID 00000, 00000
	IVs 20,31,20,31,20,20, 0
	PV $000000E2
	Text_JP "バシャーモ"11
	Friendship 255

	End_Trainer