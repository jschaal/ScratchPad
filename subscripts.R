plot(iris$Petal.Length, iris$Petal.Width, type="n")
points(iris$Petal.Length, iris$Petal.Width, pch=19, col=iris$Species)

plot(iris$Petal.Length, iris$Petal.Width, type="n")
points(iris$Petal.Length[iris$Species=="setosa"], 
       iris$Petal.Width[iris$Species=="setosa"], pch=19, 
       col=iris$Species[iris$Species=="setosa"])

plot(iris$Petal.Length, iris$Petal.Width, type="n")
points(iris$Petal.Length[criteria], iris$Petal.Width[criteria], pch=19, col=iris$Species[criteria])

criteria <- iris$Species %in% c("setosa","elephant","dingo")
plot(iris$Petal.Length, iris$Petal.Width, type="n")
points(iris$Petal.Length[criteria], iris$Petal.Width[criteria], pch=19, col=iris$Species[criteria])

criteria <- c(2, 5:10, 12, 18:32)

rowcriteria <- iris$Species=="setosa"
columncriteria <- 1:2
summary(iris[rowcriteria,columncriteria])

rowcriteria <- iris$Species=="setosa"
columncriteria <- c("Petal.Length","Petal.Width","Species")
summary(iris[rowcriteria,columncriteria])

rowcriteria <- iris$Species=="setosa"
columncriteria <- names(iris) %in% c("Petal.Length","Petal.Width")
mysubset <- iris[rowcriteria,!(columncriteria)]
summary(mysubset)

columncriteria <- c(-1,-3:-5)


attach(mtcars)
par(mfrow=c(2,2))
plot(wt,mpg, main="Scatterplot of wt vs. mpg")
plot(wt,disp, main="Scatterplot of wt vs disp")
hist(wt, main="Histogram of wt")
boxplot(wt, main="Boxplot of wt")

par(mfrow=c(3,1)) 
hist(wt)
hist(mpg)
hist(disp)

# One figure in row 1 and two figures in row 2
attach(mtcars)
layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE))
hist(wt)
hist(mpg)
hist(disp)

# Add boxplots to a scatterplot
par(fig=c(0,0.8,0,0.8), new=TRUE)
plot(mtcars$wt, mtcars$mpg, xlab="Car Weight",
     ylab="Miles Per Gallon")
par(fig=c(0,0.8,0.55,1), new=TRUE)
boxplot(mtcars$wt, horizontal=TRUE, axes=FALSE)
par(fig=c(0.65,1,0,0.8),new=TRUE)
boxplot(mtcars$mpg, axes=FALSE)
mtext("Enhanced Scatterplot", side=3, outer=TRUE, line=-3) 