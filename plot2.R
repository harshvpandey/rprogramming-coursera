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
advance <- subset(difficulty_df,level=="Advanced")

advance1 <- advance[order(advance$freq, decreasing = TRUE), ] 
top_10_uni_advance <- advance1[1:10,]

#plotting code for top 10 organization creating advance courses
p<-ggplot(data=top_10_uni_advance, aes(x=organization, y=freq))+
  geom_bar(stat="identity",color="black",fill="steelblue")+labs(x="Organizations",y="Number Of Courses",title="Top 10 Organizations Creating Advance Level Courses on Coursera")
p + coord_flip()