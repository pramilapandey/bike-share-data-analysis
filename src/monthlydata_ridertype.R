
# Importing csv file into R using read_csv and storing it as ridecount_month
ridecount_month <-read_csv("/Users/user2/Desktop/projects/coursera data analytics/capstone project/queries/exports/ridecount_month.csv")

#Viewing the file
View(ridecount_month)

# Creating grouped bar graph using geom and ggplot functions  
ggplot(ridecount_month, aes(x = fct_inorder(start_month), y = format(member_count, scientific = FALSE),fill=member_type))+
  geom_bar(stat = 'identity', position = position_dodge())+
  labs(title = "Categorized rides by month")+
  xlab("Months")+
  ylab("No. of rides")+
  labs(fill = "Rider Type")
  

