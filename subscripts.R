plot(iris$Petal.Length, iris$Petal.Width, type="n")
points(iris$Petal.Length, iris$Petal.Width, pch=19, col=iris$Species)

plot(iris$Petal.Length, iris$Petal.Width, type="n")
points(iris$Petal.Length[iris$Species=="setosa"], 
       iris$Petal.Width[iris$Species=="setosa"], pch=19, 
       col=iris$Species[iris$Species=="setosa"])
