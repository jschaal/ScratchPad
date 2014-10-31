x<- 0:6
y <- ifelse(x<=3,3*x+2,2*x-0.5*x^2)
plot(y,x)
curve(ifelse(x<=3,3*x+2,2*x-0.5*x^2),from = 0, to =6)

data(VADeaths)
barplot(VADeaths, beside=TRUE, legend=TRUE, ylim=c(0, 90),
        ylab="Deaths per 1000",
        main="Death rates in Virginia")
dotchart(VADeaths, xlim=c(0, 75),
         xlab="Deaths per 1000",
         main="Death rates in Virginia")

groupsizes <- c(18, 30, 32, 10, 10)
labels <- c("A", "B", "C", "D", "F")
pie(groupsizes, labels, col=c("grey40", "white", "grey", "black", "grey90"))

x <- rnorm(10000)
hist(x)
hist(x,breaks = "Scott")
hist(x,breaks = "Sturges") #default intervals
hist(x,breaks = "Freedman-Diaconis")

data(iris)
boxplot(Sepal.Length ~ Species, data=iris, 
        ylab="Sepal length (cm)", main="Iris measurements", boxwex=0.5)

x <- rnorm(100)
y <- rpois(100,30)
plot(y,x)
plot(x,y)
plot(x,y,type="l")
plot(sort(x),sort(y),type="l")

data(stackloss)
pairs(stackloss)  # creates scatterplots for all pairs of values in a vector

# generic chart with margin text
par(mar=c(5, 5, 5, 5) + 0.1)
plot(c(1, 9), c(0, 50), type="n", xlab="", ylab="")
text(6, 40, "Plot region")
points(6, 20)
text(6, 20, "(6, 20)", adj=c(0.5, 2))
mtext(paste("Margin", 1:4), side=1:4, line=3)
mtext(paste("Line", 0:4), side=1, line=0:4, at=3, cex=0.6)
mtext(paste("Line", 0:4), side=2, line=0:4, at=15, cex=0.6)
mtext(paste("Line", 0:4), side=3, line=0:4, at=3, cex=0.6)
mtext(paste("Line", 0:4), side=4, line=0:4, at=15, cex=0.6)

indexfinger <- data.frame(c("M","F","M","F","F","M","F","M"),
                          c(7.9,6.5,8.4,5.5,6.5,8.0,7.0,7.5),
                          c(2.3,1.7,2.6,1.7,1.9,2.1,1.8,1.9))
colnames(indexfinger) <- c("sex","length","width")
plot(width~length,data=indexfinger)
with(indexfinger[c(3, 7),], points(length, width, pch=16))
abline(lm(width ~ length, data=indexfinger, subset=sex=="M"), lty=1)
abline(lm(width ~ length, data=indexfinger, subset=sex=="F"), lty=2)
legend("topleft", legend=c("Male", "Female"), lty=1:2)

data(lslands)
hist(log(islands,10),breaks="Scott",axes = FALSE,xlab="area",main="Histogram of Island Areas")
axis(1,at=1:5,labels=10^(1:5))
axis(2)
box()
mtext("Base-10 Log Scale",side=1,line=2)
