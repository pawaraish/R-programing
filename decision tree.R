data("iris")
View(iris)
summary(iris)
set.seed(555)
ind <- sample(2, nrow(iris), replace = TRUE, prob = c(0.8,0.2))

train <- iris[ind ==1, ]
test <- iris[ind ==2, ]
library(party)
library(rpart)
library(rpart.plot)
tree <- rpart(Species ~., train)
rpart.plot(tree)