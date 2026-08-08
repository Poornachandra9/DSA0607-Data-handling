# Create Dataset
data <- data.frame(
  Patient_ID = c(1, 2, 3, 4, 5),
  Age = c(25, 40, 35, 50, 29),
  Waiting_Time = c(2, 5, 1, 7, 3),
  Appointment_Status = c("Attended", "Missed", "Attended",
                         "Missed", "Attended")
)

# 1. Histogram showing Patient Ages
hist(data$Age,
     col = "skyblue",
     main = "Patient Age Distribution",
     xlab = "Age",
     ylab = "Frequency")

# 2. Pie Chart for Appointment Status
status <- table(data$Appointment_Status)

pie(status,
    col = c("lightgreen", "pink"),
    main = "Appointment Status Distribution")

# 3. Bar Chart of Waiting Times by Patient
barplot(data$Waiting_Time,
        names.arg = data$Patient_ID,
        col = "orange",
        main = "Waiting Time by Patient",
        xlab = "Patient ID",
        ylab = "Waiting Time (Days)")

# 4. Scatter Plot of Age vs Waiting Time
plot(data$Age, data$Waiting_Time,
     col = "blue",
     pch = 19,
     main = "Age vs Waiting Time",
     xlab = "Age",
     ylab = "Waiting Time (Days)")