INCLUDE "../macros.asm"
SECTION "prologue", ROM0[$100]

	db "GameFreak inc."
	db 0,0,0,0,0,0
	db $78,$56,$34,$12,$56,$AD,$95,$BF,$FF
	db 0,0,0,0,0,0,0,$01,$55
	db 0,0,0,0
	db REGION
	db 0
	db "GameFreak inc."
	db 0,0

	EOF