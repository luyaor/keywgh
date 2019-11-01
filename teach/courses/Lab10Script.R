#######################################################
#Alf Alpo's Data

#Comments-
#rnorm will generate a sample of size 25 from a normal distribution with mean=475 and sd=10
#ifelse checks whether test.statistic is negative or positive.  If negative, it calculates p-value from left tail, otherwise it uses the right tail.


set.seed(231)

for (i in 1:20) {
	samp<-rnorm(25,mean=475,sd=10)
	test.statistic<-(mean(samp)-475)/(sd(samp)/sqrt(25))
	ifelse(test.statistic <0, p_value<-2*pt(test.statistic,df=24),  
	       p_value<-2*pt(test.statistic,df=24,lower=F))
	cat("Day",i,":","P-value=",round(p_value,3),"\n")
	}

#######################################################
#Cruella de Vil's Data - 1 day

#Part 2
glucosamine<-c(464,470,467,478,474,480,472,485,480,470,472,479,477,480,478,482,
               488,489,480,475,483,488,478,490,492)


#######################################################
#Cruella de Vil's Data -  20 days


#Part 3
#Comments-
#rnorm will generate a sample of size 25 from a normal distribution with mean=477.5
#and sd=10

set.seed(51)

for (i in 1:20) {
	samp<-rnorm(25,mean=477.5,sd=10)
	test.statistic<-(mean(samp)-475)/(sd(samp)/sqrt(25))
	ifelse(test.statistic <0, p_value<-2*pt(test.statistic,df=24),  
	       p_value<-2*pt(test.statistic,df=24,lower=F))
	LCL<-mean(samp) - qt(0.025,df=24,lower=F)*(sd(samp)/sqrt(25))
	UCL<-mean(samp) + qt(0.025,df=24,lower=F)*(sd(samp)/sqrt(25))
cat("Day",i,":","P-value=",round(p_value,3),";","95% CI=(",round(LCL,2),",",
    round(UCL,2),").\n")
}

