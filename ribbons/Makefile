all: 00-R000-EN.raw


ribbon-%.tx: ribbon.asm
	python ../scripts/regionalize.py $< $@ $* $*
ribbon-%.o: ribbon-%.tx
	./rgbasm -o $@ $<
ribbon-%.gbc: ribbon-%.o
	./rgblink -o $@ $<
ribbon-%.bin: ribbon-%.gbc
	python ../scripts/stripgbc.py $< $@
ribbon-%.mev: ribbon-%.bin
	python ../scripts/checksum.py $< $@

prologue-%.tx: prologue.asm
	python ../scripts/regionalize.py $< $@ $* $*
prologue-%.o: prologue-%.tx
	./rgbasm -o $@ $<
prologue-%.gbc: prologue-%.o
	./rgblink -o $@ $<
prologue-%.bin: prologue-%.gbc
	python ../scripts/stripgbc.py $< $@

00-R000-%.tx: 00-R000.asm ribbon-%.mev prologue-%.bin
	python ../scripts/ereadertext.py $< $@ $*
00-R000-%.o: 00-R000-%.tx
	./rgbasm -o $@ $<
00-R000-%.gbc: 00-R000-%.o
	./rgblink -o $@ $<
00-R000-%.z80: 00-R000-%.gbc
	python ../scripts/stripgbc.py $< $@
00-R000-%.vpk: 00-R000-%.z80
	./nevpk -c -i $< -o $@
00-R000-%.raw: 00-R000-%.vpk
	./nedcmake -i $< -o $@ -type 1 -region 1
	mv $@-01.raw $@


clean:
	rm -f *.tx *.o *.gbc *.z80 *.bin *.mev *.vpk *.raw