#Part B

DNA<-read.csv("./FileName.seq") #creates object nucleotides from file  
DNAChar<-as.character(DNA) #converts to character list 
DNAsplit<-strsplit(DNAChar, split="") #splits individual characters into list of individuals characters (nucleotides )

MyFunction<-function(DNA){
  AVec<-length(grep("A", DNAsplit[[1]], value=TRUE))
  #grep function counts the occurrences of specified nucleotide and value=TRUE argument will output a string containing the occurences of nucleotide in string  
  #NVec<-length() will output the number nucleotides
  #using [[1]] lets me pick single element within DNA split (doesn't work with [1])
  GVec<-length(grep("G", DNAsplit[[1]], value=TRUE)) 
  TVec<-length(grep("T", DNAsplit[[1]], value=TRUE))
  CVec<-length(grep("C", DNAsplit[[1]], value=TRUE))
  outlist<-c(CVec, TVec, GVec, AVec) #creates vector of nucleotide counts seperated by commas 
  return(outlist) #returns outlist to user
  
}
 
MyFunction(DNA) #runs function with our sequence  

write.csv(MyFunction(DNA), file = "FileName.count") #creates file with nucleotide counts 


#Part C 
Numbers<-read.csv("./FileName.csv") #opens file  
Numbers[,1]<-Numbers[,1]/mean(Numbers[,1]) 
#converts column to proportion 
Numbers[,2]<-Numbers[,2]/mean(Numbers[,2])
Numbers[,3]<-Numbers[,3]/mean(Numbers[,3])
Numbers[,4]<-Numbers[,4]/mean(Numbers[,4])

library(gridExtra)
library(ggplot2)
his1<-ggplot(Numbers, aes(x=Numbers[,1]))+geom_histogram()
#creating histograms of our proportions 
his2<-ggplot(Numbers, aes(x=Numbers[,2]))+geom_histogram()
his3<-ggplot(Numbers, aes(x=Numbers[,3]))+geom_histogram()
his4<-ggplot(Numbers, aes(x=Numbers[,4]))+geom_histogram()

figure<-grid.arrange(his1,his2,his3,his4, nrow=2)#arranging four histograms into figure with 2rows (i.e. 2 by 2 square figure)
pdf("Figure.pdf") #opens file 
print(figure) #puts figure into file 
dev.off() #closes file 
