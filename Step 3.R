##Step 3
##Mean and median number of steps taken each day

```{r, echo = TRUE}
library(dplyr)
Q3<-data.frame(round(tapply(activity$steps,activity$date,mean,na.rm=TRUE),2))
Q3$date<-rownames(Q3)
rownames(Q3)<-NULL
names(Q3)[[1]]<-"Mean Steps"
temp<-activity%>%select(date,steps) %>% group_by(date) %>% summarise(median(steps))
names(temp)[[2]]<-"Median Steps"
Q3$median<-temp$`Median Steps`
Q3<-Q3 %>% select(date,`Mean Steps`,median)
```