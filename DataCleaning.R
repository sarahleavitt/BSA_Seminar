#Sarah Leavitt
#BSA Seminar 5/30/19

setwd("~/Boston University/BSA_Seminar")
library(dplyr)


############### Data Cleaning #################

#Looking at the iris dataset
str(iris)
table(iris$Species)

#Subsetting to just the Setosa species
irisSetosa <- iris %>% filter(Species == "setosa")

#Saving the new dataset
saveRDS(irisSetosa, "../setosa.rds")


