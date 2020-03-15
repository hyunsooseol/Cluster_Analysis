
# K-means clustering----------------

# reference:https://steemit.com/kr/@gillime/r-6-k-means-clustering

data(iris)


#1. How many clusters do I need??

# install.packages("NbClust")

data(iris)

library(NbClust)

nc <- NbClust(iris[,1:4], min.nc=2, max.nc=6, 
                method="kmeans")


#2.  kmeans() 함수 이용-------------------------

result <- kmeans(iris[,1:4], 2)

result[]

# 3. drawing graph---------------

# install.packages("cluster")
# install.packages("fpc") 
library(cluster)
library(fpc) 

plotcluster(iris[,1:4], result$cluster, color=TRUE, shade=TRUE)

clusplot(iris[,1:4], result$cluster, color=TRUE, shade=TRUE, 
         labels=2, lines=0)

#################################################
## exercising with crime data-------
library(cluster)
library(NbClust)
library(fpc) 
library(tidyverse)

data("USArrests")

nc <- NbClust(USArrests, min.nc=2, max.nc=4, 
              method="kmeans")

result <- kmeans(USArrests, 2)

result[]


plotcluster(USArrests, result$cluster, color=TRUE, shade=TRUE)


# # More complex pretty plot

clusplot(USArrests, result$cluster, color=TRUE, shade=TRUE, 
         labels=2, lines=0)

## Using decathlon data

library(NbClust)
library(fpc) 
library(tidyverse)

data("decathlon")

# ?NbClust

nc <- NbClust(decathlon[,1:10], min.nc=2, max.nc=5, 
              method = "complete", index = "all") 

# for kmeans algorithm, method="kmeans"

nc[]



result <- kmeans(decathlon[,1:10], 2)

result[]

plotcluster(decathlon[,1:10], result$cluster, color=TRUE, shade=TRUE)









