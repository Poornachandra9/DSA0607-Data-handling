# Product Inventory Dataset

inventory <- data.frame(
  ProductID = c(1,2,3),
  ProductName = c("Product A","Product B","Product C"),
  Quantity = c(250,175,300),
  Price = c(20,15,18),
  Category = c("Category 1","Category 1","Category 2")
)

print(inventory)
#1
barplot(inventory$Quantity,
        names.arg = inventory$ProductName,
        col = "skyblue",
        main = "Quantity Available for Each Product",
        xlab = "Product Name",
        ylab = "Quantity Available",
        border = "black")
#2
# Create matrix for stacked bar chart

stack_data <- table(inventory$Category,
                    inventory$ProductName)

stack_matrix <- stack_data

for(i in 1:nrow(stack_matrix)){
  for(j in 1:ncol(stack_matrix)){
    if(stack_matrix[i,j] == 1){
      stack_matrix[i,j] <- inventory$Quantity[j]
    }
  }
}

barplot(stack_matrix,
        col = c("orange","lightgreen"),
        main = "Product Quantity by Category",
        xlab = "Products",
        ylab = "Quantity",
        legend.text = rownames(stack_matrix))
#3
install.packages("knitr")
library(knitr)

kable(inventory,
      caption = "Product Inventory Data")
#4
install.packages("plotly")
library(plotly)

# Bar Chart

p1 <- plot_ly(
  inventory,
  x = ~ProductName,
  y = ~Quantity,
  type = "bar",
  name = "Quantity"
) %>%
  layout(
    title = "Inventory Quantity",
    xaxis = list(title = "Product"),
    yaxis = list(title = "Quantity")
  )

# Stacked Bar Chart

p2 <- plot_ly(
  inventory,
  x = ~ProductName,
  y = ~Quantity,
  color = ~Category,
  type = "bar"
) %>%
  layout(
    title = "Inventory by Category",
    barmode = "stack"
  )

# Dashboard

subplot(p1, p2)
