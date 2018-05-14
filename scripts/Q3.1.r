install.packages("GPArotation")
library(psych)
library(GPArotation)
data <- read.table("data/3.1 data.txt", header = TRUE)
data2 <- data[2:9]
data2
# 달리기 소요시간 조정
data2$run50m <-max(data2$run50m) - data2$run50m
data2
summary(data2)

data2.factor = principal(data2, rotate="none")
names(data2.factor)
data2.factor$values
plot(data2.factor$values, type="b")
screeplot(data2.factor$loadings, type="lines", pch=19, main="Scree Plot")


data <- read.table("data/3.3 data.txt", header = TRUE)
data
