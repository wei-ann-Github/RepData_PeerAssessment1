C:/Users/luffy_84hotmail.com/SkyDrive/coursera/IDA MOOC data science/Reproducible research/peer review 1/repdata_data_activity.activity.csv

setwd("C:/Users/luffy_84hotmail.com/SkyDrive/coursera/IDA MOOC data science/Reproducible research/peer review 1/repdata_data_activity")
file <- "activity.csv"

data <- read.csv(file)

# convert "date" to POSIXct format 
# and remove all the rows where steps are NA
data[,2] <- as.POSIXct(data[,2])
data <- data[!is.na(data[,1]), ]
str(data)
summary(data)

## What is mean total number of steps taken per day?
library(lubridate)
library(dplyr)
by_MD <- group_by(data, date)
total_steps_per_day <- data.frame(summarize(by_MD, sum(steps)))
mean(total_steps_per_day[,2])

## What is the average daily activity pattern?



## Imputing missing values



## Are there differences in activity patterns between weekdays and weekends?
