INCLUDE "berries/macros.asm"
	
	Enigma_Berry

	Text_EN "CHILAN@"7
	Firmness SOFT
	Size 27,2
	Yield_Range 1, 2
	dd 0
	dd 0
	Growth_Stage_Hours 1
	Flavor 30, 0, 30, 0, 0
	Smoothness 85

BerrySprite:
	INCBIN "sprites/berries/chilan.4bpp"
BerryPalette:
	INCLUDE "sprites/berries/chilan.pal"

	Text_EN "This sparse BERRY grows quickly."45
	Text_EN "Its skin is quite tough."45

	REPT 22
		db 0 ; Pokéblock ingredient only
	ENDR

	End_Berry