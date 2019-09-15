# LAb 1 
cereal<-read.csv("http://sites.williams.edu/bklingen/files/2015/05/cereal.csv")
View(cereal)
head(cereal)
str(cereal)
table(cereal$Type)
boxplot(cereal$Sugar, main="Sugar amount in cereal", 
        ylab="Amount of Sugar in grams")
summary(cereal$Sugar)
hist(cereal$Sugar, main="Sugar Content", xlab="in grams")
hist(cereal$Sugar, breaks=10, main="Sugar Content", xlab="in grams")
boxplot(cereal$Sugar~cereal$Type, main="Sugar amount in cereal", 
        xlab="Type of Cereal", ylab="Amount of Sugar in grams")
