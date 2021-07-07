SECTION "battletrainer",ROM0[$100]
jp Start
db $00

BattleTrainerBackdrop: ; 104
	INCBIN "sprites/battletrainer.4bpp"
DoorSprite: ; 604
	INCBIN "sprites/trainerdoor.4bpp"

BackdropPalettes: ; A04
	INCLUDE "sprites/battletrainer1.pal"
	INCLUDE "sprites/battletrainer2.pal"
	INCLUDE "sprites/battletrainer3.pal"
	INCLUDE "sprites/battletrainer4.pal"
TrainerPalette: ; A6C
	INCLUDE "sprites/battletrainer5.pal"
DoorPalette: ; A74
	INCLUDE "sprites/trainerdoor.pal"

BackdropTilemap: ; A7C
	INCBIN "sprites/battletrainer.tilemap"

Prologue: ; 0DFC
	INCBIN "prologue-{REGION_NAME}.bin"

DataPacket: ; 0E38
	INCBIN "trainers/{TRAINER}-{REGION_NAME}.mev"
	REPT 44
		db 0 ; pads the data to 256 bytes
	ENDR

TrainerSprite: ; 0F38
	INCBIN "sprites/trainers/{CLASS}.4bpp"
TrainerSpriteData: ; 1738
	dw TrainerSprite
	dw TrainerPalette
	db $08,$08,$01,$01,$01,$01,$01

INCLUDE "../common/mem_struct.asm"

BackdropSpriteData: ; 1777
	dw BattleTrainerBackdrop
	dw BackdropPalettes
	dw BackdropTilemap
	db $28,$00,$04,$00
DoorSpriteData: ; 1781
	dw DoorSprite
	dw DoorPalette
	db $04,$08,$01,$01,$01,$01,$01

Instructions1: ; 178c
	db "Link e-Reader to Pokémon Emerald \n"
	db "and select MYSTERY EVENTS on the\n"
	db "game's main menu.\n"
	db "Press the B Button to cancel.\0"

Instructions2: ; 1808
	db "Press the A Button on the Game Boy\n"
	db "Advance containing Pokémon Emerald\n"
	db "to begin the Battle Entry.\0"

BattleEntryInProcess: ; 1872
	db "Battle Entry in Process...\0"

BattleEntryFinished: ; 188d
	db "Battle Entry finished!\n"
	db "\n"
	db "Press the A Button to resend.\n"
	db "Press the B Button to cancel.\0"

INCLUDE "../common/battle_e_transfer.asm"

Open_Doors: ; 1946
	ld l, $20
	push hl
	ld bc, $0040
	ld de, $0048
	LD_HL_IND LeftDoorSpriteHandle
	API $03B

	pop bc
	ld l, $20
	push hl
	ld bc, $0040
	ld de, $00A8
	LD_HL_IND RightDoorSpriteHandle
	API $03B

	pop bc
	ret

Close_Doors: ; 1965
	ld l, $20
	push hl
	ld bc, $0040
	ld de, $0068
	LD_HL_IND LeftDoorSpriteHandle
	API $03B

	pop bc
	ld l, $20
	push hl
	ld bc, $0040
	ld de, $0088
	LD_HL_IND RightDoorSpriteHandle
	API $03B

	pop bc
	ret

Start: ; 1984
	API_121
	LoadCustomBackground BackdropSpriteData, 0

	ld hl, $0000
	push hl
	ld bc, $1e06
	ld de, $000e
	xor a
	API $02C

	pop bc
	LoadCustomBackground BackdropSpriteData, 1

	API_02C $1e06, $000e, $01

	pop bc
	API_02C $0808, $0B04, $00

	pop bc
	ld a, $4
	API $0AE

	CreateCustomSprite TrainerSpriteHandle, $80, TrainerSpriteData
	SetSpritePos TrainerSpriteHandle, 119, 64

	CreateCustomSprite LeftDoorSpriteHandle, $81, DoorSpriteData
	CreateCustomSprite RightDoorSpriteHandle, $81, DoorSpriteData
	SpriteMirrorToggle $01, LeftDoorSpriteHandle
	SetSpritePos LeftDoorSpriteHandle, 104, 64
	SetSpritePos RightDoorSpriteHandle, 136, 64

	CreateRegion RegionHandlePtr, 30, 6, 0, 14, 0, 3
	ld h, a
	ld l, $00
	SetTextSize
	API_09B RegionHandlePtr, $0102
	SetTextColor RegionHandlePtr, 3, 0

	FadeIn 16
	wait 16
	API $0C6
	DrawText RegionHandlePtr, Instructions1, 8, 4
	API $08D

INCLUDE "../common/wait_for_link.asm"

	call Open_Doors
	DrawText RegionHandlePtr, Instructions2, 8, 4
	API $08D
	and [hl]
	ld [bc], a
	
UNKNOWN_VALUE EQU $02A6
INCLUDE "../common/wait_for_ready.asm"

	call Close_Doors
	DrawText RegionHandlePtr, BattleEntryInProcess, 8, 4

DATA_TRANSFER_LENGTH EQU 6144
INCLUDE "../common/transfer_data.asm"

	ld hl, $5fff
	LD_IND_HL Space_1
	API_0C7 Space_1

	LD_HL_IND TrainerSpriteHandle
	API $047
	wait 128
	call Open_Doors

	DrawText RegionHandlePtr, BattleEntryFinished, 8, 4
	API $08D

	ld c, a
	nop

INCLUDE "../common/wrap_up.asm"
INCLUDE "../common/word_shift_right.asm"

SomeVar1: EOF               ; 1B9F
SomeVar2: dw 0              ; 1BA0
RegionHandlePtr: db 0       ; 1BA2
LeftDoorSpriteHandle: dw 0  ; 1BA3
RightDoorSpriteHandle: dw 0 ; 1BA5
TrainerSpriteHandle: dw 0   ; 1BA7