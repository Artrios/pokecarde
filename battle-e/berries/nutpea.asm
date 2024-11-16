INCLUDE "berries/macros.asm"

	Enigma_Berry

	Text_EN "NUTPEA@"7
	Firmness SUPER_HARD
	Size 12,4
	Yield_Range 1, 3
	dd 0
	dd 0
	Growth_Stage_Hours 18
	Flavor 10, 10, 10, 10, 10
	Smoothness 5

BerrySprite:
	INCBIN "sprites/berries/nutpea.4bpp"
BerryPalette:
	INCLUDE "sprites/berries/nutpea.pal"

	Text_EN "This BERRY is rigid and cracks open"45
	Text_EN "when the center is squeezed."45

	REPT 22
		db 0 ; Pokéblock ingredient only
	ENDR

	End_Berry