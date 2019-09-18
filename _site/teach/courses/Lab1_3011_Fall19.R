# Lab 3
# Read data from website
cereal<-read.csv("http://sites.williams.edu/bklingen/files/2015/05/cereal.csv")
# View the data
View(cereal)
# (a) View first several raws of data
head(cereal)
# Display the structure of data
str(cereal)
# (b) Build a contingency table of the counts 
# at each combination of factor levels
table(cereal$Type)
# (c) Creat a boxplot with customized y label and title
boxplot(cereal$Sugar, main="Sugar amount in cereal", 
        ylab="Amount of Sugar in grams")
# Get summary statistics
summary(cereal$Sugar)
# (d) Histogram of sugar
hist(cereal$Sugar, main="Sugar Contend", xlab="in grams")
# (e) Histogram of sugar, with 10 breaks
hist(cereal$Sugar, breaks=10, main="Sugar Content", xlab="in grams")
# (f) side-by-side boxplot, spliting sugar accroding to type.
boxplot(cereal$Sugar~cereal$Type, main="Sugar amount in cereal", 
        xlab="Type of Cereal", ylab="Amount of Sugar in grams")
