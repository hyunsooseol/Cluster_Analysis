

library(tidyverse)
# Load  and prepare the data
data("USArrests")

my_data <- USArrests %>%
  na.omit() %>%          # Remove missing values (NA)
  scale()                # Scale variables

# View the firt 3 rows
head(my_data, n = 3)

#Partitioning clustering

install.packages("factoextra")

library("factoextra")
fviz_nbclust(my_data, kmeans, method = "gap_stat")



km.res <- kmeans(my_data, 3, nstart = 25)

km.res[]

# Visualize
library("factoextra")

fviz_cluster(km.res, data = my_data,
             ellipse.type = "convex",
             palette = "jco",
             ggtheme = theme_minimal())
