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