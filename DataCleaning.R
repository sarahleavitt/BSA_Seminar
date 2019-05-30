#Sarah Leavitt
#BSA Seminar 5/30/19

setwd("~/Boston University/Git Seminar Materials/BSA_Seminar")
library(dplyr)


############### Data Cleaning #################

#Looking at the iris dataset
str(iris)
table(iris$Species)

#Subsetting to just the Setosa species
irisSetosa <- iris %>% filter(Species == "setosa")
irisVersi <- iris %>% filter(Species == "versicolor")

#Saving the new dataset
saveRDS(irisSetosa, "../setosa.rds")
saveRDS(irisVersi, "../versicolor.rds")


