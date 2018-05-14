install.packages("ade4")
install.packages("psych")
install.packages("GPArotation")

library(ade4)
library(psych)
library(GPArotation)
data(deug)
data <- deug$tab
data
head(data)