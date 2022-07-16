##Step 1
##Code for reading in the dataset and/or processing the data
init.activity <- read.csv(unz("repdata_data_activity.zip", "activity.csv"), 
                          colClasses=c("numeric", "Date", "numeric"))
summary(init.activity)

activity <- subset(init.activity, !is.na(init.activity$steps))
summary(activity)

Exploring the basics of this data
```{r}
dim(activity)
names(activity)
head(activity)
str(activity)
#total number of missing data
sum(is.na(activity$steps))/dim(activity)[[1]]
#transforming the date column into date format using lubridate
library(lubridate)
activity$date<-ymd(activity$date)
length(unique(activity$date))