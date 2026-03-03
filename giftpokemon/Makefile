all: build/00-G000-EN-01.raw verify

.PHONY: verify
verify: build/00-G000-EN.z80 
	md5sum --check giftpokemon.md5

build/prologue-%.tx: prologue.asm
	python3 ../scripts/regionalize.py $< $@ $* $*
build/prologue-%.o: build/prologue-%.tx
	../bin/rgbds/v0.9.1/rgbasm -M $@.d -o $@ $<
build/prologue-%.gbc: build/prologue-%.o
	../bin/rgbds/v0.9.1/rgblink -o $@ $<
build/prologue-%.bin: build/prologue-%.gbc
	python3 ../scripts/stripgbc.py $< $@

.PRECIOUS: build/prologue-%.tx build/prologue-%.o build/prologue-%.gbc build/prologue-%.bin

build/giftpokemon-%.tx: giftpokemon.asm
	python3 ../scripts/regionalize.py $< $@ $* $*
build/giftpokemon-%.o: build/giftpokemon-%.tx
	../bin/rgbds/v0.9.1/rgbasm -M $@.d -o $@ $<
build/giftpokemon-%.gbc: build/giftpokemon-%.o
	../bin/rgbds/v0.9.1/rgblink -o $@ $<
build/giftpokemon1-%.bin: build/giftpokemon-%.gbc
	python3 ../scripts/stripgbc.py $< $@
build/giftpokemon-%.bin: build/giftpokemon1-%.bin
	python3 ../scripts/pokemonstructure.py $< $@
build/giftpokemon-%.mev: build/giftpokemon-%.bin
	python3 ../scripts/checksum.py $< $@

.PRECIOUS: build/giftpokemon-%.tx build/giftpokemon-%.o build/giftpokemon-%.gbc build/giftpokemon1-%.bin build/giftpokemon-%.bin build/giftpokemon-%.mev

build/00-G000-%.tx: 00-G000.asm build/giftpokemon-%.mev build/prologue-%.bin
	python3 ../scripts/ereadertext.py $< $@ $*
build/00-G000-%.o: build/00-G000-%.tx
	../bin/rgbds/v0.9.1/rgbasm -M $@.d -I build -o $@ $<
build/00-G000-%.gbc: build/00-G000-%.o
	../bin/rgbds/v0.9.1/rgblink -o $@ $<
build/00-G000-%.z80: build/00-G000-%.gbc
	python3 ../scripts/stripgbc.py $< $@
build/00-G000-%.vpk: build/00-G000-%.z80
	../bin/nedc/v1.4/nevpk -c -i $< -o $@
build/00-G000-%-01.raw: build/00-G000-%.vpk
	../bin/nedc/v1.4/nedcmake -i $< -o $(subst -01.raw,,$@) -type 1 -region 1

.PRECIOUS: build/00-G000-%.tx build/00-G000-%.o build/00-G000-%.gbc build/00-G000-%.z80 build/00-G000-%.vpk build/00-G000-%-01.raw

# Automatically create build dirs if missing
BUILD_DIRS=build
$(info $(shell mkdir -p $(BUILD_DIRS)))

.PHONY: clean
clean:
	rm -rf build && mkdir -p $(BUILD_DIRS)

# Automatically generated dep files
-include build/*.d
