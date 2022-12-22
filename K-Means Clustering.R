library(stats)
library(dplyr)
library(ggplot2)
library(ggfortify)

View(iris)
mydata = select(iris,c(1,2,3,4))
wssplot <- function(data, nc=15, seed=1234)
{
  wss <- (nrow(data)-1)*sum(apply(data,2,var))
  for(i in 2:nc){
    set.seed(seed)
    wss[i] <- sum(kmeans(data, centers=i)$withiness)} 
  plot(1:nc, wss, type="b", xlab="Number of cluster",ylab="within groups sum of squares")
}
wssplot(mydata)
# K-means Cluster #
KM = kmeans(mydata,2)
# Cluster Plot #
autoplot(KM,mydata,frame=TRUE)
KM$centers
