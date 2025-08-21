setwd("C:\\Users\\it24103344\\Desktop\\IT24103344")

#Q1
branch_data <- read.table("Exercise.txt", header = TRUE,sep = ",")

#Q2
str(branch_data)

#Q3
boxplot(branch_data$Sales_X1, main = "Boxplot of Sales", ylab = "Sales")

#Q4
summary(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

#Q5
find_outliers <- function(x) {
  q1 <- quantile(x, 0.25)
  q3 <- quantile(x, 0.75)
  iqr <- q3 - q1
  
  lb <- q1 - 1.5 * iqr
  ub <- q3 + 1.5 * iqr
  
  outliers <- x[x < lb | x > ub]
  
  return(outliers)
}

years_outliers <- find_outliers(branch_data$Years_X3)
print(years_outliers)


