summary(data)
S <- cov(data) # Covarience
R <- cor(data) # Correlation
uniq_root <- eigen(R)
uniq_root
uniq_root$values/sum(uniq_root$values)
p_data <- princomp(data, cor=TRUE)
summary(p_data)
screeplot(p_data, type="lines", pch=19, main="Scree Plot")
p_data$loadings
biplot(p_data, cex=0.7, col=c("red", "blue"), main="Biplot")
