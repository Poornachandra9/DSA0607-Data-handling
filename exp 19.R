# Create Dataset
data <- data.frame(
  User_ID = c("U01","U02","U03","U04","U05","U06"),
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Age = c(20,22,19,21,23,20),
  Screen_Time = c(4.5,6.0,3.2,7.1,2.8,5.4),
  App_Usage_Count = c(18,25,12,30,10,22),
  Data_Used = c(2.4,3.8,1.6,4.5,1.2,3.1),
  Satisfaction = c(3,5,3,5,2,4)
)

# 1. Histogram and Density Plot
hist(data$Screen_Time,
     col="skyblue",
     main="Screen Time Distribution",
     xlab="Screen Time (Hours)",
     ylab="Frequency")

lines(density(data$Screen_Time),
      col="red",
      lwd=2)

# 2. Scatter Plot and Correlation
plot(data$Screen_Time, data$Data_Used,
     col="blue",
     pch=19,
     main="Screen Time vs Data Used",
     xlab="Screen Time (Hours)",
     ylab="Data Used (GB)")

abline(lm(Data_Used ~ Screen_Time, data=data),
       col="red",
       lwd=2)

cor(data$Screen_Time, data$Data_Used)

# 3. Average Satisfaction by Gender
avg <- aggregate(Satisfaction ~ Gender,
                 data=data,
                 FUN=mean)

print(avg)

barplot(avg$Satisfaction,
        names.arg=avg$Gender,
        col=c("pink","skyblue"),
        main="Average Satisfaction by Gender",
        xlab="Gender",
        ylab="Average Satisfaction",
        ylim=c(0,5))

text(seq_along(avg$Satisfaction),
     avg$Satisfaction,
     labels=round(avg$Satisfaction,2),
     pos=3)