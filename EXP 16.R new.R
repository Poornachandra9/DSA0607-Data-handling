# Create Dataset
patient <- data.frame(
  Patient_ID = c("P1","P2","P3","P4","P5"),
  Age = c(25,40,55,35,60),
  BMI = c(22,28,30,26,32),
  BP = c(120,135,145,130,150),
  Cholesterol = c(180,210,240,200,260)
)

print(patient)
# Scatterplot Matrix

data <- patient[,c("Age","BMI","BP","Cholesterol")]

pairs(data,
      main="Scatterplot Matrix of Patient Health Indicators",
      col="blue",
      pch=19)