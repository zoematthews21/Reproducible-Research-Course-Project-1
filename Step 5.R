##Step 5
##The 5-minute interval that, on average, contains the maximum number of steps

```{r, echo = TRUE}
#This is assuming that the words on average means averaging steps by date and interval
activity$interval<-factor(activity$interval)
Q5<-aggregate(data=activity,steps~date+interval,FUN="mean")
Q5<-aggregate(data=Q5,steps~interval,FUN="max")
```