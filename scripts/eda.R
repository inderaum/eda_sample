#libraries
library(dplyr)
#setting local working directory
setwd("d:/dev/workspace/r/eda_sample")
#Setting seed for reproducability
set.seed(42)

#reading the raw data
train_raw <- read.csv(file = "data/train.csv")
test_raw <- read.csv(file = "data/test.csv")

#initial data structure
str(train_raw)


#Train data
str(train_raw)
summary(train_raw)
head(train_raw)
summary(train_raw$Sex)

##Data preparation
train <- train_raw

###Sex
summary(train_raw$Sex)
summary(train$Sex)
train$Sex <- ifelse(train$Sex == "female",
                    yes = 1,
                    no = 0)
train$Sex <- as.factor(train$Sex)
summary(train$Sex)
