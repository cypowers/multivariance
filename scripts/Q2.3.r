data <- read.table("data/2.3 data.txt", header = TRUE)
data
data2 <- data[2:6]
data2
summary(data2)
S <- cov(data) # Covarience
R <- cor(data2) # Correlation
R
uniq_root <- eigen(R)
uniq_root
uniq_root$values/sum(uniq_root$values)
p_data <- princomp(data2, cor=TRUE)
summary(p_data)
screeplot(p_data, type="lines", pch=19, main="Scree Plot")
p_data$loadings
biplot(p_data, cex=0.7, col=c("red", "blue"), main="Biplot")
names(uniq_root)
