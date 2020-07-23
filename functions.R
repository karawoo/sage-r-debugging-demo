f <- function(x) g(x)
g <- function(x) h(x)
h <- function(x) { 
  x <- x + 1
  stop("An error occurred!", call. = FALSE) 
}
