# Install required packages
install.packages("tidyverse")

#loading ggplot2
library(ggplot2)

# Importing csv file into R using read_csv and the file directory
ridertype_count <-read_csv("/Users/user2/Desktop/projects/coursera data analytics/capstone project/queries/exports/membertpe_count.csv")

# Using ggplot and geom functions to create a pie chart
ggplot(ridertype_count, aes(x = "", y = total_number, fill = member_type))+ 
  geom_col()+
  coord_polar(theta = "y")+
  geom_text(aes(label = paste(round(total_number/ sum(total_number) * 100, 1), "%")),
            position = position_stack(vjust = 0.5))+
  theme_void()+
  labs(title = "Overall rider count")+
  labs(fill = "Rider type")+
  theme(plot.title = element_text(vjust = -3))
  