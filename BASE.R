#Part B

library("seqinr")                       
DNA<-read.fasta("./FileName.seq")
seq<-DNA[[1]]
seqtable<-count(DNA,1)
MyFunction<-function(seqtable){
  A<-seqtable[["A"]]
  C<-seqtable[["C"]]
  T<-seqtable[["T"]]
  G<-seqtable[["G"]]
  outlist<-list(A,C,T,G)
  return(outlist)
}

write.csv(MyFunction, file = "FileName.count")



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
