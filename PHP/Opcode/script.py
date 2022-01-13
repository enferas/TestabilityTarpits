import re
import os

opcodes = {}
all_opcodes = {}

with open("opcodes.txt", 'r') as fileread:
	data = fileread.read()
for l in data.split('\n'):
	ls = l.split(' ')
	if len(ls)>1:
		op = ls[1]
		op = op.replace("ZEND_","")
		all_opcodes[op] = 1
for root, dirs, files in os.walk("."):
	for file in files:
		if file.endswith(".php"):
			os.system("php -d opcache.enable_cli=1 -d opcache.opt_debug_level=0x10000 " + os.path.join(root, file) + "> "+file.split('.')[0]+".bash")
			os.system("php -d opcache.enable_cli=1 -d opcache.opt_debug_level=0x10000 " + os.path.join(root, file) + "> out.txt")
			with open("out.txt", 'r') as fileread:
				data = fileread.read()
			for line in data.split('\n'):
				#print(line)
				ls = line.split(' ')
				if '00' in ls[0]:
					op = ""
					if len(ls)>3 and ls[2]=='=':
						op = ls[3]
					else:
						op = ls[1]
					num = file.split('.')[0]
					if op in opcodes:
						opcodes[op].add(num)
					else:
						opcodes[op] = {num}
					#print(op+" IN "+file)

co = 1
fout = open("main_table.md", "a")
for op in opcodes:
	print(str(co)+ ". "+op,end =" ")
	ls = list(opcodes[op])
	ls.sort()
	fout.write("| " + op + " | ")
	for n in ls:
		print(n,end=" ")
		fout.write(n + " ")
	print()
	fout.write("|\n")
	co = co + 1
fout.close()

co = 1
print("STILL NEED TO PROCESS")
for op in all_opcodes:
	if op not in opcodes:
		print(str(co)+". ",end=" ")
		print(op)
		co = co + 1
