# import the csv file
tempData <- read.csv("temperature.csv")

## (a)
index <- 9
firstCityTemp <- tempData[,index]
secondCityTemp <- tempData[,index+1]
thirdCityTemp <- tempData[,13]    # temperature of city12

## (b)
plot(firstCityTemp, type = "o", col = "green", xlab = "Month", ylab = "Temparature")
lines(secondCityTemp, type = "o", col = "red")
lines(thirdCityTemp, type = "o", col = "blue")
legend(1,95, legend = c("firstCityTemp", "secondCityTemp", "thirdCityTemp", col = c("green","red","blue")))
# Conclusion: first city and third city has very close temperature pattern

##(c)
cov(firstCityTemp, secondCityTemp) #output: -61.4058
cov(secondCityTemp, thirdCityTemp) #output: -71.89855
cov(thirdCityTemp, firstCityTemp)  #output: 187.8225

## (d)
firstCityTemp.ts = ts(firstCityTemp, 12)
secondCityTemp.ts = ts(firstCityTemp, 12)

# prediction for first city
model <- HoltWinters(firstCityTemp.ts)
predict(model, 12)[5]   #output: 37.24624

# prediction for second city
model <- HoltWinters(secondCityTemp.ts) # for second city
predict(model, 12)[5]   #output: -2.042351


## (e)
firstCountry = list(nameOfPlace = "Switzerland",
                    attractions = c("Grindelwald","Mount Pilatus", "Matterhorn", "Jungfraujoch", "Rhine Falls"),
                    languages = c("French","Italian","German","Romanish"),
                    seasons = c("Spring","Summer","Autumn","Winter"),
                    tempData = firstCityTemp)
secondCountry = list(nameOfPlace = "Spain",
                     attractions = c("Ibiza","Alhabra","El Escorial","Cuenca"),
                     languages = c("Spanish","Latin","Gothic","Valencian"),
                     Seasons = c("Spring","Summer","Autumn","Winter"),
                     tempData = secondCityTemp)

