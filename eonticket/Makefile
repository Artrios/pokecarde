all: 00-C000-EN.raw verify
verify:
	md5sum --check eonticket.md5


eonticket-%.tx: eonticket.asm
	python ../scripts/regionalize.py $< $@ $* $*
eonticket-%.o: eonticket-%.tx
	./rgbasm.exe -o $@ $<
eonticket-%.gbc: eonticket-%.o
	./rgblink.exe -o $@ $<
eonticket-%.bin: eonticket-%.gbc
	python ../scripts/stripgbc.py $< $@
eonticket-%.mev: eonticket-%.bin
	python ../scripts/checksum.py $< $@

prologue-%.tx: prologue.asm
	python ../scripts/regionalize.py $< $@ $* $*
prologue-%.o: prologue-%.tx
	./rgbasm.exe -o $@ $<
prologue-%.gbc: prologue-%.o
	./rgblink.exe -o $@ $<
prologue-%.bin: prologue-%.gbc
	python ../scripts/stripgbc.py $< $@

00-C000-%.tx: 00-C000.asm eonticket-%.mev prologue-%.bin
	python ../scripts/ereadertext.py $< $@ $*
00-C000-%.o: 00-C000-%.tx
	./rgbasm.exe -o $@ $<
00-C000-%.gbc: 00-C000-%.o
	./rgblink.exe -o $@ $<
00-C000-%.z80: 00-C000-%.gbc
	python ../scripts/stripgbc.py $< $@
00-C000-%.vpk: 00-C000-%.z80
	./nevpk.exe -c -i $< -o $@
00-C000-%.raw: 00-C000-%.vpk
	./nedcmake.exe -i $< -o $@ -type 1 -region 1

clean:
	rm -f *.tx *.o *.gbc *.z80 *.bin *.mev *.vpk *.raw