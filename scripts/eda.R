#libraries
library(dplyr)
#setting local working directory
setwd("d:/dev/workspace/r/eda_sample")

#reading the raw data
playstore_raw <- read.csv(file = "data/googleplaystore.csv")
reviews_raw <- read.csv(file = "data/googleplaystore_user_reviews.csv")



