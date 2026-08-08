Sector <- c("Residential","Commercial","Industrial",
            "Residential","Commercial","Industrial")
Region <- c("North","South","West","East","North","South")
Month <- c("Jan","Jan","Feb","Feb","Mar","Mar")
Temperature <- c(15,24,20,18,28,30)
Units_Consumed <- c(320,540,880,350,610,920)
Cost <- c(2100,3600,5900,2300,4100,6200)
Renewable_Usage <- c(22,18,12,25,20,15)
Peak_Hours <- c(4,6,8,5,7,9)
data <- data.frame(Sector,Region,Month,Temperature,
                   Units_Consumed,Cost,
                   Renewable_Usage,Peak_Hours)
print(data)

hist(data$Units_Consumed,
     col="skyblue",
     main="Histogram of Units Consumed",
     xlab="Units Consumed")

plot(density(data$Units_Consumed),
     col="red",
     lwd=2,
     main="Density Plot of Units Consumed",
     xlab="Units Consumed")

avg <- aggregate(Renewable_Usage ~ Sector,
                 data=data,
                 mean)
print(avg)

barplot(avg$Renewable_Usage,
        names.arg=avg$Sector,
        col="lightgreen",
        main="Average Renewable Usage",
        xlab="Sector",
        ylab="Renewable Usage (%)")