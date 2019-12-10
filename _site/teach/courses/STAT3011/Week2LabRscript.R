#September 10 / September 12, 2019

####################
## Review 
## basic calculation
####################s


# Run each line by clicking "Run" 
# or [Ctrl]+[Enter] in window  
# or [Ctrl]+[Command] in Mac
# 
1+2  #addition
3-4  #subtraction
5*6  #multiplication
(5)(6) # doesn't work
7/8  #division

2^3  #2 to the power 3
sqrt(2)  #the squared root of 2

(446.9-534.2)+1.684*sqrt(42^2/44+45.5^2/44) 
.354+1.645*sqrt(.354*(1-.354)/1374) 

a <- .354  #can use = or <<- instead of <-
a+1.645*sqrt(a*(1-a)/1374)
c = 2.3

b <- c(5,6,7,8,9)  ## create vector
e = 1:6   # create a sequence

matrix()

min(b)
max(b)
mean(b)





####################
## Import data
##1. Import Dataset -> From CSV 
##2. read.csv for csv file
##3. read.table for text file
# 
# https://sites.google.com/site/wuxxx725/home
# Download :
# Minneapolis.csv
# 100degrees.txt
####################

# Import .csv file from local computer 

Minneapolis2 <- read.csv(file="~/Downloads/Minneapolis.csv", header=TRUE)
Minneapolis3 <- read.csv(file.choose(), header=TRUE)

# to check your working directory 
getwd()

# set your own working directory 
# relative path
setwd("~/Downloads")
# you can import .csv file by its name from your working directory 
Minneapolis4<-read.csv("~/Downloads/Minneapolis.csv", header = FALSE)


#we can use url address :
Minneapolis5 <-read.csv("http://users.stat.umn.edu/~parky/Minneapolis.csv")


dim(Minneapolis3)
head(Minneapolis3)
tail(Minneapolis3)
names(Minneapolis3) #variable names


#Import .txt file from local computer 
Degree2 <- read.table(file="~/Downloads/100degrees.txt",header=T)
Degree3 <- read.table(file.choose(),header=T)

Degree4<- read.table(file="http://users.stat.umn.edu/~parky/100degrees.txt", header=T)

dim(Degree2)
head(Degree2)
tail(Degree2)
names(Degree2) #variable names


####################
## Explore Data
####################

#numerical summaries - min, max, mean
m.year = Minneapolis2$YEAR  
# $: call dataset's column i.e., refer to variable 'YEAR' in Minneapolis1 dataset
mean(Minneapolis2$YEAR) 
mean(Minneapolis2[['YEAR']]) 
mean(Minneapolis2[[1]]) 
# mean(Minneapolis2[[3]]) 
mean(Minneapolis2[,1])

min(Minneapolis2$YEAR)
max(Minneapolis2$YEAR)

attach(Minneapolis2)  #attaching a dataset
#So it is possible to refer to the variables in the dataset by their names alone.
YEAR
mean(YEAR)
min(YEAR)
max(YEAR)
detach(Minneapolis2). #detaching a datase

#graphical summaries - histogram
hist(Minneapolis2$TMAX)
hist(Minneapolis2$TMAX, breaks=7) #breaks: the number of bins
hist(Minneapolis2$TMAX, breaks=7, xlab="TMAX", ylab="Frequency", main="Histogram of TMAX")
#xlab: labeling for x axis
#yalb: labeling for y axis
#main: title for the plot





####################
## Summary
#1. read.table(), read.csv(), import dataset
#2. attach(), detach()
#3. $ 
#4. mean(), min(), max()
#5. hist( ,xlab="",ylab="",main="")
####################


