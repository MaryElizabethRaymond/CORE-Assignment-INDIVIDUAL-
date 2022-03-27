library(readr)
library(dplyr)

# split it into a vector of individual characters:
strsplit(myseq, "")[[1]]
#  [1] "A" "G" "C" "T" "T" "T" "T" "C" "A" "T" "T" "C" "T" "G" "A" "C" "T" "G" "C" "A" "A" "C" "G" "G" "G" "C" "A" "A" "T" "A" "T" "G" "T" "C" "T" "C" "T" "G" "T"
# [40] "G" "T" "G" "G" "A" "T" "T" "A" "A" "A" "A" "A" "A" "A" "G" "A" "G" "T" "G" "T" "C" "T" "G" "A" "T" "A" "G" "C" "A" "G" "C"

# count the frequencies of each
table(strsplit(myseq, ",")[[1]])
# A  C  G  T 
# 20 12 17 21 
strsplit(as.character(TestGenome), split="", fixed=T)

TestGenome2<-read.csv("./Fasta.txt")
print(TestGenome)
paste(TestGenome2
    )
strsplit(as.character(TestGenome2), split="", fixed=T)
#B
library("seqinr")
TestGenome<-read.fasta("./GCR2_Genome.fsa")
seq<-paste(TestGenome[1])
count(seq,[["a"]])

seq2<-c("A","T","G","C","T")
length(seq2)


DNA<-read.fasta("./FileName.seq")
seq<-paste(DNA[1])
seqtable<-count(seq,1)
BASE.R<-function(seq){
  A<-seqtable[["A"]]
  C<-seqtable[["C"]]
  T<-seqtable[["T"]]
  G<-seqtable[["G"]]
  outlist<-list()
}



#Part C 
Numbers<-read.csv("./Numbers.csv")
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

