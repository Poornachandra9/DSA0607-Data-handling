
stock <- data.frame(
  Date = as.Date(c("2023-01-01",
                   "2023-01-02",
                   "2023-01-03")),
  StockA = c(100,105,110),
  StockB = c(150,152,148),
  StockC = c(120,118,122)
)

# Display Dataset
print(stock)# Line Chart

matplot(stock$Date,
        stock[,2:4],
        type="o",
        pch=1:3,
        lty=1,
        col=c("blue","red","green"),
        xlab="Date",
        ylab="Stock Price",
        main="Stock Prices of Three Companies")

legend("topleft",
       legend=c("Stock A","Stock B","Stock C"),
       col=c("blue","red","green"),
       lty=1,
       pch=1:3)
#2
# Percentage Change for Stock A

pct_change <- c(
  0,
  (stock$StockA[2]-stock$StockA[1])/
    stock$StockA[1]*100,
  (stock$StockA[3]-stock$StockA[2])/
    stock$StockA[2]*100
)

# Bar Chart

barplot(pct_change,
        names.arg=stock$Date,
        col="orange",
        main="Daily Percentage Change - Stock A",
        xlab="Date",
        ylab="Percentage Change (%)")
#3
install.packages("knitr")     # Run only once
library(knitr)

kable(stock,
      caption="Stock Price Data")
#4
library(plotly)

# Line Chart

p1 <- plot_ly(stock,
              x=~Date,
              y=~StockA,
              type="scatter",
              mode="lines+markers",
              name="Stock A") %>%
  add_trace(y=~StockB,
            mode="lines+markers",
            name="Stock B") %>%
  add_trace(y=~StockC,
            mode="lines+markers",
            name="Stock C")

# Bar Chart

p2 <- plot_ly(
  x=stock$Date,
  y=pct_change,
  type="bar",
  name="Stock A % Change"
)

# Dashboard

subplot(p1, p2,
        nrows=2,
        shareX=FALSE,
        titleX=TRUE,
        titleY=TRUE)