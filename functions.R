make.power <- function(n) {
    pow <- function(x) {
        x^n
    }
    pow
}

y <- 10

f <- function(x) {
    y <-2
    y^2 + g(x)
}

g <- function(x) {
    x*y
}

h <- function(x) {
    out <- NULL
    for (v in x)
    {
        if (v<=3) {
            out<- c(out,3*v+2)
        }
        else
        {
            out<- c(out,2*v-0.5*v^2)
        }
    }
    return(out)
}

# 1. Use a merge sort to sort a vector
mergesort <- function (x,decreasing=FALSE) {
    # Check for a vector that doesn’t need sorting
    len <-length(x)
    if (len < 2) result <- x
    else {
        # 2: sort x into result
        # 2.1: split x in half
        l <- as.integer(len/2)
        y <- x[1:l]
        z <- x[(l+ 1):len]
        # 2.2: sort y and z
        y <- mergesort(y,decreasing)
        z <- mergesort(z,decreasing)
        # 2.3: merge y and z into a sorted result
        result <- c()
        # 2.3.1: while (some are left in both piles)
        while (min(length(y), length(z)) > 0) {
            # 2.3.2: put the smallest first element on the end
            # 2.3.3: remove it from y or z
            if (decreasing) {
                if (y[1] > z[1]) {
                    result <- c(result, y[1])
                    y <- y[-1]
                } else {
                    result <- c(result, z[1])
                    z <- z[-1]
                }
            }
            else {
                if (y[1] < z[1]) {
                    result <- c(result, y[1])
                    y <- y[-1]
                } else {
                    result <- c(result, z[1])
                    z <- z[-1]
                }
            }
        }
        # 2.3.4: put the leftovers onto the end of result
        if (length(y) > 0)
            result <- c(result, y)
        else
            result <- c(result, z)
    }
    return(result)
}