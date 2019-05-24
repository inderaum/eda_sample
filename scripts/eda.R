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
summary(train_raw)
head(train_raw)


##Visualisation
hist_survived <- ggplot(data = train_raw, 
                        aes(train_raw$Survived))
hist_survived+
  geom_bar(color = "blue", fill = "lightblue")+
  labs(title = "Total numbers of survivors VS dead", x = "Survived", y = "Count")

