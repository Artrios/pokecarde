INCLUDE "berries/macros.asm"

	Enigma_Berry

	Text_EN "EGGANT@"7
	Firmness SOFT
	Size 4,1
	Yield_Range 2, 3
	dd 0
	dd 0
	Growth_Stage_Hours 18
	Flavor 0, 40, 0, 0, 0
	Smoothness 65

BerrySprite:
	INCBIN "sprites/berries/eggant.4bpp"
BerryPalette:
	INCLUDE "sprites/berries/eggant.pal"

	Text_EN "Very dry tasting, especially the"45
	Text_EN "parts not exposed to the sun."45

	db 0,0,0
	db $00
	db 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0
	db $1C ; self-cure infatuation
	db 0,0,0

	End_Berry