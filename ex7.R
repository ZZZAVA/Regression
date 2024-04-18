library(datasets)
data(sunspot.year)
A = as.data.frame(sunspot.year)
plot(A)

B = data.frame(day = integer(289), x = double(289),stringsAsFactors=FALSE)

for(i in seq(1,289))
{
  B$day[[i]] = i
  B$x[[i]] = A$x[[i]]
}

f = lm(x ~ ., data = B) 
summary(f)

