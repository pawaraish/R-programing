library(rpart)
library(rpart.plot)

data = read.csv("C:/Users/Vinod/Documents/aish.csv")

tree <- rpart(height ~ gender+weight,data)
a <- data.frame(gender=c("male"),weight=c(85))
result <- predict(tree,a)
print(result)

tree <- rpart(gender ~ height+weight,data)
a <- data.frame(height=c(190),weight=c(85))
result <- predict(tree,a)
print(result)

rpart.plot(tree)

