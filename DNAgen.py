#!/usr/bin/env python3

outFile=open('./MyFileName.seq','w+')
import random
Nb=100
dna = ["A","G","C","T"]
random_sequence=''
for i in range(Nb):
  random_sequence+=random.choice(dna)
outFile.write(">" + "DNA" + "\n" + random_sequence "\n")
outFile.close()
