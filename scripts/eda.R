#libraries
library(dplyr)
#setting local working directory
setwd("d:/dev/workspace/r/eda_sample")

#reading the raw data
train_raw <- read.csv(file = "data/train.csv")
test_raw <- read.csv(file = "data/test.csv")

#initial data structure
str(test_raw)


#Playstore data
str(train_raw)
summary(train_raw)
head(train_raw)

summary(train_raw$App)

nrow(train_raw[which(train_raw$App == "ROBLOX"),])

