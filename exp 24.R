# Create Dataset
data <- data.frame(
  Booking_ID = c(1,2,3,4,5),
  Stay_Nights = c(2,5,3,7,4),
  Guests = c(2,4,1,3,2),
  Room_Type = c("Standard","Deluxe","Standard","Suite","Deluxe")
)

# 1. Histogram of Stay Nights
hist(data$Stay_Nights,
     col="skyblue",
     main="Stay Nights Distribution",
     xlab="Stay Nights",
     ylab="Frequency")

# 2. Pie Chart of Room Types
room <- table(data$Room_Type)

pie(room,
    col=c("orange","lightgreen","pink"),
    main="Room Type Distribution")

# 3. Bar Chart of Guests per Booking
barplot(data$Guests,
        names.arg=data$Booking_ID,
        col="orange",
        main="Guests per Booking",
        xlab="Booking ID",
        ylab="Number of Guests")

# 4. Scatter Plot of Guests vs Stay Nights
plot(data$Guests, data$Stay_Nights,
     col="blue",
     pch=19,
     main="Guests vs Stay Nights",
     xlab="Number of Guests",
     ylab="Stay Nights")