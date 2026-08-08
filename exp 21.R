# Create Dataset
data <- data.frame(
  Movie_ID = c(1,2,3,4,5),
  Genre = c("Action","Comedy","Drama","Action","Comedy"),
  Rating = c(4.5,3.8,4.2,4.7,3.5),
  Duration = c(120,90,140,130,95)
)

# 5. Histogram of Movie Ratings
hist(data$Rating,
     col="skyblue",
     main="Movie Ratings Distribution",
     xlab="Rating",
     ylab="Frequency")

# 6. Pie Chart showing Genre Distribution
genre <- table(data$Genre)

pie(genre,
    col=c("orange","lightgreen","pink"),
    main="Movie Genre Distribution")

# 7. Bar Chart of Average Ratings by Genre
avg_rating <- aggregate(Rating ~ Genre,
                        data=data,
                        FUN=mean)

barplot(avg_rating$Rating,
        names.arg=avg_rating$Genre,
        col=c("orange","skyblue","pink"),
        main="Average Rating by Genre",
        xlab="Genre",
        ylab="Average Rating",
        ylim=c(0,5))

# 8. Scatter Plot of Duration vs Rating
plot(data$Duration, data$Rating,
     col="blue",
     pch=19,
     main="Movie Duration vs Rating",
     xlab="Duration (Minutes)",
     ylab="Rating")