outFile=open('./MyFileName.seq','w+') #opens file so we can write "w+"
import random
Nb=100 #choose number of base pairs 
dna = ["A","G","C","T"] #set of random nucleotides to choose from 
random_sequence=''
for i in range(Nb):
  random_sequence+=random.choice(dna)
outFile.write(random_sequence) #send the randome sequence to the file 
outFile.close() #close file 