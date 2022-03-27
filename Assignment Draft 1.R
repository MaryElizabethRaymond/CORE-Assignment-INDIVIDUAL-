#Part A Python Script 
outFile=open('./MyFileName.seq','w+')
import random
Nb=30
dna = ["A","G","C","T"]
#initialise empty string
#this is where the bases will be added as they are generated
random_sequence=''
# We'll create a string of 100 random bases
for i in range(Nb):
  random_sequence+=random.choice(dna)
outFile.write(random_sequence)
outFile.close()

inFile = open('./MyFileName.seq', 'r')
contents = inFile.read()
print(contents)


#Part B

library("seqinr")                       
DNA<-read.fasta("./FileName.seq")
seq<-paste(DNA[1])
seqtable<-count(seq,1)
BASE.R<-function(seqtable){
  A<-seqtable[["A"]]
  C<-seqtable[["C"]]
  T<-seqtable[["T"]]
  G<-seqtable[["G"]]
  outlist<-list(A,C,T,G)
}



#Part C 
Numbers<-read.csv("./FileName.csv")
Numbers$var1<-Numbers$var1/mean(Numbers$var1)
Numbers$var2<-Numbers$var2/mean(Numbers$var2)
Numbers$var3<-Numbers$var3/mean(Numbers$var3)
Numbers$var4<-Numbers$var4/mean(Numbers$var4)

library(gridExtra)
library(ggplot2)
his1<-ggplot(Numbers, aes(x=var1))+geom_histogram()
his2<-ggplot(Numbers, aes(x=var2))+geom_histogram()
his3<-ggplot(Numbers, aes(x=var3))+geom_histogram()
his4<-ggplot(Numbers, aes(x=var4))+geom_histogram()

figure<-grid.arrange(his1,his2,his3,his4, nrow=2)
pdf("Figure2.pdf")
print(figure)
dev.off()

