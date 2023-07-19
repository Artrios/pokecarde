SECTION "drashberry",ROM0[$100]
jp Start
db $00

UnknownPalette:
	RGB 18,  0,  0
	RGB  0,  0,  0
	RGB 31, 31, 31
	RGB 15, 31, 31
	RGB  6, 15, 29

BackgroundSprite:
	INCBIN "sprites/berrybackdrop.4bpp"
BackgroundTilemap:
	INCBIN "sprites/berrybackdrop.tilemap"
BackgroundPalette:
	INCLUDE "sprites/berrybackdrop.pal"

REPT 72
	db 0
ENDR

Prologue:
	INCBIN "prologue-{REGION_NAME}.bin"

DataPacket:
	INCBIN "berries/{BERRY}-{REGION_NAME}.mev"
	db 0,0

INCLUDE "../common/mem_struct.asm"

BackgroundSpriteData:
	dw BackgroundSprite, BackgroundPalette, BackgroundTilemap
	db $05,$00,$01,$00
BerrySpriteData:
	dw (DataPacket+$18+$1C),(DataPacket+$18+$49C)
	db $06,$06,$01,$01,$01,$01,$01

Instructions1: ; B65
	db "Link e-Reader to Pokémon Emerald\n"
	db "and select MYSTERY EVENTS on the\n"
	db "game's main menu.\n"
	db "Press the B Button to cancel.\0"
Instructions2: ; BE1
	db "Press the A Button on the Game Boy\n"
	db "Advance containing Pokémon Emerald\n"
	db "to send a BERRY.\0"
BerrySendingInProcess: ; C41
	db "BERRY sending in Process...\0"
ABerryWasSent: ; C5D
	db "A BERRY was sent.\n"
	db "\n"
	db "Press the A Button to resend.\n"
	db "Press the B Button to cancel.\0"

INCLUDE "../common/battle_e_transfer.asm"

AfterTransfer:
	ld hl, $5FFF
	LD_IND_HL Space_1
	ld hl, Space_1
	API $0C7

	wait $01
	ret

Start:
	API_121
	LoadCustomBackground BackgroundSpriteData, 0
	API_02C $1E06, $000E, 0
	pop bc

	CreateCustomSprite SpriteHandlePtr, $80, BerrySpriteData
	SetSpritePos SpriteHandlePtr, 376, 56

	CreateRegion RegionHandlePtr, 30, 6, 0, 14, 0, 4
	ld h, a
	ld l, $00
	SetTextSize
	API_09B RegionHandlePtr, $0102
	SetTextColor RegionHandlePtr, 2, 0
	SetRegionColor RegionHandlePtr, 0
	SetBackgroundPalette $10, $0040, UnknownPalette

	FadeIn 16
	wait 16
	API $0C6

	DrawText RegionHandlePtr, Instructions1, 8, 4
	API $08D

INCLUDE "../common/wait_for_link.asm"

	API_084 SpriteHandlePtr, 120, 56, 16 ; sprite move and fade in?
	pop bc
	API $08D
	push af
	nop

	DrawText RegionHandlePtr, Instructions2, 8, 4

UNKNOWN_VALUE EQU $00F5
INCLUDE "../common/wait_for_ready.asm"

	DrawText RegionHandlePtr, BerrySendingInProcess, 8, 4

DATA_TRANSFER_LENGTH EQU 3072
INCLUDE "../common/transfer_data.asm"

	call AfterTransfer

	wait 128
	API $08D

	ld c, a
	nop
	API_084 SpriteHandlePtr, $FF78, 56, 16 ; sprite move and fade out?

	pop bc
	DrawText RegionHandlePtr, ABerryWasSent, 8, 4

INCLUDE "../common/wrap_up.asm"

INCLUDE "../common/word_shift_right.asm"

SomeVar1: EOF         ; EFA
SomeVar2: dw 0        ; EFB
RegionHandlePtr: db 0 ; EFD
SpriteHandlePtr: dw 0 ; EFE