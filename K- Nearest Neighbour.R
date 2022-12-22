data(iris)
str(iris)
table(iris$Species)
head(iris)
set.seed(9850)
 runif(5)
gp <- runif(nrow(iris))
iris <- iris[order(gp),]
str(iris)
head(iris)
head(iris,10)
str(iris)
summary(iris[,c(1,2,3,4)])
normalize <- function(x){
  +return((x - min(x)) / (max(x) - min(x)))
}
normalize(c(1,2,3,4,5))
normalize(c(10,20,30,40,50))
iris_n <- as.data.frame(lapply(iris[,c(1,2,3,4)],normalize))
summary(iris_n)
str(iris)
iris_train <- iris_n[1:139, ]
iris_train <- iris_n[1:129, ]
iris_test <- iris_n[130:150, ]
iris_train_target <- iris[1:129, 5]
iris_test_target <- iris[130:150, 5]
require(class)
sqrt(150)
m1 <- knn(train=iris_train, test=iris_test, cl=iris_train_target,k=13)
table(iris_test_target, m1)
