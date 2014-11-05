# Initial R Tutorial
# 
# Author: schaalj
###############################################################################


varnames <- c("c","o","s","P","X")
allvals <- c(1,2,-40,1,1,-30,0,1,0,0,0,1,240,320,0)
simplex <- matrix(allvals,3,5)
colnames(simplex) <- varnames 
print("Initial")
print(simplex)
print ("Pivot Column")
print (min(simplex[3,]))
print ("Pivot Row")
print (simplex[,5]/simplex[,1])
simplex[2,] <- simplex[2,]/2
simplex[1,] <- simplex[1,] - simplex[2,]
simplex[3,] <- simplex[3,] + 40*simplex[2,]
print(simplex)
print ("After Pivot 1")
simplex[1,] <- simplex[1,]*2
simplex[2,] <- simplex[2,] - 0.5*simplex[1,]
simplex[3,] <- simplex[3,] + 10*simplex[1,]
print(simplex)

