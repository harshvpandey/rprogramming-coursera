setwd("E://Notes//Sem 8//r progamming")
#reading the dataset
data1 <- read.csv("coursera_data.csv")
#changing the names of columns
colnames(data1) <- c('name','university','level','rating','url','description','skills')

table(data1$level)
tab_level <- table(data1$level)
frame <- as.data.frame(tab_level)

pie(frame$Freq,labels=frame$Var1,main="Courses Level",col = rainbow(length(frame$Freq)))
