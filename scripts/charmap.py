# -*- coding: utf-8 -*-
import sys

chars = {
	# Japanese character table
	'　': '\x00',
	'あ': '\x01',
	'い': '\x02',
	'う': '\x03',
	'え': '\x04',
	'お': '\x05',
	'か': '\x06',
	'き': '\x07',
	'く': '\x08',
	'け': '\\t',
	'こ': '\\n',
	'さ': '\x0B',
	'し': '\x0C',
	'す': '\x0D',
	'せ': '\x0E',
	'そ': '\x0F',
	'た': '\x10',
	'ち': '\x11',
	'つ': '\x12',
	'て': '\x13',
	'と': '\x14',
	'な': '\x15',
	'に': '\x16',
	'ぬ': '\x17',
	'ね': '\x18',
	'の': '\x19',
	'は': '\x1A',
	'ひ': '\x1B',
	'ふ': '\x1C',
	'へ': '\x1D',
	'ほ': '\x1E',
	'ま': '\x1F',
	'み': '\x20',
	'む': '\x21',
	'め': '\x22',
	'も': '\x23',
	'や': '\x24',
	'ゆ': '\x25',
	'よ': '\x26',
	'ら': '\x27',
	'り': '\x28',
	'る': '\x29',
	'れ': '\x2A',
	'ろ': '\x2B',
	'わ': '\x2C',
	'を': '\x2D',
	'ん': '\x2E',
	'ぁ': '\x2F',
	'ぃ': '\x30',
	'ぅ': '\x31',
	'ぇ': '\x32',
	'ぉ': '\x33',
	'ゃ': '\x34',
	'ゅ': '\x35',
	'ょ': '\x36',
	'が': '\x37',
	'ぎ': '\x38',
	'ぐ': '\x39',
	'げ': '\x3A',
	'ご': '\x3B',
	'ざ': '\x3C',
	'じ': '\x3D',
	'ず': '\x3E',
	'ぜ': '\x3F',
	'ぞ': '\x40',
	'だ': '\x41',
	'ぢ': '\x42',
	'づ': '\x43',
	'で': '\x44',
	'ど': '\x45',
	'ば': '\x46',
	'び': '\x47',
	'ぶ': '\x48',
	'べ': '\x49',
	'ぼ': '\x4A',
	'ぱ': '\x4B',
	'ぴ': '\x4C',
	'ぷ': '\x4D',
	'ぺ': '\x4E',
	'ぽ': '\x4F',
	'っ': '\x50',

	'ア': '\x51',
	'イ': '\x52',
	'ウ': '\x53',
	'エ': '\x54',
	'オ': '\x55',
	'カ': '\x56',
	'キ': '\x57',
	'ク': '\x58',
	'ケ': '\x59',
	'コ': '\x5A',
	'サ': '\x5B',
	'シ': '\x5C',
	'ス': '\x5D',
	'セ': '\x5E',
	'ソ': '\x5F',
	'タ': '\x60',
	'チ': '\x61',
	'ツ': '\x62',
	'テ': '\x63',
	'ト': '\x64',
	'ナ': '\x65',
	'ニ': '\x66',
	'ヌ': '\x67',
	'ネ': '\x68',
	'ノ': '\x69',
	'ハ': '\x6A',
	'ヒ': '\x6B',
	'フ': '\x6C',
	'ヘ': '\x6D',
	'ホ': '\x6E',
	'マ': '\x6F',
	'ミ': '\x70',
	'ム': '\x71',
	'メ': '\x72',
	'モ': '\x73',
	'ヤ': '\x74',
	'ユ': '\x75',
	'ヨ': '\x76',
	'ラ': '\x77',
	'リ': '\x78',
	'ル': '\x79',
	'レ': '\x7A',
	'ロ': '\x7B',
	'ワ': '\x7C',
	'ヲ': '\x7D',
	'ン': '\x7E',
	'ァ': '\x7F',
	'ィ': '\x80',
	'ゥ': '\x81',
	'ェ': '\x82',
	'ォ': '\x83',
	'ャ': '\x84',
	'ュ': '\x85',
	'ョ': '\x86',
	'ガ': '\x87',
	'ギ': '\x88',
	'グ': '\x89',
	'ゲ': '\x8A',
	'ゴ': '\x8B',
	'ザ': '\x8C',
	'ジ': '\x8D',
	'ズ': '\x8E',
	'ゼ': '\x8F',
	'ゾ': '\x90',
	'ダ': '\x91',
	'ヂ': '\x92',
	'ヅ': '\x93',
	'デ': '\x94',
	'ド': '\x95',
	'バ': '\x96',
	'ビ': '\x97',
	'ブ': '\x98',
	'ベ': '\x99',
	'ボ': '\x9A',
	'パ': '\x9B',
	'ピ': '\x9C',
	'プ': '\x9D',
	'ペ': '\x9E',
	'ポ': '\x9F',
	'ッ': '\xA0',

	'０': '\xA1',
	'１': '\xA2',
	'２': '\xA3',
	'３': '\xA4',
	'４': '\xA5',
	'５': '\xA6',
	'６': '\xA7',
	'７': '\xA8',
	'８': '\xA9',
	'９': '\xAA',
	'！': '\xAB',
	'？': '\xAC',
	'。': '\xAD',
	'ー': '\xAE',
	'・': '\xAF',
	'⋯': '\xB0',
	'『': '\xB1',
	'』': '\xB2',
	'「': '\xB3',
	'」': '\xB4',
	'♂': '\xB5',
	'♀': '\xB6',
	'円': '\xB7',
	'．': '\xB8',
	'×': '\xB9',
	'／': '\xBA',

	'Ａ': '\xBB',
	'Ｂ': '\xBC',
	'Ｃ': '\xBD',
	'Ｄ': '\xBE',
	'Ｅ': '\xBF',
	'Ｆ': '\xC0',
	'Ｇ': '\xC1',
	'Ｈ': '\xC2',
	'Ｉ': '\xC3',
	'Ｊ': '\xC4',
	'Ｋ': '\xC5',
	'Ｌ': '\xC6',
	'Ｍ': '\xC7',
	'Ｎ': '\xC8',
	'Ｏ': '\xC9',
	'Ｐ': '\xCA',
	'Ｑ': '\xCB',
	'Ｒ': '\xCC',
	'Ｓ': '\xCD',
	'Ｔ': '\xCE',
	'Ｕ': '\xCF',
	'Ｖ': '\xD0',
	'Ｗ': '\xD1',
	'Ｘ': '\xD2',
	'Ｙ': '\xD3',
	'Ｚ': '\xD4',
	'ａ': '\xD5',
	'ｂ': '\xD6',
	'ｃ': '\xD7',
	'ｄ': '\xD8',
	'ｅ': '\xD9',
	'ｆ': '\xDA',
	'ｇ': '\xDB',
	'ｈ': '\xDC',
	'ｉ': '\xDD',
	'ｊ': '\xDE',
	'ｋ': '\xDF',
	'ｌ': '\xE0',
	'ｍ': '\xE1',
	'ｎ': '\xE2',
	'ｏ': '\xE3',
	'ｐ': '\xE4',
	'ｑ': '\xE5',
	'ｒ': '\xE6',
	'ｓ': '\xE7',
	'ｔ': '\xE8',
	'ｕ': '\xE9',
	'ｖ': '\xEA',
	'ｗ': '\xEB',
	'ｘ': '\xEC',
	'ｙ': '\xED',
	'ｚ': '\xEE',
	'▶': '\xEF',
	'：': '\xF0',
	'Ä': '\xF1',
	'Ö': '\xF2',
	'Ü': '\xF3',
	'ä': '\xF4',
	'ö': '\xF5',
	'ü': '\xF6',
	#'⬆': '\xF7',
	#'⬇': '\xF8',
	#'⬅': '\xF9',
	'\\l': '\xFA',
	'\\p': '\xFB',
	'\{FC}': '\xFC',
	'\\v1': '\xFD\x01',
	'\\n': '\xFE',
	'@': '\xFF',

	# characters changed for Western versions
	' ': '\x00',
	'À': '\x01',
	'Á': '\x02',
	'Â': '\x03',
	'Ç': '\x04',
	'È': '\x05',
	'É': '\x06',
	'Ê': '\x07',
	'Ë': '\x08',
	'Ì': '\\t',
	'Î': '\x0B',
	'Ï': '\x0C',
	'Ò': '\x0D',
	'Ó': '\x0E',
	'Ô': '\x0F',
	'Œ': '\x10',
	'Ù': '\x11',
	'Ú': '\x12',
	'Û': '\x13',
	'Ñ': '\x14',
	'ß': '\x15',
	'à': '\x16',
	'á': '\x17',
	'ç': '\x19',
	'è': '\x1A',
	'é': '\x1B',
	'ê': '\x1C',
	'ë': '\x1D',
	'ì': '\x1E',
	'î': '\x20',
	'ï': '\x21',
	'ò': '",$22,"',
	'ó': '\x23',
	'ô': '\x24',
	'œ': '\x25',
	'ù': '\x26',
	'ú': '\x27',
	'û': '\x28',
	'ñ': '\x29',
	'º': '\x2A',
	'ª': '\x2B',
	'\{er}': '\x2C',
	'&': '\x2D',
	'+': '\x2E',
	'\{L.}': '\x34',  # Italian 
	'\{Lv}': '\x34',  # English
	'\{Lv.}': '\x34', # German
	'\{N.}': '\x34',  # French
	'\{Nv}': '\x34',  # Spanish
	'=': '\x35',
	';': '\x36', # European
	'¿': '\x51',
	'¡': '\x52',
	'\{PKMN}': '\x53\x54',
	'\{POKé}': '\x55\x56',
	'\{POKéBLOC}': '\x55\x56\x57\x58\x59',   # French
	'\{POKéBLOCK}': '\x55\x56\x57\x58\x59',  # English
	'\{POKéCUBO}': '\x55\x56\x57\x58\x59',   # Spanish
	'\{POKéRIEGEL}': '\x55\x56\x57\x58\x59', # German
	'Í': '\x5A',
	'%': '\x5B',
	'(': '\x5C',
	')': '\x5D',
	'\{POKéMELLA}': '\x5E\x5F\x60\x61\x62',  # Italian
	'\{POKéMELLE}': '\x5E\x5F\x60\x61\x63',  # Italian
	'â': '\x68',
	'í': '\x6F',
	'⬆': '\x79',
	'⬇': '\x7A',
	'⬅': '\x7B',
	'➡': '\x7C',
	'\{e}': '\x84',  # European
	'‹': '\x85',     # European
	'›': '\x86',     # European
	'\{re}': '\xA0', # European
	'0': '\xA1',
	'1': '\xA2',
	'2': '\xA3',
	'3': '\xA4',
	'4': '\xA5',
	'5': '\xA6',
	'6': '\xA7',
	'7': '\xA8',
	'8': '\xA9',
	'9': '\xAA',
	'!': '\xAB',
	'?': '\xAC',
	'.': '\xAD',
	'-': '\xAE',
	'…': '\xB0',
	'“': '\xB1', # replaced with « for French, „ for German
	'”': '\xB2', # replaced with » for French, “ for German
	'‘': '\xB3',
	'’': '\xB4',
	'$': '\xB7',
	',': '\xB8',
	'/': '\xBA',
	'A': '\xBB',
	'B': '\xBC',
	'C': '\xBD',
	'D': '\xBE',
	'E': '\xBF',
	'F': '\xC0',
	'G': '\xC1',
	'H': '\xC2',
	'I': '\xC3',
	'J': '\xC4',
	'K': '\xC5',
	'L': '\xC6',
	'M': '\xC7',
	'N': '\xC8',
	'O': '\xC9',
	'P': '\xCA',
	'Q': '\xCB',
	'R': '\xCC',
	'S': '\xCD',
	'T': '\xCE',
	'U': '\xCF',
	'V': '\xD0',
	'W': '\xD1',
	'X': '\xD2',
	'Y': '\xD3',
	'Z': '\xD4',
	'a': '\xD5',
	'b': '\xD6',
	'c': '\xD7',
	'd': '\xD8',
	'e': '\xD9',
	'f': '\xDA',
	'g': '\xDB',
	'h': '\xDC',
	'i': '\xDD',
	'j': '\xDE',
	'k': '\xDF',
	'l': '\xE0',
	'm': '\xE1',
	'n': '\xE2',
	'o': '\xE3',
	'p': '\xE4',
	'q': '\xE5',
	'r': '\xE6',
	's': '\xE7',
	't': '\xE8',
	'u': '\xE9',
	'v': '\xEA',
	'w': '\xEB',
	'x': '\xEC',
	'y': '\xED',
	'z': '\xEE',
	':': '\xF0',
}

out = open(sys.argv[2], 'w')
with open(sys.argv[1], 'r') as f:
	for asm in f:
		# split by quotes
		asms = asm.split('"')

		pad_length = 0
		output = ''
		print_macro = True
		if asms[0].strip() == "Text":
			asms[0] = asms[0].replace("Text", "db")
		elif asms[0].strip() == "Tag_Text":
			pad_length = 45
		elif asms[0].find("OT_Name") == -1 and asms[0].find("Nickname") == -1 and asms[0].find("Insert_Prologue") == -1 and asms[0].find("Berry") == -1 and asms[0].find("Tag_Text") == -1:
			print_macro = False

		if print_macro:
			even = False
			for token in asms:
				if even:
					characters = []
					# token is a string to convert to byte values
					while len(token):
						# read a single UTF-8 codepoint
						char = token[0]
						if ord(char) < 0xc0:
							token = token[1:]
							# handle escape sequences
							if char == "\\":
								if token[0] == '{':
									for i in range(len(token)):
										char += token[0]
										token = token[1:]
										if char[-1] == '}':
											break
								elif token[0] == 'v':
									char += token[0:2]
									token = token[2:]
								else:
									char += token[0]
									token = token[1:]
						elif ord(char) < 0xe0:
							char = char + token[1:2]
							token = token[2:]
						elif ord(char) < 0xf0:
							char = char + token[1:3]
							token = token[3:]
						else:
							char = char + token[1:4]
							token = token[4:]
						characters += [char]

					line = 0
					output += '"'
					for char in characters:
						if chars[char] == '\x00':
							output += '",$00,"'
						else:
							output += chars[char]
					output += '"'


					if pad_length - len(characters) > 0:
						output += ",$FF"
						for i in range(len(characters) + 1, pad_length):
							output += ",$00"

				else:
					output += token
				even = not even

		else:
			asm = asm.replace("\\0", "\",$00,\"")
			asm = asm.replace("é",   "\x7F")
			output = asm

		out.write(output)
f.closed
