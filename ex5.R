library(datasets)
data(EuStockMarkets)
A = as.data.frame(EuStockMarkets)
plot(EuStockMarkets)

A_DAX = data.frame(day = integer(1860), x = double(1860),stringsAsFactors=FALSE)
A_SMI = data.frame(day = integer(1860), x = double(1860),stringsAsFactors=FALSE)
A_CAC = data.frame(day = integer(1860), x = double(1860),stringsAsFactors=FALSE)
A_FTSE = data.frame(day = integer(1860), x = double(1860),stringsAsFactors=FALSE)

for(i in seq(1,1860))
{
  A_DAX$day[[i]] = i
  A_DAX$x[[i]] = A$DAX[[i]]
  
  A_SMI$day[[i]] = i
  A_SMI$x[[i]] = A$SMI[[i]]
  
  A_CAC$day[[i]] = i
  A_CAC$x[[i]] = A$CAC[[i]]
  
  A_FTSE$day[[i]] = i
  A_FTSE$x[[i]] = A$FTSE[[i]]
  
}

f_DAX = lm(x~ ., data = A_DAX) 
summary(f_DAX)

f_SMI = lm(x~ ., data = A_SMI) 
summary(f_SMI)

f_CAC = lm(x~ ., data = A_CAC) 
summary(f_CAC)

f_FTSE = lm(x~ ., data = A_FTSE) 
summary(f_FTSE)

