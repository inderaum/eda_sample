#libraries
library(dplyr)
#setting local working directory
setwd("d:/dev/workspace/r/eda_sample")

#reading the raw data
playstore_raw <- read.csv(file = "data/googleplaystore.csv")
reviews_raw <- read.csv(file = "data/googleplaystore_user_reviews.csv")

#initial data structure
str(reviews_raw)


#Playstore data
str(playstore_raw)
summary(playstore_raw)
head(playstore_raw)

summary(playstore_raw$App)

nrow(playstore_raw[which(playstore_raw$App == "ROBLOX"),])

