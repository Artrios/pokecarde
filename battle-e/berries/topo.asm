INCLUDE "berries/macros.asm"
	
	Enigma_Berry

	Text_EN "POTOTO@"7
	;Text_JP "トポ@@@@@"7	
	Firmness VERY_HARD
	Size 8,8
	Yield_Range 4, 12
	dd 0
	dd 0
	Growth_Stage_Hours 24
	Flavor 0, 0, 30, 0, 30
	Smoothness 85

BerrySprite:
	INCBIN "sprites/berries/topo.4bpp"
BerryPalette:
	INCLUDE "sprites/berries/topo.pal"

	Text_EN "It grows slowly, but abundantly."45
	Text_EN "Its full of sweet and sour juice."45
	
	;Text_JP "そだちは　おそいが　たくさんの　みが　つく。"45
	;Text_JP "なかみは　あまずっぱい　しるで　いっぱい。"45	

	REPT 22
		db 0 ; Pokéblock ingredient only
	ENDR

	End_Berry