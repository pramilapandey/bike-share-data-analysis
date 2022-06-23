# Importing the csv file into R
hour_day <-read_csv("/Users/user2/Desktop/projects/coursera data analytics/capstone project/queries/exports/hour_day.csv")

# Viewing the file
View(hour_day)

#Loading ggplot2 from "tideyverse" package
library(ggplot2)

# Using ggplot and geom functions to create a area chart)
ggplot(hour_day, aes(x = hour_day, y =member_count, fill = member_type ))+
  geom_area()+
  scale_y_continuous(labels = scales::comma)+
  scale_x_discrete(limits = 1:23)+
  xlab("Hour of day in 24 hours")+
  ylab("No. of rides")+
  labs(title = "Categorized rides by hour of the day")+
  labs(fill = "Rider type")
 
