#######################################################
#Alf Alpo's Data

#Comments-
#rnorm will generate a sample of size 25 from a normal distribution with mean=475 and sd=10
#ifelse checks whether test.statistic is negative or positive.  If negative, it calculates p-value from left tail, otherwise it uses the right tail.


set.seed(231)  # To reproduce results
alpha = 0.05  # Significant level 
reject = 0  # Times of rejecting H_0

for (i in 1:20) {
	samp<-rnorm(25,mean=475,sd=10)
	# Use t.test to obtain p.value
	p_value = t.test(samp, mu=475, conf.level=1-alpha)$p.value
	
  # Manually calculate p value
	# test.statistic<-(mean(samp)-475)/(sd(samp)/sqrt(25))
	# p_value<-2*pt(abs(test.statistic),df=24,lower=F)
	
	cat("Day",i,":","P-value=",round(p_value,3),"\n")
	if (p_value <= alpha){reject = reject+1}  # Count the rejection
	}

(reject)

#######################################################
#Cruella de Vil's Data - 1 day

#Part 2
glucosamine<-c(464,470,467,478,474,480,472,485,480,470,472,479,477,480,478,482,
               488,489,480,475,483,488,478,490,492)
qqnorm(glucosamine)
qqline(glucosamine)
test.statistic<-(mean(glucosamine)-475)/(sd(glucosamine)/sqrt(25))
p_value<-2*pt(abs(test.statistic),df=24,lower=F)
p_value = t.test(glucosamine, mu=475, conf.level=1-alpha)$p.value

#######################################################
#Cruella de Vil's Data -  20 days


#Part 3
#Comments-
#rnorm will generate a sample of size 25 from a normal distribution with mean=477.5
#and sd=10

set.seed(51)
reject = 0  # Times of rejecting H_0

for (i in 1:20) {
	samp<-rnorm(25,mean=477.5,sd=10)
	p_value = t.test(samp, mu=475, conf.level=1-alpha)$p.value
	ci = t.test(samp, mu=475, conf.level=1-alpha)$conf.int
	
	# manually calculate lower and upper bound of CI
	# LCL<-mean(samp) - qt(0.025,df=24,lower=F)*(sd(samp)/sqrt(25))
	# UCL<-mean(samp) + qt(0.025,df=24,lower=F)*(sd(samp)/sqrt(25))
  cat("Day",i,":","P-value=",round(p_value,3),";","95% CI=(",round(ci,2),").\n")
  if (p_value <= alpha){reject = reject+1}  # Count the rejection
}

(reject)

