A = read.csv(file = "UKgas.csv")
A = A[, -1]
plot(A, type = "o")
f = lm(UKgas ~ ., data = A, model = TRUE) 
summary(f)
A_test = data.frame("time" = 2016, "UKgas"="")
predict(f, A_test)


winter <- data.frame(time = integer(27), gas = integer(27), stringsAsFactors=FALSE) 
spring  <- data.frame(time = integer(27), gas = integer(27), stringsAsFactors=FALSE) 
summer  <- data.frame(time = integer(27), gas = integer(27), stringsAsFactors=FALSE) 
autumn  <- data.frame(time = integer(27), gas = integer(27), stringsAsFactors=FALSE) 

count = 1
for(i in seq(1,108, by = 1 ))
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

fW = lm(gas ~ ., data = winter) 
summary(fW)
predict(fW, A_test)

fSp = lm(gas ~ ., data = spring) 
summary(fSp)
predict(fSp, A_test)

fSu = lm(gas ~ ., data = summer) 
summary(fSu)
predict(fSu, A_test)

fA = lm(gas ~ ., data = autumn) 
summary(fA)
predict(fA, A_test)

