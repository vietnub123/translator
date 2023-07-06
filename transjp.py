import os
from googletrans import Translator
translator = Translator()


canphaidic = os.listdir('F:/trans/trckhidic')

for i in canphaidic:

	fai = "F:/trans/trckhidic/" + i
	newfai = 'F:/trans/saukhidic/' + i

	nf = open(newfai, "w+",encoding = 'utf-8')

	with open(fai,"r+",encoding = 'utf-8') as f:
		for line in f:
			line = line.replace("\n",'')
			cont = line[:len(line)-3]
			head = line[-3:]
			if head == '[p]' or head=='[r]':
				coun = 0
				while coun<=10:
					try:
						resut = translator.translate(cont,dest ='en')
						break
					except:
						coun+=1
				try:
					resut = resut.text+head
				except:
					resut = resut+head
				print('1')
				print(resut)
				nf.write(resut+'\n')
			else:
				nf.write(line+'\n')
	nf.close()


