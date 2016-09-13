#1. Generate 100 random samples from a univariate normal distribution (default parameters)
#Compute mean, sd, variance, median, and standard quantiles. Report the quantities
set.seed(30)
normdist_100 = rnorm(100, mean = 0, sd = 1)
cat("Mean is",mean(normdist_100))
cat("Standard deviation is",sd(normdist_100))
cat("Variance is",var(normdist_100))
cat("Median is",median(normdist_100))
#Standard quantiles 
cat("Quantiles are")
quantile(normdist_100)

#2. Plot histogram (experiment with breaks parameter), include only one best plot.
dev.new()
hist(normdist_100, breaks=seq(-3.5,3.5,by=1),main="Hist. of 100 randomly generated normal dist. values")
dev.off()


#3.Test if the sample follows a normal distribution 
#Comment on if the data follows a normal distribution (why or why not)?
dev.new()
qqnorm(normdist_100)
qqline(normdist_100)
dev.off()

#4. Generate data (100 samples) for 2 random variable (height and weight)
#Height in inches in increments of 0.5. Weight in lbs in increments of 0.5
height_100 = rnorm(100, mean = 70, sd = 4)
weight_100 = rnorm(100, mean = 200, sd = 25)
height_weight_100 = data.frame(height=height_100,weight=weight_100)
#Summary statistics of randomly generated height and weight
summary(height_weight_100)
#Barplot of randomly generated height
barplot(height_100, main="Height Distribution", ylab="Height in inches")
#Barplot of randomly generated weight
barplot(weight_100, main="Weight Distribution", ylab="Weight in lbs")
#Boxplot of height vs weight
boxplot(weight~height,data=height_weight_100,main="Box plot of height vs weight",xlab="Height in inches", ylab="Weight in lbs")
#Scatter plot of height vs weight
plot(height_100,weight_100,main="Scatter plot of height vs weight",xlab="Height in inches", ylab="Weight in lbs", pch=19)

#5. Normal distribution for height and weight separately
hist(height_100,main="Normal distribution of height",xlab="Height in inches",ylab="Frequency")
hist(weight_100,main="Normal distribution of weight",xlab="Weight in lbs",ylab="Frequency")

#6. Bivariate distribution
