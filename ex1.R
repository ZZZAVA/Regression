setwd("C:/Users/n.zavyalov/Documents/Regression")
library(MASS)
library(lmridge)
library(ggplot2)

A <- read.delim("reglab1.txt")

colnames(A) = c("z","x","y")
f = lm(z ~ ., data = A, model = TRUE) 
summary(f)

f = lm(x ~ ., data = A, model = TRUE) 
summary(f)

f = lm(y ~ ., data = A, model = TRUE) 
summary(f)

