INCLUDE "../macros.asm"
INCLUDE "../constants/items.asm"
INCLUDE "../constants/scriptcommands.asm"

DataStartRegirock: ; 0070
	Mystery_Event
	db CHECKSUM_CRC ; 0081
	dd 0 ; checksum placeholder 0082
	GBAPTR ScriptStartRegirock ; 0086
	GBAPTR RegirockEnd     ; 008A

ScriptStartRegirock: ; 008E
	db PRELOAD_SCRIPT
	GBAPTR PreloadScriptStartRegirock
	db END_OF_CHUNKS

PreloadScriptStartRegirock: ; 0094
	setvirtualaddress PreloadScriptStartRegirock
	bufferdecorationname $00, $0076 ;Regirock doll
	adddecoration $0076
	compare $800D, $0000
	virtualgotoif $01, TransferFailRegirock
	virtualloadpointer TransferSuccessRegirock
	setbyte $02
	end

TransferFailRegirock: ; 00B3
	virtualloadpointer TransferFailTextRegirock
	setbyte $03
	end

TransferSuccessRegirock:
	Text_EN "\v2 has been sent!@"
	;db $FD,$02,$37,$00,$05,$08,$27,$2A,$13,$00,$07,$10,$AB,$FF

TransferFailTextRegirock:
	Text_EN "There is not enough room for the\n"
	Text_EN "\v2...@"
	;db $FD,$02,$2D,$00,$02,$2A,$29,$FE,$46,$0C,$36,$37,$00,$01,$02,$13,$00,$02,$15,$06,$50,$10,$B0,$FF
RegirockEnd:
	db $00,$00,$00


DataStartRegice:
	db $01,$00,$00,$00,$02,$02,$00,$02,$00,$00,$00,$04,$00,$00,$02,$00,$00 ; Mystery_Event
	db CHECKSUM_CRC
	dd 0 ; checksum placeholder
	GBAPTR ScriptStartRegirock
	GBAPTR RegirockEnd

ScriptStartRegice:
	db PRELOAD_SCRIPT
	GBAPTR PreloadScriptStartRegirock
	db END_OF_CHUNKS

PreloadScriptStartRegice:
	setvirtualaddress PreloadScriptStartRegirock
	bufferdecorationname $00, $0077 ;Regice doll
	adddecoration $0077
	compare $800D, $0000
	virtualgotoif $01, TransferFailRegirock
	virtualloadpointer TransferSuccessRegirock
	setbyte $02
	end

TransferFailRegice:
	virtualloadpointer TransferFailTextRegirock
	setbyte $03
	end

TransferSuccessRegice:
	Text_EN "\v2 has been sent!@"
	;db $FD,$02,$37,$00,$05,$08,$27,$2A,$13,$00,$07,$10,$AB,$FF

TransferFailTextRegice:
	Text_EN "There is not enough room for the\n"
	Text_EN "\v2...@"
	;db $FD,$02,$2D,$00,$02,$2A,$29,$FE,$46,$0C,$36,$37,$00,$01,$02,$13,$00,$02,$15,$06,$50,$10,$B0,$FF
RegiceEnd:
	db $00,$00,$00

DataStartRegisteel:
	db $01,$00,$00,$00,$02,$02,$00,$02,$00,$00,$00,$04,$00,$00,$02,$00,$00 ; Mystery_Event
	db CHECKSUM_CRC
	dd 0 ; checksum placeholder
	GBAPTR ScriptStartRegirock
	GBAPTR RegirockEnd

ScriptStartRegisteel:
	db PRELOAD_SCRIPT
	GBAPTR PreloadScriptStartRegirock
	db END_OF_CHUNKS

PreloadScriptStartRegisteel:
	setvirtualaddress PreloadScriptStartRegirock
	bufferdecorationname $00, $0078 ;Registeel doll
	adddecoration $0078
	compare $800D, $0000
	virtualgotoif $01, TransferFailRegirock
	virtualloadpointer TransferSuccessRegirock
	setbyte $02
	end

TransferFailRegisteel:
	virtualloadpointer TransferFailTextRegirock
	setbyte $03
	end

TransferSuccessRegisteel:
	Text_EN "\v2 has been sent!@"
	;db $FD,$02,$37,$00,$05,$08,$27,$2A,$13,$00,$07,$10,$AB,$FF

TransferFailTextRegisteel:
	Text_EN "There is not enough room for the\n"
	Text_EN "\v2...@"
	;db $FD,$02,$2D,$00,$02,$2A,$29,$FE,$46,$0C,$36,$37,$00,$01,$02,$13,$00,$02,$15,$06,$50,$10,$B0,$FF
RegisteelEnd:
	db $00,$00,$00

EndofRegiChunks:

DataEnd:
	EOF