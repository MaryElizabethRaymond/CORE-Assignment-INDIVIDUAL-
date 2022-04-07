#!/usr/bin/env python3

os.chdir('C:\\Users\\User\\OneDrive\\Documents\\R\\CORE Assignment (INDIVIDUAL)')
outFile=open('./MyFileName.seq','w+')
import random
Nb=100
dna = ["A","G","C","T"]
random_sequence=''
for i in range(Nb):
  random_sequence+=random.choice(dna)
outFile.write(">" + "DNA" + "\n" + random_sequence "\n")
outFile.close()