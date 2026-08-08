# Create Dataset
data <- data.frame(
  User_ID = c(1,2,3,4,5),
  Steps = c(7000,10000,8500,12000,6500),
  Calories_Burned = c(250,400,320,500,220),
  Active_Minutes = c(40,60,50,75,35)
)

# 21. Histogram of Daily Steps
hist(data$Steps,
     col="skyblue",
     main="Daily Steps Distribution",
     xlab="Steps",
     ylab="Frequency")

# 22. Pie Chart of Activity Level Categories
activity <- ifelse(data$Active_Minutes < 45,
                   "Low",
                   ifelse(data$Active_Minutes <= 60,
                          "Medium",
                          "High"))

pie(table(activity),
    col=c("pink","orange","lightgreen"),
    main="Activity Level Distribution")

# 23. Bar Chart of Calories Burned by User
barplot(data$Calories_Burned,
        names.arg=data$User_ID,
        col="orange",
        main="Calories Burned by User",
        xlab="User ID",
        ylab="Calories Burned")

# 24. Scatter Plot of Steps vs Calories Burned
plot(data$Steps, data$Calories_Burned,
     col="blue",
     pch=19,
     main="Steps vs Calories Burned",
     xlab="Daily Steps",
     ylab="Calories Burned")