# Create Dataset
data <- data.frame(
  Passenger_ID = c(1,2,3,4,5),
  Age = c(28,45,33,52,39),
  Flight_Hours = c(2,8,5,10,6),
  Satisfaction = c("High","Medium","High","Low","Medium")
)

# 13. Histogram of Passenger Ages
hist(data$Age,
     col="skyblue",
     main="Passenger Age Distribution",
     xlab="Age",
     ylab="Frequency")

# 14. Pie Chart of Satisfaction Levels
satisfaction <- table(data$Satisfaction)

pie(satisfaction,
    col=c("lightgreen","orange","pink"),
    main="Passenger Satisfaction Levels")

# 15. Bar Chart of Flight Hours by Passenger
barplot(data$Flight_Hours,
        names.arg=data$Passenger_ID,
        col="orange",
        main="Flight Hours by Passenger",
        xlab="Passenger ID",
        ylab="Flight Hours")

# 16. Scatter Plot of Age vs Flight Hours
plot(data$Age, data$Flight_Hours,
     col="blue",
     pch=19,
     main="Age vs Flight Hours",
     xlab="Age",
     ylab="Flight Hours")