#1. Generate 100 random samples from a univariate normal distribution (default parameters)
#Compute mean, sd, variance, median, and standard quantiles. Report the quantities
set.seed(30)
normdist_100 = rnorm(100, mean = 0, sd = 1)
print(normdist_100[1])
mean_normdist_100 = mean(normdist_100)
sd_normdist_100 = sd(normdist_100)
var_normdist_100 = var(normdist_100)
median_normdist_100 = median(normdist_100)
#Standard quantiles ???

#2. Plot histogram (experiment with breaks parameter), include only one best plot.
dev.new()
hist(normdist_100, breaks=seq(-3.5,3.5,by=1),main="Histogram of 100 randomly generated normal distribution values")
dev.off()


#3.Test if the sample follows a normal distribution 
#Comment on if the data follows a normal distribution (why or why not)?
dev.new()
qqnorm(normdist_100)
qqline(normdist_100)
dev.off()

#4. Generate data (100 samples) for 2 random variable (height and weight)
#Height in inches in increments of 0.5. Weight in lbs in increments of 0.5
height_100 = sample(seq(from =60 , to = 78, by = 0.5), size = 100, replace = TRUE)
weight_100 = sample(seq(from = 100, to = 300, by = 0.5), size = 100, replace = TRUE)
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
