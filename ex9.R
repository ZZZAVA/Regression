library(datasets)
data(cars)
A = cars
plot(A, type = "o")

f = lm(dist ~ ., data = A, model = TRUE) 
summary(f)

A_test = data.frame("speed" = 40, "dist" = "")
predict(f, A_test)

