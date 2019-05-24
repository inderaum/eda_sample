#libraries
library(dplyr)
library(ggplot2)
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

#EDA
train <- train_raw

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

#Visualisation
##survived
hist_survived <- ggplot(data = train, 
                        aes(train$Survived))
hist_survived+
  geom_bar()

