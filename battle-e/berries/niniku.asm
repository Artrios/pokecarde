INCLUDE "berries/macros.asm"
	
	Enigma_Berry

	Text_EN "GARIC@@"7
	;Text_JP "ニニク@@@@"7	
	Firmness HARD
	Size 24,9
	Yield_Range 1, 2
	dd 0
	dd 0
	Growth_Stage_Hours 1
	Flavor 0, 30, 0, 30, 0
	Smoothness 85

BerrySprite:
	INCBIN "sprites/berries/niniku.4bpp"
BerryPalette:
	INCLUDE "sprites/berries/niniku.pal"

	Text_EN "This sparse BERRY grows quickly."45
	Text_EN "Its stem gives off a pleasant aroma."45
	
	;Text_JP "そだちは　はやいが　あまり　みが　つかない。"45
	;Text_JP "くきを　とおって　よい　かおりが　でてくる。"45	

	REPT 22
		db 0 ; Pokéblock ingredient only
	ENDR

	End_Berry