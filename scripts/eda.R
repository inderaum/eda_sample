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
dim_desc(train_raw)
str(train_raw)
summary(train)
head(train)


##Visualisation
hist_survived <- ggplot(data = train, 
                        aes(train$Survived))
hist_survived+
  geom_bar(color = "blue", fill = "lightblue")+
  labs(title = "Total numbers of survivors VS dead", subtitle = paste("Survivors: ", count()))

