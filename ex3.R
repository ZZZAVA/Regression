A <- read.delim("cygage.txt")
colnames(A) = c("Age","Depth","Weight")
f = lm(Age~ ., data = A[-3], weights = unlist(A[3]), model = TRUE) 
plot(Age ~ Depth, data=A[-3], type = "o")
summary(f)

