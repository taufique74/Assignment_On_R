## (a)
attach(mtcars)
carData.df <- data.frame(mpg = mtcars$mpg,
                         cyl = mtcars$cyl,
                         hp = mtcars$hp,
                         wt = mtcars$wt,
                         gear = mtcars$gear)

## (b)
set.seed(9)
offset <- rnorm(length(mpg), mean=99, sd=2)
carData.df$mpg <- carData.df$mpg + offset


## (c)
carType <- paste("Car", 1:length(mpg))
carData.df <- cbind(carData.df, carType)


## (d)
subset(carData.df, gear == 5)

## (e)
# tapply() applies a function or operation on a subset of the given vector or list
# lapply() applies a function on every element of a vector or list

## (f)
tapply(carData.df$mpg, carData.df$gear, mean)
#output:
# gear : average gear
# 3 : 115.4178
# 4 : 123.3419
# 5 : 120.1355

## (g)
tapply(carData.df$wt, carData.df$cyl, mean)
# output:
# wt : average cyl
# 4 : 2.285727
# 6 : 3.117143
# 8 : 3.999214

## (h)
tapply(carData.df$hp, carData.df$cyl, max)
# output:
# hp : max cyl
# 4 : 113
# 6 : 175
# 8 : 335

## (i)
barplot(carData.df$mpg, names.arg = carData.df$carType)

## (j)
hist(carData.df$wt, 3)
