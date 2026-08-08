# Geographic Data

geo <- data.frame(
  City = c("City A", "City B", "City C"),
  Population = c(500000,700000,600000),
  AvgTemperature = c(75,68,80),
  Elevation = c(1000,800,1200),
  Latitude = c(13.0827,17.3850,12.9716),
  Longitude = c(80.2707,78.4867,77.5946)
)

print(geo)

library(leaflet)
leaflet(geo) %>%
  addTiles() %>%
  addMarkers(
    lng = ~Longitude,
    lat = ~Latitude,
    popup = ~paste(
      "<b>", City, "</b><br>",
      "Population:", Population,
      "<br>Temperature:", AvgTemperature,
      "<br>Elevation:", Elevation
    )
  )
#.2
plot(
  geo$AvgTemperature,
  geo$Population,
  pch = 19,
  col = "blue",
  xlab = "Average Temperature (°F)",
  ylab = "Population",
  main = "Temperature vs Population"
)

abline(
  lm(Population ~ AvgTemperature, data = geo),
  col = "red",
  lwd = 2
)
#3
install.packages("knitr")
library(knitr)

kable(
  geo,
  caption = "Geographic Data of Cities"
)
#4install.packages("plotly")
library(plotly)

# Scatter Plot

p1 <- plot_ly(
  geo,
  x = ~AvgTemperature,
  y = ~Population,
  type = "scatter",
  mode = "markers+text",
  text = ~City,
  textposition = "top center"
) %>%
  layout(
    title = "Temperature vs Population",
    xaxis = list(title = "Average Temperature"),
    yaxis = list(title = "Population")
  )

# Bar Chart (used as a simple dashboard view with map)

p2 <- plot_ly(
  geo,
  x = ~City,
  y = ~Population,
  type = "bar"
) %>%
  layout(
    title = "Population by City"
  )

# Dashboard

subplot(p1, p2)