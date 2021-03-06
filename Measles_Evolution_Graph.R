library(ggplot2)
info <- read.csv("reported-cases-of-measles.csv", sep=",", stringsAsFactors = TRUE)
years <- factor(info$Year)
infoany <- split(info$Reported.cases.of.measles..WHO..2019.., years)
sumaany <- sapply(infoany, sum, na.rm=TRUE)
final <- data.frame(ANY=names(sumaany), INFECTATS=c(sumaany))
plot(final, lwd=2 , type="l" , bty="n" , main= "Evoluci� del Xarampi� al m�n", ylab="INFECTATS" , col=rgb(0.1,0.7,0.6,0.7))