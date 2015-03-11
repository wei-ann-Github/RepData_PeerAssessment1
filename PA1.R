# Read the file
file <- "C:/Users/WeiAnn/OneDrive/cousera/IDA MOOC data science/Reproducible research/peer review 1/repdata_data_activity/activity.csv"
PA1 <- read.csv(file)

getwd()
setwd("C:/Users/WeiAnn/OneDrive/coursera/IDA MOOC data science/Reproducible research/peer review 1/repdata_data_activity")

str(PA1)
head(PA1)
tail(PA1)
summary(PA1)
sapply(PA1, length)

What is mean total number of steps taken per day?