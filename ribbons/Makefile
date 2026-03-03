all: build/00-R000-EN-01.raw verify

.PHONY: verify
verify: build/00-R000-EN.z80 
	md5sum --check ribbons.md5

build/prologue-%.tx: prologue.asm
	python3 ../scripts/regionalize.py $< $@ $* $*
build/prologue-%.o: build/prologue-%.tx
	../bin/rgbds/v0.9.1/rgbasm -M $@.d -o $@ $<
build/prologue-%.gbc: build/prologue-%.o
	../bin/rgbds/v0.9.1/rgblink -o $@ $<
build/prologue-%.bin: build/prologue-%.gbc
	python3 ../scripts/stripgbc.py $< $@

.PRECIOUS: build/prologue-%.tx build/prologue-%.o build/prologue-%.gbc build/prologue-%.bin

build/ribbon-%.tx: ribbon.asm
	python3 ../scripts/regionalize.py $< $@ $* $*
build/ribbon-%.o: build/ribbon-%.tx
	../bin/rgbds/v0.9.1/rgbasm -M $@.d -o $@ $<
build/ribbon-%.gbc: build/ribbon-%.o
	../bin/rgbds/v0.9.1/rgblink -o $@ $<
build/ribbon-%.bin: build/ribbon-%.gbc
	python3 ../scripts/stripgbc.py $< $@
build/ribbon-%.mev: build/ribbon-%.bin
	python3 ../scripts/checksum.py $< $@

.PRECIOUS: build/ribbon-%.tx build/ribbon-%.o build/ribbon-%.gbc build/ribbon-%.bin build/ribbon-%.mev

build/00-R000-%.tx: 00-R000.asm build/ribbon-%.mev build/prologue-%.bin
	python3 ../scripts/ereadertext.py $< $@ $*
build/00-R000-%.o: build/00-R000-%.tx
	../bin/rgbds/v0.9.1/rgbasm -M $@.d -I build -o $@ $<
build/00-R000-%.gbc: build/00-R000-%.o
	../bin/rgbds/v0.9.1/rgblink -o $@ $<
build/00-R000-%.z80: build/00-R000-%.gbc
	python3 ../scripts/stripgbc.py $< $@
build/00-R000-%.vpk: build/00-R000-%.z80
	../bin/nedc/v1.4/nevpk -c -i $< -o $@
build/00-R000-%-01.raw: build/00-R000-%.vpk
	../bin/nedc/v1.4/nedcmake -i $< -o $(subst -01.raw,,$@) -type 1 -region 1

.PRECIOUS: build/00-R000-%.tx build/00-R000-%.o build/00-R000-%.gbc build/00-R000-%.z80 build/00-R000-%.vpk build/00-R000-%-01.raw

# Automatically create build dirs if missing
BUILD_DIRS=build
$(info $(shell mkdir -p $(BUILD_DIRS)))

.PHONY: clean
clean:
	rm -rf build && mkdir -p $(BUILD_DIRS)

# Automatically generated dep files
-include build/*.d
