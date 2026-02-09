INCLUDE "../macros.asm"
SECTION "decoration",ROM0[$100]
jp Start
db $00

;memory structs for deco card, don't touch
RegionHandlePtr0104: db 0,0
RegionHandlePtr0106:
    REPT 14
        db 0
    ENDR
RegionHandlePtr0114:
    REPT 32
        db 0
    ENDR

;Also don't touch
Prologue:
	INCBIN "prologue-{REGION_NAME}.bin"

; The data chunks from decoration.asm
DataPacket:
    INCBIN "decoration-{REGION_NAME}.mev"

; Pointers to the data chunks found in decoration.asm
; Currently needs to be changed manually
DataPointers:
    db $70,$01 ; DataStartRegirock
    db $EF,$01 ; DataStartRegice
    db $6E,$02 ; DataStartRegisteel

; Transfer data
sub_02D2:
	LD_IND_HL RegionHandlePtr283D
    push de
    ld hl,$bbbb
    LD_IND_HL RegionHandlePtr0104
    EX_DE_HL
    LD_IND_HL RegionHandlePtr0106
    API_0C7 RegionHandlePtr0104
    wait $01
    pop hl
    inc hl
    ld b,$01
    call sub_2817
    LD_IND_HL RegionHandlePtr283B

label_27:
    LD_HL_IND RegionHandlePtr283B
    ld a,l
    or h
    jr z,label_28
    ld hl,$8888
    LD_IND_HL RegionHandlePtr0104
    ld e,$01

label_29:
    ld a,e
    cp $08
    jr nc,label_30
    push de
    LD_HL_IND RegionHandlePtr283D
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    LD_IND_HL RegionHandlePtr283D
    ld l,e
    ld h,$00
    add hl,hl
    ld de, RegionHandlePtr0104
    add hl,de
    ld [hl], c
    inc hl
    ld [hl], b
    pop de
    LD_HL_IND RegionHandlePtr283B
    dec hl
    LD_IND_HL RegionHandlePtr283B
    ld a,l
    or h
    jr z,label_30
    inc e
    jr label_29

label_30:
    API_0C7 RegionHandlePtr0104
    API $0CA
    cp $02
    jr nc,label_31
    xor a
    ret

label_31:
    ld hl,RegionHandlePtr0114
    API $0C8
    or a
    jr nz,label_32
    xor a
    ret

label_32:
    wait $01
    jr label_27

label_28:
    ld a,$01
    ret

sub_0348:
    ld hl,$5fff
    LD_IND_HL RegionHandlePtr0104
    API_0C7 RegionHandlePtr0104
    wait $01
    ret

sub_0356:
    API $0EB
    wait $01
    API $0C6
    wait $01
    ld l,$02
    push hl
    ld bc,$b9a0
    ld de,$0076
    ld a,$08
    API $0C4
    pop bc
    API $0C5
label_19:
    wait $01
    API $0DB
    cp $01
    jr z,label_19
    API $0DB
    or a
    jr z,label_19
label_20:
    wait $01
    LD_HL_IND $00C2
    ld a,l
    and $02
    jr z,label_21
    API $0EB
    xor a
    ret
label_21:
    API $0CA
    cp $02
    jr c,label_20
    ld a,$01
    ret

sub_0392:
    wait $01
    API $0CA
    cp $02
    jr nc,label_23
    API $0EB
    xor a
    ret
label_23:
    API $0DB
    cp $04
    jr z,label_24
    API $0DB
    cp $03
    jr nz,sub_0392
label_24:
    ld a,$01
    ret

sub_03AD:
    wait $01
    ld hl,RegionHandlePtr0114
    API $0C8
    or a
    jr nz,label_26
    API $0EB
    xor a
    ret
label_26:
	LD_HL_IND RegionHandlePtr0114
    ld a,l
    cp $22
    jr nz,sub_03AD
    ld a,h
    cp $22
    jr nz,sub_03AD
    ld a,$01
    ret

sub_03CB:
    LD_IND_A RegionHandlePtr283F
    ld de,$003c
    ld hl,$0134
    call sub_02D2 ; TransferData
    or a
    jr nz,label_33
    API $0EB
    xor a
    ret
label_33:
    ld hl,RegionHandlePtr283F
    ld l,[hl]
    ld h,$00
    add hl,hl
    ld de,DataPointers ;02CC
    add hl,de
    ld e,[hl]
    inc hl
    ld d,[hl]
    EX_DE_HL
    ld de,$0800
    call sub_02D2 ; TransferData
    or a
    jp nz,sub_0348
    API $0EB
    xor a
    ret
    db $00

;Text Section
;Has Japanese text bytes if you want. Just uncomment tehm and comment the english text

TitleText:
	db "DECORATION PRESENT\0"
    ;db $82,$E0,$82,$E6,$82,$A4,$82,$AA,$82,$A6,$83,$4F,$83,$62,$83,$59,$81,$40,$83,$76,$83,$8C,$83,$5B,$83,$93,$83,$67,$00

FrontPageText: ; 1872
	db "“Decorate your SECRET BASE!”\0"
    ;db $81,$75,$82,$D0,$82,$DD,$82,$C2,$82,$AB,$82,$BF,$82,$F0,$82,$A9,$82,$B4,$82,$EB,$82,$A4,$81,$49,$81,$76,$83,$4C,$83,$83,$83,$93,$83,$79,$81,$5B,$83,$93,$82,$C9,$00
FrontPageTextLine2:
	db "Thank you for participating!\0"
    ;db $82,$B2,$82,$A8,$82,$A4,$82,$DA,$82,$A2,$82,$BD,$82,$BE,$82,$AB,$81,$40,$82,$A0,$82,$E8,$82,$AA,$82,$C6,$82,$A4,$82,$B2,$82,$B4,$82,$A2,$82,$DC,$82,$B5,$82,$BD,$00
FrontPageTextLine3:
	db "Please press the A Button.\0"
    ;db $82,$60,$83,$7B,$83,$5E,$83,$93,$82,$F0,$81,$40,$82,$A8,$82,$B5,$82,$C4,$82,$AD,$82,$BE,$82,$B3,$82,$A2,$00

FirstPage:
    db "Please press the A Button\0"
    ;db $82,$C2,$82,$AC,$82,$CC,$82,$C8,$82,$A9,$82,$A9,$82,$E7,$81,$40,$82,$A8,$82,$AD,$82,$E8,$82,$BD,$82,$A2,$81,$40,$82,$E0,$82,$E6,$82,$A4,$82,$AA,$82,$A6,$83,$4F,$83,$62,$83,$59,$82,$F0,$00
FirstPageLine2:
    db "to select a decoration\0"
    ;db $82,$A6,$82,$E7,$82,$F1,$82,$C5,$81,$40,$82,$60,$83,$7B,$83,$5E,$83,$93,$82,$F0,$81,$40,$82,$A8,$82,$B5,$82,$C4,$81,$40,$82,$AD,$82,$BE,$82,$B3,$82,$A2,$00
FirstPageLine3:
    db "from the list to send.\0"
    ;db $00
    

SecondPage:
    db "Link e-Reader to Pokémon Ruby or\0"
    ;db $82,$C2,$82,$A4,$82,$B5,$82,$F1,$83,$50,$81,$5B,$83,$75,$83,$8B,$82,$C5,$81,$40,$83,$4A,$81,$5B,$83,$68,$82,$85,$83,$8A,$81,$5B,$83,$5F,$81,$5B,$81,$7B,$82,$C6,$00
SecondPageLine2:
    db "Sapphire and select MYSTERY EVENTS\0"
    ;db $83,$7C,$83,$50,$83,$82,$83,$93,$81,$40,$83,$8B,$83,$72,$81,$5B,$81,$40,$82,$A9,$81,$40,$83,$54,$83,$74,$83,$40,$83,$43,$83,$41,$82,$F0,$81,$40,$82,$C2,$82,$C8,$82,$AC,$00
SecondPageLine3:
    db "on the game's main menu.\0"
    ;db $81,$75,$82,$D3,$82,$B5,$82,$AC,$82,$C8,$81,$40,$82,$C5,$82,$AB,$82,$B2,$82,$C6,$81,$76,$82,$F0,$81,$40,$82,$A6,$82,$E7,$82,$F1,$82,$C5,$81,$40,$82,$AD,$82,$BE,$82,$B3,$82,$A2,$00


ThirdPage:
    db "will be sent.\0"
    ;db $82,$F0,$81,$40,$82,$A8,$82,$AD,$82,$E8,$82,$DC,$82,$B7,$00
ThirdPageLine2:
    db "Please press the A Button on\0"
    ;db $83,$7C,$83,$50,$83,$82,$83,$93,$81,$40,$83,$8B,$83,$72,$81,$5B,$81,$40,$82,$A9,$81,$40,$83,$54,$83,$74,$83,$40,$83,$43,$83,$41,$82,$CC,$00
ThirdPageLine3:
    db "Pokémon Ruby or Sapphire.\0"
    ;db $82,$60,$83,$7B,$83,$5E,$83,$93,$82,$F0,$81,$40,$82,$A8,$82,$B5,$82,$C4,$81,$40,$82,$AD,$82,$BE,$82,$B3,$82,$A2,$00


FourthPage:
    db "is being sent.\0"
    ;db $82,$F0,$81,$40,$82,$A8,$82,$AD,$82,$C1,$82,$C4,$81,$40,$82,$A2,$82,$DC,$82,$B7,$00
FourthPageLine2:
    db "Don't remove the Game Link cable.\0"
    ;db $82,$C2,$82,$A4,$82,$B5,$82,$F1,$83,$50,$81,$5B,$83,$75,$83,$8B,$82,$F0,$81,$40,$82,$CA,$82,$A9,$82,$C8,$82,$A2,$82,$C5,$81,$40,$82,$AD,$82,$BE,$82,$B3,$82,$A2,$00
FourthPageLine3:
    db "Don't turn off the power.\0"
    ;db $82,$C5,$82,$F1,$82,$B0,$82,$F1,$82,$F0,$81,$40,$82,$AB,$82,$E7,$82,$C8,$82,$A2,$82,$C5,$81,$40,$82,$AD,$82,$BE,$82,$B3,$82,$A2,$00


FifthPage:
    db "has been received.\0"
    ;db $82,$AA,$81,$40,$82,$A8,$82,$AD,$82,$E7,$82,$EA,$81,$40,$82,$DC,$82,$B5,$82,$BD,$00
FifthPageLine2:
    db "Press the A Button to start over.\0"
    ;db $82,$60,$83,$7B,$83,$5E,$83,$93,$82,$C5,$81,$40,$82,$CD,$82,$B6,$82,$DF,$82,$A9,$82,$E7,$81,$40,$82,$E2,$82,$E8,$82,$C8,$82,$A8,$82,$B5,$82,$DC,$82,$B7,$00
FifthPageLine3:
    db "Press the B Button to exit.\0"
    ;db $82,$61,$83,$7B,$83,$5E,$83,$93,$82,$C5,$81,$40,$82,$B5,$82,$E3,$82,$A4,$82,$E8,$82,$E5,$82,$A4,$81,$40,$82,$B5,$82,$DC,$82,$B7,$00


TransferFailed:
	db "Link failed...\0"
    ;db $82,$C4,$82,$F1,$82,$BB,$82,$A4,$82,$C9,$81,$40,$82,$B5,$82,$C1,$82,$CF,$82,$A2,$82,$B5,$82,$DC,$82,$B5,$82,$BD,$00

PressA:
    db "Press the A Button to start over.\0"
    ;db $82,$60,$83,$7B,$83,$5E,$83,$93,$82,$C5,$81,$40,$82,$CD,$82,$B6,$82,$DF,$82,$A9,$82,$E7,$81,$40,$82,$E2,$82,$E8,$82,$C8,$82,$A8,$82,$B5,$82,$DC,$82,$B7,$00

FinishB:
    db "Press the B Button to exit.\0"
    ;db $82,$61,$83,$7B,$83,$5E,$83,$93,$82,$C5,$81,$40,$82,$B5,$82,$E3,$82,$A4,$82,$E8,$82,$E5,$82,$A4,$82,$B5,$82,$DC,$82,$B7,$00

TransferCancelled:
    db "The link was canceled.\0"
    ;db $82,$C4,$82,$F1,$82,$BB,$82,$A4,$82,$F0,$81,$40,$83,$4C,$83,$83,$83,$93,$83,$5A,$83,$8B,$82,$B5,$82,$DC,$82,$B5,$82,$BD,$00

;idk why there's two of these
PressA2:
    db "Press the A Button to start over.\0"
    ;db $82,$60,$83,$7B,$83,$5E,$83,$93,$82,$C5,$81,$40,$82,$CD,$82,$B6,$82,$DF,$82,$A9,$82,$E7,$81,$40,$82,$E2,$82,$E8,$82,$C8,$82,$A8,$82,$B5,$82,$DC,$82,$B7,$00

FinishB2:
    db "Press the B Button to exit.\0"
    ;db $82,$61,$83,$7B,$83,$5E,$83,$93,$82,$C5,$81,$40,$82,$B5,$82,$E3,$82,$A4,$82,$E8,$82,$E5,$82,$A4,$82,$B5,$82,$DC,$82,$B7,$00

;The items in order that they'll appear
;Second and third options may need spaces at the start
;My guess as to why is in Japanese the regi dolls have the same length and so moves ahead a certain amount instead of using pointers
RegirockDollText:
	db "REGIROCK DOLL \0"
    ;db $83,$8C,$83,$57,$83,$8D,$83,$62,$83,$4E,$83,$68,$81,$5B,$83,$8B,$00

RegiceDollText:
	db "  REGICE DOLL \0"
    ;db $83,$8C,$83,$57,$83,$41,$83,$43,$83,$58,$83,$68,$81,$5B,$83,$8B,$00

RegisteelDollText:
	db "    REGISTEEL DOLL \0"
    ;db $83,$8C,$83,$57,$83,$58,$83,$60,$83,$8B,$83,$68,$81,$5B,$83,$8B,$00



;Graphics Section

ArrowSprite:
	INCBIN "sprites/arrow.4bpp"
ArrowPalette:
	INCBIN "sprites/arrow.gbapal"

;Sprites are in order of 1-3-2
RegirockSprite:
	INCBIN "sprites/regirock.4bpp"
RegisteelSprite:
	INCBIN "sprites/registeel.4bpp"
RegiceSprite:
	INCBIN "sprites/regice.4bpp"

;All 3 regi dolls share the same palette
RegiPalette:
	INCBIN "sprites/regi.gbapal"

TextboxesTiles:
	INCBIN "sprites/textboxes.4bpp"
TextboxesPalette:
	INCBIN "sprites/textboxes.gbapal"
TextboxesTilemap:
	INCBIN "sprites/textboxes.tilemap"

PokeballBgTiles:
	INCBIN "sprites/pokeball_bg.4bpp"
PokeballBgPalette:
	INCBIN "sprites/pokeball_bg.gbapal"
PokeballBgTilemap:
	INCBIN "sprites/pokeball_bg.tilemap"

;This tilemap is just for the first large textbox
TextboxMainTilemap:
	INCBIN "sprites/textbox_main.tilemap"


;Pointers to graphics

ArrowSpriteData:
	dw ArrowSprite
	dw ArrowPalette
	db $01,$01,$01,$01,$00,$00,$01  ;byte 1&2=width and height of sprite in tiles,3=No. of frames?  4=Starting Frame? 5&6=Unk 7=Unk

RegirockSpriteData:
	dw RegirockSprite
	dw RegiPalette
	db $04,$04,$03,$01,$00,$00,$03  ;first 2 bytes are 4 because the sprites are 32x32px, 3rd byte is 3 because of 3 frames (I think)

TextboxesData:
	dw TextboxesTiles
	dw TextboxesPalette
	dw TextboxesTilemap
	db $0A,$00,$01,$00

PokeballBgData:
	dw PokeballBgTiles
	dw PokeballBgPalette
	dw PokeballBgTilemap
	db $0A,$00,$01,$00

TextboxMainData:
	dw TextboxesTiles
	dw TextboxesPalette
	dw TextboxMainTilemap
	db $0A,$00,$01,$00

;Not exactly sure what this is but I think it's setting up layer stuff
BGSetUpStuffIThink:
    db $03,$03,$66,$15
stuff_229C:
    db $00,$18,$F0,$88,$29,$21,$27,$37
stuff_22A4:
    db $00,$18,$F0,$88,$29,$21,$27,$37
stuff_22AC:
    db $00,$00,$F0,$23,$2F,$20,$3F,$00

;Don't know why but the byte before this palette is used a couple of times
TextPaletteBefore:
    db $00
TextPalette:
	INCBIN "sprites/text.gbapal"



;Starting function, sets everything up
Start:
	SetBackgroundMode 0

	ld e, $10
	ld a, $32
	API $01a

	LoadCustomBackground TextboxesData, 1
	LoadCustomBackground PokeballBgData, 0
	SetBackgroundAutoScroll $ff80, $0080
	LoadCustomBackground TextboxMainData, 3
	SetBackgroundPalette 6, $00f0, TextPalette
	CreateRegion RegionHandlePtr2847, 26, 3, 2, 0, 2, 15
	CreateRegion RegionHandlePtr2844, 13, 7, 3, 5, 2, 15
	CreateRegion RegionHandlePtr2841, 30, 6, 0, 14, 2, 15

	LD_A_IND RegionHandlePtr2847
    ld hl,$0002
    or h
    ld h,a
	SetTextSize

	LD_A_IND RegionHandlePtr2844
    ld hl,$0002
    or h
    ld h,a
	SetTextSize

	LD_A_IND RegionHandlePtr2841
    ld hl,$0001
    or h
    ld h,a
	SetTextSize

	SetTextColor RegionHandlePtr2847, 1, 0
	SetTextColor RegionHandlePtr2844, 1, 0
	SetTextColor RegionHandlePtr2841, 1, 0
    SetRegionColor RegionHandlePtr2841, 0   ;This isn't in the original, the japanese ereader sets the text background to be transparent automatically

	call sub_270D ; WriteText
	call sub_273C ; RegiSelectText
	ld bc,FirstPageLine3
    ld de,FirstPageLine2
    ld hl,FirstPage
    call sub_2796

    CreateCustomSprite RegionHandlePtr2842, $80, ArrowSpriteData
    CreateCustomSprite RegionHandlePtr2845, $02, RegirockSpriteData
    SetSpritePos RegionHandlePtr2845, $00b8, $0044
    SpriteAutoScaleUntilSize RegionHandlePtr2845, $01, $0100
    SpriteShow RegionHandlePtr2845

    ld c, $06
    ld e, $14
    ld hl, $00f0
    API $11A            ; Unknown API call
    API $08d 
    add a,c
    nop
    pop de
    push de
    ld a,e
    call sub_2463
    call sub_247C

    SpriteAutoScaleUntilSize RegionHandlePtr2845, $01, $0f00

    call sub_25ED
    ld de, stuff_22AC
    ld a, $20
    API $08e
    call sub_26E0
    pop de
sub_23C2:
    LD_HL_IND $00C2
    ld a, l
    and $40
    jr z, label_1
    inc e
    dec e
    jr nz, label_2
    ld e, $02
    jr label_3
label_2:
	dec e
label_3:
	push de
	API $08d
	nop
	nop
	pop de
	push de
	ld a, e
	call sub_2463
	LD_HL_IND RegionHandlePtr2845
	API $034
	pop de
label_1:
    LD_HL_IND $00C2
    ld a,l
    and $80
    jr z,label_4
    ld a,e
    cp $02
    jr nz,label_5
    ld e,$00
    jr label_6
label_5:
    inc e
label_6:
    push de
    API $08d
    nop
    nop
    pop de
    push de
    ld a,e
    call sub_2463
    LD_HL_IND RegionHandlePtr2845
	API $035
	pop de
label_4:
    LD_HL_IND $00C2
    ld a,l
    and $01
    jr z,label_7
    push de
    call sub_248C 
    API $08D
    dec b
    nop
    pop de
    push de
    ld a,e
    call sub_249C
    wait $01
    pop de
label_8:
    LD_HL_IND $00C2
    ld a,l
    and $01
    jr z,label_9
    push de
    API $08D
    dec b
    nop
    call sub_247C
    LD_A_IND TextPaletteBefore
    or a
    call z,sub_26E0
    ld bc,FirstPageLine3
    ld de,FirstPageLine2
    ld hl,FirstPage
    call sub_2796
    API $08D
    add a,c
    nop
    pop de
    jr label_7
label_9:
    push de
    LD_HL_IND $00C2
    ld a,l
    and $02
    jr z,label_10
    ld a,$02
    EXIT
label_10:
    wait $01
    pop de
    jr label_8
label_7:
    push de
    wait $01
    pop de
    jp sub_23C2  


sub_2463:
    ld l,a
    ld h,$00
    add hl,hl
    ld e,l
    ld d,h
    add hl,hl
    add hl,hl
    add hl,hl
    add hl,de
    ld de,$0031
    add hl,de
    ld c,l
    ld b,h
    ld de,$0012
    LD_HL_IND RegionHandlePtr2842
    API $032
    ret

sub_247C:
    ld l,$41
    push hl
    ld bc,$0002
    ld de,$0600
    LD_HL_IND RegionHandlePtr2842
    API $059
    pop bc
    ret

sub_248C:    
	ld l,$41
    push hl
    ld bc,$0000
    ld de,$0000
    LD_HL_IND RegionHandlePtr2842
    API $059
    pop bc
    ret

sub_249C:
    LD_IND_A RegionHandlePtr2840
    API_106 $0040,$0081
    API_121
    ld bc,SecondPageLine3
    ld de,SecondPageLine2
    ld hl,SecondPage
    call sub_2796
    call sub_0356
    or a
    jr nz,label_11
    wait $01
    API $08D
    inc b
    nop
    ld bc,FinishB2
    ld de,PressA2
    ld hl,TransferCancelled
    call sub_2796
    ld de,$0000
    ld hl,$0008
    API $121
    xor a
    ret

label_11:
    xor a
    LD_IND_A RegionHandlePtr284A
    ld hl,RegionHandlePtr2840
    LD_IND_L_HL
    ld h,$00
    ld e,l
    ld d,h
    add hl,hl
    add hl,hl
    add hl,hl
    add hl,hl
    add hl,de
    ld de,RegirockDollText
    add hl,de
    EX_DE_HL
    ld hl,RegionHandlePtr284A
    call sub_2805
    ld de,ThirdPage
    ld hl,RegionHandlePtr284A
    call sub_2805
    ld bc,ThirdPageLine3
    ld de,ThirdPageLine2
    ld hl,RegionHandlePtr284A
    call sub_2796
    call sub_0392
    or a
    jr nz,label_12
    wait $01
    API $08D
    inc b
    nop
    ld bc,FinishB
    ld de,PressA
    ld hl,TransferFailed
    call sub_2796
    ld de,$0000
    ld hl,$0008
    API $121
    xor a
    ret

label_12:
    call sub_03AD
    or a
    jr nz,label_13
    wait $01
    API $08D
    inc b
    nop
    ld bc,FinishB
    ld de,PressA
    ld hl,TransferFailed
    call sub_2796
    ld de,$0000
    ld hl,$0008
    API $121
    xor a
    ret

label_13:
    call sub_26B6
    xor a
    LD_IND_A RegionHandlePtr284A
    ld hl,RegionHandlePtr2840
    LD_IND_L_HL
    ld h,$00
    ld e,l
    ld d,h
    add hl,hl
    add hl,hl
    add hl,hl
    add hl,hl
    add hl,de
    ld de,RegirockDollText
    add hl,de
    EX_DE_HL
    ld hl,RegionHandlePtr284A
    call sub_2805
    ld de,FourthPage ; $05ad
    ld hl,RegionHandlePtr284A
    call sub_2805
    ld bc,FourthPageLine3
    ld de,FourthPageLine2
    ld hl,RegionHandlePtr284A
    call sub_2796
    wait $01
    LD_A_IND RegionHandlePtr2840
    call sub_03CB
    or a
    jr nz,label_14
    wait $01
    API $08D
    inc b
    nop
    ld bc,FinishB
    ld de,PressA
    ld hl,TransferFailed
    call sub_2796
    ld de,$0000
    ld hl,$0008
    API $121
    xor a
    ret

label_14:
    xor a
    LD_IND_A RegionHandlePtr284A
    ld hl,RegionHandlePtr2840
    LD_IND_L_HL
    ld h,$00
    ld e,l
    ld d,h
    add hl,hl
    add hl,hl
    add hl,hl
    add hl,hl
    add hl,de
    ld de,RegirockDollText
    add hl,de
    EX_DE_HL
    ld hl,RegionHandlePtr284A
    call sub_2805
    ld de,FifthPage
    ld hl,RegionHandlePtr284A
    call sub_2805
    ld bc,FifthPageLine3
    ld de,FifthPageLine2
    ld hl,RegionHandlePtr284A
    call sub_2796
    ld de,$0000
    ld hl,$0008
    API $121
    API $08D
    db $FA,$00,$3E,$01 ; idk what instructions these bytes are, if you know tell me
    ret

sub_25ED:
    ld de,stuff_229C
    ld a,$20
    API $08E
    ld de, stuff_22A4
    ld a, $40
    API $08E
    ld a,$03
    API $020
    ld bc,$1a07
    ld de,$0205
    ld hl,$030f
    API $090 ; CreateRegion
    ld c,a
    push bc
    ld a,c
    ld e,$02
    API $091 ; SetRegionColor
    pop bc
    push bc
    ld a,c
    API $092 ; Clear region
    pop bc
    push bc
    ld hl,$0001
    ld a,c
    or h
    ld h,a
    SetTextSize
    pop bc
    push bc
    ld a,c
    ld de,$0102
    API $098 ; SetTextColor
    pop bc
    push bc
    ld a,c
    ld de,FrontPageText
    API $0C0 ; GetTextWidth
    ld l,a
    ld a,$d0
    sub l
    ld b,$02
    call sub_2824
    LD_IND_A RegionHandlePtr2848
    pop bc
    push bc
    LD_A_IND RegionHandlePtr2848
    ld de,$000a
    or d
    ld d,a
    ld a,c
    ld bc,FrontPageText
    API $099 ; DrawText
    pop bc
    push bc
    ld a,c
    ld de,FrontPageTextLine2
    API $0C0 ; GetTextWidth
    ld l,a
    ld a,$d0
    sub l
    ld b,$02
    call sub_2824
    LD_IND_A RegionHandlePtr2848
    pop bc
    push bc
    LD_A_IND RegionHandlePtr2848
    ld de,$0014
    or d
    ld d,a
    ld a,c
    ld bc,FrontPageTextLine2
    API $099 ; DrawText
    pop bc
    push bc
    ld a,c
    ld de,FrontPageTextLine3
    API $0C0 ; GetTextWidth
    ld l,a
    ld a,$d0
    sub l
    ld b,$02
    call sub_2824
    LD_IND_A RegionHandlePtr2848
    pop bc
    LD_A_IND RegionHandlePtr2848
    ld de,$0028
    or d
    ld d,a
    ld a,c
    ld bc,FrontPageTextLine3
    API $099 ; DrawText
    FadeIn $20

label_15:
    LD_HL_IND $00C2
    ld a,l
    and $01
    jr nz,label_16
    wait $01
    jr label_15

label_16:
    API $08D
    dec b
    nop
    ld a,$03
    API $021 ; LayerHide
    ld a,$20
    API $08F ; WindowHide
    ld a,$40
    API $08F ; WindowHide
    wait $01
    ret

sub_26B6:
    API $08D
    inc d
    nop
    ld c,$30
    ld de,$0180
    LD_HL_IND RegionHandlePtr2845
    API $05B ; SpriteAutoScaleUntilSize
    wait $60
    API $08D
    ld l,b
    nop
    ld l,$20
    push hl
    ld bc,$ffe0
    ld de,$00b8
    LD_HL_IND RegionHandlePtr2845
    API $03B
    pop bc
    wait $10
    xor a
    LD_IND_A TextPaletteBefore
    ret


sub_26E0:
    ld c,$01
    ld de,$0f00
    LD_HL_IND RegionHandlePtr2845
    API $05B ; SpriteAutoScaleUntilSize
    ld bc,$0044
    ld de,$00b8
    LD_HL_IND RegionHandlePtr2845
    API $032 ; SetSpritePos
    ld c,$40
    ld de,$0100
    LD_HL_IND RegionHandlePtr2845
    API $05B ; SpriteAutoScaleUntilSize
    wait $20
    API $08D
    ld l,b
    nop
    wait $40
    ld a,$01
    LD_IND_A TextPaletteBefore
    ret


sub_270D: ; WriteText
	CLEAR_REGION RegionHandlePtr2847
	GetTextWidth RegionHandlePtr2847, TitleText
	ld l,a
    ld a,$d0
    sub l
    ld b,$02
    call sub_2824
    LD_IND_A RegionHandlePtr2848
    ld a, $06
    LD_IND_A RegionHandlePtr2849
    ld bc, TitleText
    LD_A_IND RegionHandlePtr2849
    ld e, a
    LD_A_IND RegionHandlePtr2848
    ld d, a
    LD_A_IND RegionHandlePtr2847
    API $099 ; DrawText
    ret

sub_273C: ; RegiSelectText
	DrawText RegionHandlePtr2844, RegirockText2, 0, 4
	ld bc, RegiceText2
	ld de, $0016
	LD_A_IND RegionHandlePtr2844
	API $099 ;DrawText
	ld bc, RegisteelText2
	ld de, $0028
	LD_A_IND RegionHandlePtr2844
	API $099 ;DrawText
	ret


;This is the text you see on the menu select textbox, in order they appear

RegirockText2:
	db "REGIROCK DOLL\0"
    ;db $83,$8C,$83,$57,$83,$8D,$83,$62,$83,$4E,$83,$68,$81,$5B,$83,$8B,$00

RegiceText2:
	db "REGICE DOLL\0"
    ;db $83,$8C,$83,$57,$83,$41,$83,$43,$83,$58,$83,$68,$81,$5B,$83,$8B,$00

RegisteelText2:
	db "REGISTEEL DOLL\0"
    ;db $83,$8C,$83,$57,$83,$58,$83,$60,$83,$8B,$83,$68,$81,$5B,$83,$8B,$00


sub_2796: ; RegiChangeText (I think)
	push bc
	push de
	push hl
	CLEAR_REGION RegionHandlePtr2841
	pop hl
	push hl
	EX_DE_HL
	LD_A_IND RegionHandlePtr2841
	API $0C0 ;GetTextWidth
	ld l, a
	ld a, $f0
	sub l
	ld b, $02
	call sub_2824
	LD_IND_A RegionHandlePtr2848
	pop bc
	LD_A_IND RegionHandlePtr2848
    ld de, $000A
	or d
	ld d, a
	LD_A_IND RegionHandlePtr2841
	API $099 ;DrawText
	pop de
	push de
	LD_A_IND RegionHandlePtr2841
	API $0C0 ;GetTextWidth
	ld l, a
	ld a, $f0
	sub l
	ld b, $2
	call sub_2824
	LD_IND_A RegionHandlePtr2848
	pop bc
	LD_A_IND RegionHandlePtr2848
	ld de, $0014
	or d
	ld d, a
	LD_A_IND RegionHandlePtr2841
	API $099 ;DrawText
	pop bc
	push bc
	ld e, c
	ld d, b
	LD_A_IND RegionHandlePtr2841
	API $0C0 ;GetTextWidth
	ld l, a
	ld a, $f0
	sub l
	ld b, $2
	call sub_2824
	LD_IND_A RegionHandlePtr2848
    pop bc
    LD_A_IND RegionHandlePtr2848
	ld de, $001E
	or d
	ld d, a
	LD_A_IND RegionHandlePtr2841
	API $099 ;DrawText
	ret

sub_2805:
    LD_IND_A_HL
    or a
    jr z,label_18
    inc hl
    jr sub_2805
label_18:
    LD_IND_A_DE
    inc de
    LD_IND_HL_A
    inc hl
    or a
    jr nz,label_18
    xor a
    LD_IND_HL_A
    inc hl
    ret

sub_2817: ;is word shift right
    inc b
label_2818:
    dec b
    ret z
    and a
    ld a,h
    rra
    ld h,a
    ld a,l
    rra
    ld l,a
    jp label_2818


sub_2824:
    push hl
    ld l,a
    ld h,$00
    ld c,$08
label_282A:
    add hl,hl
    ld a,h
    cp b
    jp c,label_2833
    sub b
    inc l
    ld h,a
label_2833:
    dec c
    jp nz,label_282A
    ld a,l
    ld b,h
    pop hl
    ret



;Bytes that come after the program in memory for storing data

RegionHandlePtr283B: db $FF,0  ; marks EOF
RegionHandlePtr283D: db 0,0
RegionHandlePtr283F: db 0
RegionHandlePtr2840: db 0
RegionHandlePtr2841: db 0
RegionHandlePtr2842: db 0,0
RegionHandlePtr2844: db 0
RegionHandlePtr2845: db 0,0
RegionHandlePtr2847: db 0
RegionHandlePtr2848: db 0
RegionHandlePtr2849: db 0
RegionHandlePtr284A: db 0
