INCLUDE "../macros.asm"
INCLUDE "../constants/items.asm"
INCLUDE "../constants/scriptcommands.asm"

DataStartEonTicket:
	Mystery_Event
	db CHECKSUM_CRC
	dd 0 ; checksum placeholder
	GBAPTR ScriptStartEonTicket 
	GBAPTR EonTicketEnd

ScriptStartEonTicket: ; 008E
	db PRELOAD_SCRIPT
	GBAPTR PreloadScriptStartEonTicket
	db END_OF_CHUNKS

PreloadScriptStartEonTicket: ; 0094
	setvirtualaddress PreloadScriptStartEonTicket
	bufferitemname $01, EON_TICKET
	checkitem EON_TICKET, $0001
	compare $800D, $0001
	virtualgotoif $01, TransferFailEonTicket
	additem EON_TICKET, $0001
	setflag $08B3
	setflag $08B3
	virtualloadpointer TransferSuccessEonTicket
	setbyte $02
	end

TransferFailEonTicket: ; 00B3
	virtualloadpointer TransferFailTextEonTicket
	setbyte $03
	end

TransferSuccessEonTicket:
	Text_EN "\v2 has been sent!@"
	;db $FD,$02,$37,$00,$05,$08,$27,$2A,$13,$00,$07,$10,$AB,$FF

TransferFailTextEonTicket:
	Text_EN "\v2 has already been\n"
	Text_EN "received.@"
	;db $FD,$02,$2D,$00,$02,$2A,$29,$FE,$46,$0C,$36,$37,$00,$01,$02,$13,$00,$02,$15,$06,$50,$10,$B0,$FF
EonTicketEnd:
	db $00,$00,$00


DataStartAuroraTicket:
	db $01,$00,$00,$00,$02,$02,$00,$02,$00,$00,$00,$04,$00,$80,$01,$00,$00 ; Mystery_Event
	db CHECKSUM_CRC
	dd 0 ; checksum placeholder
	GBAPTR ScriptStartEonTicket
	GBAPTR EonTicketEnd

ScriptStartAuroraTicket:
	db PRELOAD_SCRIPT
	GBAPTR PreloadScriptStartEonTicket
	db END_OF_CHUNKS

PreloadScriptStartAuroraTicket:
	setvirtualaddress PreloadScriptStartEonTicket
	bufferitemname $01, AURORA_TICKET
	checkitem AURORA_TICKET, $0001
	compare $800D, $0001
	virtualgotoif $01, TransferFailEonTicket
	additem AURORA_TICKET, $0001
	setflag $013A
	setflag $08F0
	virtualloadpointer TransferSuccessEonTicket
	setbyte $02
	end

TransferFailAuroraTicket:
	virtualloadpointer TransferFailTextEonTicket
	setbyte $03
	end

TransferSuccessAuroraTicket:
	Text_EN "\v2 has been sent!@"
	;db $FD,$02,$37,$00,$05,$08,$27,$2A,$13,$00,$07,$10,$AB,$FF

TransferFailTextAuroraTicket:
	Text_EN "\v2 has already been\n"
	Text_EN "received.@"
	;db $FD,$02,$2D,$00,$02,$2A,$29,$FE,$46,$0C,$36,$37,$00,$01,$02,$13,$00,$02,$15,$06,$50,$10,$B0,$FF
AuroraTicketEnd:
	db $00,$00,$00

DataStartMysticTicket:
	db $01,$00,$00,$00,$02,$02,$00,$02,$00,$00,$00,$04,$00,$80,$01,$00,$00 ; Mystery_Event
	db CHECKSUM_CRC
	dd 0 ; checksum placeholder
	GBAPTR ScriptStartEonTicket
	GBAPTR EonTicketEnd

ScriptStartMysticTicket:
	db PRELOAD_SCRIPT
	GBAPTR PreloadScriptStartEonTicket
	db END_OF_CHUNKS

PreloadScriptStartMysticTicket:
	setvirtualaddress PreloadScriptStartEonTicket
	bufferitemname $01, MYSTIC_TICKET
	checkitem MYSTIC_TICKET, $0001
	compare $800D, $0001
	virtualgotoif $01, TransferFailEonTicket
	additem MYSTIC_TICKET, $0001
	setflag $013B
	setflag $08D5
	virtualloadpointer TransferSuccessEonTicket
	setbyte $02
	end

TransferFailMysticTicket:
	virtualloadpointer TransferFailTextEonTicket
	setbyte $03
	end

TransferSuccessMysticTicket:
	Text_EN "\v2 has been sent!@"
	;db $FD,$02,$37,$00,$05,$08,$27,$2A,$13,$00,$07,$10,$AB,$FF

TransferFailTextMysticTicket:
	Text_EN "\v2 has already been\n"
	Text_EN "received.@"
	;db $FD,$02,$2D,$00,$02,$2A,$29,$FE,$46,$0C,$36,$37,$00,$01,$02,$13,$00,$02,$15,$06,$50,$10,$B0,$FF
MysticTicketEnd:
	db $00,$00,$00

EndofTicketChunks:

DataEnd:
	EOF