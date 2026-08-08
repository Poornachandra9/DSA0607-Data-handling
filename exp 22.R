# Create Dataset
data <- data.frame(
  User_ID = c(1,2,3,4,5),
  Books_Borrowed = c(2,5,3,6,1),
  Days_Kept = c(10,25,14,30,7),
  Fine_Amount = c(0,15,0,20,0)
)

# 9. Histogram of Books Borrowed
hist(data$Books_Borrowed,
     col="skyblue",
     main="Books Borrowed Distribution",
     xlab="Books Borrowed",
     ylab="Frequency")

# 10. Pie Chart for Users With and Without Fines
fine_status <- ifelse(data$Fine_Amount > 0,
                      "With Fine",
                      "Without Fine")

pie(table(fine_status),
    col=c("orange","lightgreen"),
    main="Users With and Without Fines")

# 11. Bar Chart of Fine Amounts by User
barplot(data$Fine_Amount,
        names.arg=data$User_ID,
        col="tomato",
        main="Fine Amount by User",
        xlab="User ID",
        ylab="Fine Amount")

# 12. Scatter Plot of Days Kept vs Fine Amount
plot(data$Days_Kept, data$Fine_Amount,
     col="blue",
     pch=19,
     main="Days Kept vs Fine Amount",
     xlab="Days Kept",
     ylab="Fine Amount")