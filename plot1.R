library(ggplot2)
#setting the directory where our dataset is stored
setwd("E://Notes//Sem 8//r progamming")

#reading the dataset
data1 <- read.csv("coursera_data.csv")

#changing the names of columns
colnames(data1) <- c('name','university','level','rating','url','description','skills')

#finding the university frequency 
university_data <- table(data1$university)

#sorting the data
uni <- sort(university_data,decreasing = TRUE)

#converting the table into dataframe to be able to plot
frame_uni <- as.data.frame(uni)
colnames(frame_uni)<-c("university","freq")

#taking top 10 of the data
top_10_uni <- frame_uni[1:10,]

#plotting code for top 10 organization creating courses
p<-ggplot(data=top_10_uni, aes(x=university, y=freq))+
geom_bar(stat="identity",color="black",fill="steelblue")+labs(x="Organizations",y="Number Of Courses",title="Top 10 Organizations Creating Courses on Coursera")
p + coord_flip()




