#Sarah Leavitt
#BSA Seminar 5/30/19

setwd("~/Boston University/Git Seminar Materials/BSA_Seminar")
library(dplyr)
library(ggplot2)


############### Analysis #################

#Read in the dataset
irisSetosa <- readRDS("../setosa.rds")

#Plot sepal length vs. petal length
ggplot(data = irisSetosa, aes(y = Sepal.Length, x = Petal.Length)) +
  geom_point()

#Linear regression
m <- lm(Sepal.Length ~ Petal.Length, data = irisSetosa)
summary(m)

#Plot sepal length vs. petal length with regression line
ggplot(data = irisSetosa, aes(y = Sepal.Length, x = Petal.Length)) +
  geom_point() +
  geom_smooth(method = "lm")


#Read in the versicolor
irisVersi <- readRDS("../versicolor.rds")

ggplot(data = irisVersi, aes(y = Sepal.Length, x = Petal.Length)) +
  geom_point() +
  geom_smooth(method = "lm")

