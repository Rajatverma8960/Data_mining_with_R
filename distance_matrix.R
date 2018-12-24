library(cluster)
install.packages("cluster")

s0<-daisy(as.data.frame(data1))
s0<-as.matrix(s0)

data11<-data.frame(data1)

data11$nc<-ordered(data1$Dessig, levels = c("D1","D2","D3","D4","D5"))
data11<-data11[,-1]
s1<-daisy(as.data.frame(data1))
s1<-as.matrix(s1)
