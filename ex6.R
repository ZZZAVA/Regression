library(datasets)
data(JohnsonJohnson)
A <- data.frame(time = integer(84), profit = integer(84), stringsAsFactors=FALSE) 

count = 1
for( i in seq(1960, 1980.75, by = 0.25))
{
  A[count,1] = i
  A[count,2] = JohnsonJohnson[count]
  count = count + 1
}

plot(A, type = "o")
f = lm(profit ~ ., data = A) 
summary(f)

A_test = data.frame("time" = 2016, "UKgas"="")
predict(f, A_test) 
winter <- data.frame(time = integer(21), profit = integer(21), stringsAsFactors=FALSE) 
spring  <- data.frame(time = integer(21), profit = integer(21), stringsAsFactors=FALSE) 
summer  <- data.frame(time = integer(21), profit = integer(21), stringsAsFactors=FALSE) 
autumn  <- data.frame(time = integer(21), profit = integer(21), stringsAsFactors=FALSE) 

count = 1
for(i in seq(1,84, by = 1 ))
{
  if(i%%4 == 1 )
    winter[count,] = A[i,]
  if(i%%4 == 2 )
    spring[count,] = A[i,]
  if(i%%4 == 3 )
    summer[count,] = A[i,]
  if(i%%4 == 0 )
  {
    autumn[count,] = A[i,]
    count = count +1 
  }
}

wint = as.data.frame(winter)
spring = as.data.frame(spring)
summer = as.data.frame(summer)
autumn = as.data.frame(autumn)

fW = lm(profit ~ ., data = winter) 
predict(fW, A_test)

fSp = lm(profit ~ ., data = spring) 
predict(fSp, A_test)

fSu = lm(profit ~ ., data = summer) 
predict(fSu, A_test)

fA = lm(profit ~ ., data = autumn) 
predict(fA, A_test)

