# Read data
data <- read.csv("http://users.stat.umn.edu/~parky/SurveyFall2019.csv", header = T)

# Function attach(), so you can directly use the variable contain in data,
# Instead of using $ to choose specific variable.
attach(data)

data$gender
gender

# (a) Dimension
dim(data)

str(data)

# Overview
summary(data)
hist(entertainment)

# Select obs. has entertaiment value less than 120
hist(entertainment[entertainment <= 120])

# General way to select obs. satisfy a conditoin
Variable.name[CONDITION]

# (b)
mean(ideal.weight)
# Using variable[condition] to select obs. satisfy condition.
mean(ideal.weight[exercise>1])

mean(ideal.weight[gender=='Female'])
mean(ideal.weight[gender=='Male'])

# (c) length(), which()
length(which(gender=="Female"))
length(which(gender=="Female" & exercise>1))
# even more comditions
length(which(gender=="Female" & exercise>1 & ideal.weight <=130))

# (d) 
table(zzz.week)
# question 1.
length(which(zzz.week <=6))/dim(data)[1]
# (e) Cross(Joint) table
(joint_freq <- table(from.US, fav.season))
# (f) Marginal table
margin.table(joint_freq, 1)
margin.table(joint_freq, 2)

