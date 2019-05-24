#libraries
library(dplyr)
library(ggplot2)
#setting local working directory
setwd("d:/dev/workspace/r/eda_sample")
#Setting seed for reproducability
set.seed(42)

#reading the raw data
train_raw <- read.csv(file = "data/train.csv", na.strings = c("NA",""))
test_raw <- read.csv(file = "data/test.csv", na.strings = c("NA",""))

#EDA
train <- train_raw
test <- test_raw

str(train)
summary(train)
##Survived
summary(train$Survived)
train$Survived <- as.factor(train$Survived)

##pclass
summary(train$Pclass)
train$Pclass <- as.factor(train$Pclass)

##sex
summary(train$Sex)
train$Sex <- ifelse(train$Sex == "female",
                    yes = 1,
                    no = 0)
train$Sex <- as.factor(train$Sex)
summary(train$Sex)

##Visualisation
hist_survived <- ggplot(data = train, 
                        aes(train$Survived))
hist_survived+
  geom_bar()

