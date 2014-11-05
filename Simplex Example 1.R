# Initial R Tutorial
# 
# Author: schaalj
###############################################################################


varnames <- c("x","y","z","u","v","w","P","C")
r1 <- c(2,1,1,1,0,0,0,180)
r2 <- c(1,3,2,0,1,0,0,300)
r3 <- c(2,1,2,0,0,1,0,240)
obj <-  c(-6,-5,-4,0,0,0,1,0)
names(r1) <- varnames
names(r2) <- varnames
names(r3) <- varnames
names(obj) <- varnames
r1
r2
r3
obj
allvals <- c(2,1,2,-6,1,3,1,-5,1,2,2,-4,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,180,300,240,0)
simplex <- matrix(allvals,4,8)
colnames(simplex) <- varnames 
print("Initial")
print(simplex)
simplex [1,] <- .5 * simplex [1,]
simplex [2,] <- simplex [2,] - simplex[1,]
simplex [3,] <- simplex [3,] - 2*simplex[1,]
simplex [4,] <- simplex [4,] + 6*simplex[1,]
print("After Pivot 1")
print(simplex)
simplex [2,] <- simplex [2,] /2.5
simplex [1,] <- simplex [1,] -0.5*simplex[2,]
simplex [4,] <- simplex [4,] +2*simplex[2,]
print("After Pivot 2")
print(simplex)