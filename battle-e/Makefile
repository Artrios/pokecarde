SERIES_1_NUMS = A001 A002 A003 A004 A005 A006 A007 A008 A009 A010 A011 A012 A013 A014 A015 A016 A017 A018 A019 A020 A021 A022 A023 A024 A025 A026 A027 A028 A029 A030 A031 A032 A033 A034 A035 A036 A037 A038 A039 A040 A041 A042 A043 A044 A045 A046 A047 A048 K001 K002 K003 K004 K005 K006
SERIES_1_TRAINERS = alana annie antonio april belford bryce candice celina clayton devin dominic dustin ellie fay fuego goro griffin hayden heather hillary hugo irazu irvin jeffrey judith justine kendall logan maggie mandy marcus natalie natasha oscar patrick raquel renee rudy sandia sandy sofia sonya sophie stuart tsutomu tyler wilson zuril
SERIES_1_BERRIES = chilan drash eggant nutpea pumkin strib
#PROMO_EN_TRAINERS = astrid nils

all: series_1 verify
series_1: $(SERIES_1_TRAINERS:%=trainers/%-EN.mev) $(SERIES_1_BERRIES:%=berries/%-EN.mev) $(SERIES_1_NUMS:%=08-%-EN.raw)
verify:
	md5sum --check battle-e.md5


trainers/%-EN.tx: trainers/%.asm
	python ../scripts/regionalize.py $< $@ EN EN
trainers/%.o: trainers/%.tx
	rgbasm -o $@ $<
trainers/%.gbc: trainers/%.o
	rgblink -o $@ $<
trainers/%.bin: trainers/%.gbc
	python ../scripts/stripgbc.py $< $@
trainers/%.z80: trainers/%.gbc
	python ../scripts/stripgbc.py $< $@
trainers/%.mev: trainers/%.bin
	python ../scripts/checksum.py $< $@


berries/%-EN.tx: berries/%.asm
	python ../scripts/regionalize.py $< $@ EN EN
berries/%.o: berries/%.tx
	rgbasm -o $@ $<
berries/%.gbc: berries/%.o
	rgblink -o $@ $<
berries/%.bin: berries/%.gbc
	python ../scripts/stripgbc.py $< $@
berries/%.z80: berries/%.gbc
	python ../scripts/stripgbc.py $< $@
berries/%.mev: berries/%.bin
	python ../scripts/checksum.py $< $@


prologue-%.tx: prologue.asm
	python ../scripts/regionalize.py $< $@ $* $*
prologue-%.o: prologue-%.tx
	rgbasm -o $@ $<
prologue-%.gbc: prologue-%.o
	rgblink -o $@ $<
prologue-%.bin: prologue-%.gbc
	python ../scripts/stripgbc.py $< $@


battletrainer-%.tx: battletrainer.asm prologue-%.bin
	python ../scripts/ereadertext.py $< $@ $*
08-A%-EN.tx: 08-A%.asm battletrainer-EN.tx
	python ../scripts/ereadertext.py $< $@ EN
08-A%.o: 08-A%.tx
	rgbasm -o $@ $<
08-A%.gbc: 08-A%.o
	rgblink -o $@ $<
08-A%.z80: 08-A%.gbc
	python ../scripts/stripgbc.py $< $@
08-A%.vpk: 08-A%.z80
	./nevpk -c -i $< -o $@
08-A%.raw: 08-A%.vpk
	./nedcmake -i $< -o $@ -type 1 -region 1
	mv $@-01.raw $@


enigmaberry-%.tx: enigmaberry.asm prologue-%.bin
	python ../scripts/ereadertext.py $< $@ $*
08-K%-EN.tx: 08-K%.asm enigmaberry-EN.tx
	python ../scripts/ereadertext.py $< $@ EN
08-K%.o: 08-K%.tx
	rgbasm -o $@ $<
08-K%.gbc: 08-K%.o
	rgblink -o $@ $<
08-K%.z80: 08-K%.gbc
	python ../scripts/stripgbc.py $< $@
08-K%.vpk: 08-K%.z80
	./nevpk -c -i $< -o $@
08-K%.raw: 08-K%.vpk
	./nedcmake -i $< -o $@ -type 1 -region 1 -raw
	mv $@-01.raw $@

clean:
	rm -f *.z80 *.tx *.o *.gbc *.bin *.raw \
	trainers/*.tx trainers/*.o trainers/*.gbc trainers/*.bin trainers/*.mev \
	berries/*.tx berries/*.o berries/*.gbc berries/*.bin berries/*.mev