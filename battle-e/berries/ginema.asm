INCLUDE "berries/macros.asm"

	Enigma_Berry

	Text_EN "NIONIO@"7
	;Text_JP "ギネマ@@@@"7	
	Firmness VERY_HARD
	Size 3,5
	Yield_Range 2, 3
	dd 0
	dd 0
	Growth_Stage_Hours 18
	Flavor 0, 30, 0, 0, 30
	Smoothness 70

BerrySprite:
	INCBIN "sprites/berries/ginema.4bpp"
BerryPalette:
	INCLUDE "sprites/berries/ginema.pal"

	Text_EN "If you peel off its thin skin,"45
	Text_EN "this sour BERRY is perfectly round."45
	
	;Text_JP "うすい　かわを　すべて　むくと　まんまるい"45
	;Text_JP "みに　なる。　とても　しぶくて　すっぱい。"45	

	db 0,0,0
	db $00
	db 0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db $17 ; self-restores a lowered stat
	db 0,0,0

	End_Berry