library(ggplot2)

#setting the directory where our dataset is stored
setwd("E://Notes//Sem 8//r progamming")

#reading the dataset
data1 <- read.csv("coursera_data.csv")

#changing the names of columns
colnames(data1) <- c('name','university','level','rating','url','description','skills')

#getting data of University and Levels
difficulty_table <- table(data1$university,data1$level)

difficulty_df <- as.data.frame(diffculty_table)
colnames(difficulty_df)<-c("organization","level","freq")
intermediate <- subset(difficulty_df,level=="Intermediate")

intermediate1 <- intermediate[order(intermediate$freq, decreasing = TRUE), ] 
top_10_uni_intermediate <- intermediate1[1:10,]

#plotting code for top 10 organization creating advance courses
p<-ggplot(data=top_10_uni_intermediate, aes(x=organization, y=freq))+
  geom_bar(stat="identity",color="black",fill="steelblue")+labs(x="Organizations",y="Number Of Courses",title="Top 10 Organizations Creating Intermediate Level Courses on Coursera")
p + coord_flip()