# last two digit of phone number is 99
# so n = 100 + 99 + (10-9) = 200
n <- 200

a <- seq(5, n, 5)
b <- seq(87, (88-length(a)), -1)

d <- a * b

## (a) What are the 19th, 20th, and 21st elements of d?
d[c(19, 20, 21)] #output: 6555 6800 7035

## (b) What are all of the elements of d which are less than 2000?
d[d < 2000] #output: 435  860 1275 1680

## (c) How many elements of d are greater than 6000?
length(d[d > 6000]) #output: 24

## (d) Using R functions compute the following statistics of d:
# sum, median, standard deviation
sum(d) #output: 250
median(d) #output:6917.5
sd(d) #output: 2812.641

## e
w <- rev(a)
r <- rev(b)
M <- matrix(r[c(1:6)], nrow=2, byrow = TRUE) %*% matrix(w[c(1:12)], nrow = 3)

