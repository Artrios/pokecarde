# -*- coding: utf-8 -*-
import sys
from gen3text import utf8ToRSText
from asmquote import asmQuoteBytes

data_region = sys.argv[3] # determines region code
text_region = sys.argv[4] # determines string translation

valid_regions = [
  'JP',
  'EN',
  'FR',
  'IT',
  'DE',
  'ES',
]

if data_region not in valid_regions:
    print("Invalid data region")
    sys.exit(1)

if text_region not in valid_regions:
    print("Invalid text region")
    sys.exit(1)

out = open(sys.argv[2], 'w')

with open(sys.argv[1], 'r') as f:
	for asm in f:
		asms = asm.split('"')
		command = asms[0].strip()
		if (command == "Text_" + text_region) or (command == "Text"):
			asms[1] = utf8ToRSText(asms[1], text_region)
			try:
				length = asms[2].split(';')[0] # strip trailing comment
				padding = int(length) - len(asms[1])
				if padding > 0:
					asms[1] += '\xFF'
				for i in range(padding - 1):
					asms[1] += "\x00"
			except ValueError:
				pass
			out.write("\tdb " + asmQuoteBytes(asms[1]) + "\n")
		elif len(command) < 5 or command[0:5] != "Text_":
			out.write(asm)
			if "macros.asm" in asm:
				# can’t do this until after REGION_EN, etc. are loaded
				out.write("DEF REGION EQU REGION_" + data_region + "\n")
		# else this is foreign text, delete it
f.closed
