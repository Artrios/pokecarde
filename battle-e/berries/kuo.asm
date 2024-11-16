INCLUDE "berries/macros.asm"
	
	Enigma_Berry

	Text_EN "RAOK@@@"7
	;Text_JP "クオ@@@@@"7	
	Firmness HARD
	Size 22,0
	Yield_Range 1, 3
	dd 0
	dd 0
	Growth_Stage_Hours 18
	Flavor 10, 10, 10, 10, 10
	Smoothness 5

BerrySprite:
	INCBIN "sprites/berries/kuo.4bpp"
BerryPalette:
	INCLUDE "sprites/berries/kuo.pal"

	Text_EN "It has a tasty mix of five flavors,"45
	Text_EN "but feels a little rough to eat."45
	
	;Text_JP "５つの　あじが　まざって　おいしいが"45
	;Text_JP "くちの　なかが　ちょっぴり　ザラザラする。"45	

	REPT 22
		db 0 ; Pokéblock ingredient only
	ENDR

	End_Berry