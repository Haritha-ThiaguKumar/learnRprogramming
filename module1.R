install.packages(ʺrioʺ)
install.packages(ʺmomentsʺ)
library(rio)
pricesheet=import(ʺ6304 Assignment 1 Data.xlsxʺ,sheet=ʺSheet1ʺ)
colnames(pricesheet)=tolower(make.names(colnames(pricesheet)))
attach(pricesheet)

#Analysis1:Structure of data object
str(pricesheet)

#Analysis 2:
#Mean, Median, Standard Deviation, Skewness, and Kurtosis of the price variable.
sd(pricesheet$price)
skewness(pricesheet$price)
kurtosis(pricesheet$price)
mean(pricesheet$price)
median(pricesheet$price)


#Analysis 3:Boxplot
boxplot(pricesheet$mileage,col="red",main="Total Mileage Boxplot")

#Analysis 4:quntile of a price
quantile(pricesheet$mileage,probs=seq(0,1,0.20))

#Analysis 5:Histogram of price variable:
hist(pricesheet$price)
hist(pricesheet$price,col="green",main="My price histogram in green")
