INCLUDE "./macros.asm"

	Mystery_Event

	db CHECKSUM_CRC
	dd 0 ; checksum placeholder
	GBAPTR DataStart
	GBAPTR DataEnd

DataStart:
	db GIVE_POKEMON
	GBAPTR PokemonStart
	db $02

PokemonStart:
	PV SHINY_ADAMANT_MALE
	OT_ID 00000, 00000
	Text_EN "BELDUM"10
	Language $0202	;Language $0201=JP $0202=EN $0203=FR $0204=IT $0205=DE $0206=KR $0207=ES $0601=EGG
	Text_EN "STEVEN"7
	Markings 0 ;markings
	dw 0 ;Checksum, will be computed later :)
	dw 0 ;Unknown

;Substruct1
	Pokemon BELDUM
	Holds METAGROSSITE
	dd 156 ;Experience
	PP_Ups 0,0,0,0 ;PP_Ups
	Friendship 0 ;Friendship
	dw 0 ;Unknown

;Substruct2
	Moves METEOR_MASH, SHADOW_BALL, EARTHQUAKE, SLUDGE_BOMB
	PP 10, 15, 10, 15

;Substruct3
	EVs 0,255,0,0,255,0
	Condition 0,0,0,0,0,0    ;i.e. Contest Condition

;Substruct4
	PokerusStatus 0
	MetLocation $FF
	Origins 5,3,4,0  ;Lv met, Game of Origin, Ball, OT Gender
	IVs 31,31,31,31,31,31, ABILITY1
	Ribbons 0

	dd 0  ;Status condition
	db 5  ;Lv
	db 0  ;pokerus remaining
	dw 20 ;Current HP
	dw 20 ;Total HP
	dw 16 ;Attack
	dw 14 ;Def
	dw 9  ;Speed
	dw 9  ;Sp Atk
	dw 15 ;Sp Def

	End_GiftPokemon ;Use End_GiftEgg if sending egg

DataEnd:
	EOF