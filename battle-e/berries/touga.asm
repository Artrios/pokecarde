INCLUDE "berries/macros.asm"

	Enigma_Berry

	Text_EN "REPED@@"7
	;Text_JP "トウガ@@@@"7
	Firmness SUPER_HARD
	Size 15,3
	Yield_Range 2, 3
	dd 0
	dd 0
	Growth_Stage_Hours 18
	Flavor 40, 0, 00, 0, 0
	Smoothness 65

BerrySprite:
	INCBIN "sprites/berries/touga.4bpp"
BerryPalette:
	INCLUDE "sprites/berries/touga.pal"

	Text_EN "This BERRY is amazingly spicy."45
	Text_EN "No one has been able to eat it whole."45
	
	;Text_JP "とてつもなく　からい。　１どに　まるごと"45
	;Text_JP "たべられた　ひとは　まだ　だれも　いない。"45	

	db 0,0,0
	db $01 ; cures confusion
	db 0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db $08 ; self-cures confusion
	db 0,0,0

	End_Berry