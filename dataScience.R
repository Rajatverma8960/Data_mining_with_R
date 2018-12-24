#Category according to Cylenders 

no_of_cylender<-unique(mtcars$cyl)
mtcars[mtcars$cyl==6,]
mtcars[mtcars$cyl==4,]
mtcars[mtcars$cyl==8,]

#Category according to transmission 

no_of_transmission<-unique(mtcars$am)
mtcars[mtcars$am==1,]
mtcars[mtcars$am==0,]

# Regression Model

factor_responsible_for_milage<-mtcars[,c('mpg','cyl','wt','am')]
lm(mpg~cyl+am+wt, data = factor_responsible_for_milage)
print(factor_responsible_for_milage)

#standard deviation

sd(mtcars$mpg)

#variance 

var(mtcars$mpg)

#skewness
install.packages("e1071")
library(e1071)
skewness(mtcars$mpg)

#coVarience
horsePower<-mtcars$hp
cov(mtcars$mpg,horsePower)

#kertosis
kurtosis(mtcars$mpg)

#qualtile
x<-mtcars[mtcars$cyl==4,1]
quantile(x,c(.99))


iris2 <- iris
iris2$Species <- NULL 
(kmeans.result <- kmeans(iris2, 3))

table(iris$Species,kmeans.result$cluster)
plot(iris2[c("Sepal.Length", "Sepal.Width")], col = kmeans.result$cluster) 
#plot cluster centers >
points(kmeans.result$centers[,c("Sepal.Length", "Sepal.Width")], col=1:3, pch=18, cex=2)


kmeans.result$centers
