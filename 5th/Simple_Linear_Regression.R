library("ggplot2")

READ <- read.csv("slr.csv", header = F)

X <- READ["V2"]
Y <- READ["V3"]
hatY <- READ["V4"]

ggplot(READ)+ geom_line(aes(V2, V4, color="reg")) + geom_point(aes(V2, V3, color="data")) + labs(x = "X", y = "Y")
