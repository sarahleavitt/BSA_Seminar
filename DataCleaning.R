#Sarah Leavitt
#BSA Seminar 5/30/19

#This program creates the subsets of our programs to use for analysis

setwd("~/Boston University/BSA_Seminar")
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


