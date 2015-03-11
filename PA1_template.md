# Reproducible Research: Peer Assessment 1

The data in this assignment can be downloaded from the course web site:

* Dataset: [Activity monitor data](https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip)
  
The variables included in this dataset are:

* steps: Number of steps taking in a 5-minute interval (missing values are coded as  NA )

* date: The date on which the measurement was taken in YYYY-MM-DD format

* interval: Identifier for the 5-minute interval in which measurement was taken

The dataset is stored in a comma-separated-value (CSV) file and there are a total of 17,568 observations in this dataset.

## Loading and preprocessing the data


```r
temp <- tempfile()
download.file("http://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip",temp)
unzip(temp)
data <- read.csv("activity.csv")
unlink(temp)
```

Let's examine the structure of the data

```r
str(data)
```

```
## 'data.frame':	17568 obs. of  3 variables:
##  $ steps   : int  NA NA NA NA NA NA NA NA NA NA ...
##  $ date    : Factor w/ 61 levels "2012-10-01","2012-10-02",..: 1 1 1 1 1 1 1 1 1 1 ...
##  $ interval: int  0 5 10 15 20 25 30 35 40 45 ...
```

The date column of the data has been interpreted as a factor instead of a date. 
Let's convert the date column from factor to date. Then examine the structure of "data" again.

```r
data[,2] <- as.POSIXct(data[,2])
str(data)
```

```
## 'data.frame':	17568 obs. of  3 variables:
##  $ steps   : int  NA NA NA NA NA NA NA NA NA NA ...
##  $ date    : POSIXct, format: "2012-10-01" "2012-10-01" ...
##  $ interval: int  0 5 10 15 20 25 30 35 40 45 ...
```
The structure of the "date" column is now correct

## What is mean total number of steps taken per day?

library(lubridate)
library(dplyr)
str(data)
data <- data.frame(data, year = year(data[,2]), month = month(data[,2]), day = day(data[,2]))
head(data)
tail(data)

## What is the average daily activity pattern?



## Imputing missing values



## Are there differences in activity patterns between weekdays and weekends?
