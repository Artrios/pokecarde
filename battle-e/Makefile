all: verify 

verify: series_1_en series_2_en 129_promos_en n_promos_en p_promos_en berries
	md5sum --check battle-e.md5

internal_series_nums = 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
internal_promo_nums = 01 02 03 04 05 06 07 08 
internal_berry_nums = 01 02 03 04 05 06 07 08 09 10 11 12

series_1_en: $(internal_series_nums:%=build/card-08-A0%-EN-01.raw)
series_2_en: $(internal_series_nums:%=build/card-08-B0%-EN-01.raw)
129_promos_en: build/card-129-B001-EN-01.raw build/card-129-B002-EN-01.raw
n_promos_en: $(internal_promo_nums:%=build/card-08-N0%-EN-01.raw)
p_promos_en: $(internal_promo_nums:%=build/card-08-P0%-EN-01.raw)
berries: $(internal_berry_nums:%=build/card-08-K0%-EN-01.raw)

# Include the card id to trainer definition mapping
include trainer_cards.mk 

# Include the card id to berry definition mapping
include berry_cards.mk 

# Capture all the pngs and label them to be converted to 4bpp
GFX=$(addprefix build/, $(addsuffix .4bpp, $(basename $(wildcard sprites/trainers/*.png))))

# Convert png and convert them
build/sprites/trainers/%.4bpp: sprites/trainers/%.png
	../bin/pret/gbagfx $< $@
.PRECIOUS: build/sprites/trainers/%.4bpp

build/prologue-%.tx: prologue.asm
	python3 ../scripts/regionalize.py $< $@ $* $*
build/prologue-%.o: build/prologue-%.tx
	../bin/rgbds/v0.9.1/rgbasm -M $@.d -o $@ $<
build/prologue-%.gbc: build/prologue-%.o
	../bin/rgbds/v0.9.1/rgblink -o $@ $<
build/prologue-%.bin: build/prologue-%.gbc
	python3 ../scripts/stripgbc.py $< $@

.PRECIOUS: build/prologue-%.tx build/prologue-%.o build/prologue-%.gbc build/prologue-%.bin

build/battletrainer-%.tx: battletrainer.asm build/prologue-%.bin
	python3 ../scripts/ereadertext.py $< $@ $*

.PRECIOUS: build/battletrainer-%.tx

build/enigmaberry-%.tx: enigmaberry.asm build/prologue-%.bin
	python3 ../scripts/ereadertext.py $< $@ $*

.PRECIOUS: build/enigmaberry-%.tx

build/berries/%-EN.tx: berries/%.asm
	python3 ../scripts/regionalize.py $< $@ EN EN
build/berries/%.o: build/berries/%.tx
	../bin/rgbds/v0.9.1/rgbasm -M $@.d -o $@ $<
build/berries/%.gbc: build/berries/%.o
	../bin/rgbds/v0.9.1/rgblink -o $@ $<
build/berries/%.bin: build/berries/%.gbc
	python3 ../scripts/stripgbc.py $< $@
build/berries/%.mev: build/berries/%.bin
	python3 ../scripts/checksum.py $< $@

.PRECIOUS: build/berries/%-EN.tx build/berries/%.o build/berries/%.gbc build/berries/%.bin build/berries/%.mev

build/trainers/%-EN.tx: trainers/%.asm
	python3 ../scripts/regionalize.py $< $@ EN EN
build/trainers/%.o: build/trainers/%.tx
	../bin/rgbds/v0.9.1/rgbasm -M $@.d -o $@ $<
build/trainers/%.gbc: build/trainers/%.o
	../bin/rgbds/v0.9.1/rgblink -o $@ $<
build/trainers/%.bin: build/trainers/%.gbc
	python3 ../scripts/stripgbc.py $< $@
build/trainers/%.mev: build/trainers/%.bin
	python3 ../scripts/checksum.py $< $@

.PRECIOUS: build/trainers/%-EN.tx build/trainers/%.o build/trainers/%.gbc build/trainers/%.bin build/trainers/%.mev

build/card-%-EN.tx: card-%.asm
	python3 ../scripts/ereadertext.py $< $@ EN
build/card-%.o: build/card-%.tx build/prologue-EN.tx build/battletrainer-EN.tx build/enigmaberry-EN.tx $(GFX)
	../bin/rgbds/v0.9.1/rgbasm -I build -M $@.d -o $@ $<
build/card-%.gbc: build/card-%.o
	../bin/rgbds/v0.9.1/rgblink -o $@ $<
build/card-%.z80: build/card-%.gbc
	python3 ../scripts/stripgbc.py $< $@
build/card-%.vpk: build/card-%.z80
	../bin/nedc/v1.4/nevpk -c -i $< -o $@
build/card-%-01.raw: build/card-%.vpk
	../bin/nedc/v1.4/nedcmake -i $< -o $(subst -01.raw,,$@) -type 1 -region 1
build/card-%.300.bmp: build/card-%-01.raw
	../bin/nedc/v1.4.1/raw2bmp -i $< -o $(subst .bmp,,$@) -dpi 300

.PRECIOUS: build/card-%-EN.tx build/card-%.o build/card-%.gbc build/card-%.z80 build/card-%.vpk build/card-%-01.raw build/card-%.300.bmp

# Automatically create build dirs if missing
BUILD_DIRS=build build/trainers build/berries build/sprites/trainers
$(info $(shell mkdir -p $(BUILD_DIRS)))

.PHONY: clean
clean:
	rm -rf build && mkdir -p $(BUILD_DIRS)


# Automatically generated dep files
-include build/*.d
-include build/trainers/*.d
-include build/berries/*.d
