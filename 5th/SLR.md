---
title: "Simple Linear Regression"
author: [Yeji Park]
date: 2018-08-21
subject: "Markdown"
keywords: [Markdown, Example]
subtitle: "Coding in Julia and Plotting in R"
titlepage: true
...


\newpage\null\thispagestyle{empty}\newpage

# The reason to use 2 languages

I wrote the code in Julia and plotted in R since I'd like to not only run code fast, but also to speed up plotting. 
I'm going to write details about how to connect Julia and R.

## Calculate Simple Linear Regression in Julia

```julia
A = readcsv("data.csv", header=true)
# header=true: distinguish header from values

X = A[1][:,2]
Y = A[1][:,3]

function beta1(X,Y)
  n = 10
  b = (n*sum(X.*Y) - (sum(X)*sum(Y)))/(n*sum(X.^2) - sum(X)^2)
  return b
end

function beta0(X,Y)
  n = 10
  b0 = (sum(Y) - beta1(X,Y)*sum(X))/n
  return b0
end

hatY = beta0(X,Y) + beta1(X,Y)*X

B = hcat(A[1], hatY)

writecsv("slr.csv", B)
```
To calculate and sent to R, read and yeild data using built-in function("readcsv", "writecsv").

## Plot SLR with original data

```R
library("ggplot2")

READ <- read.csv("slr.csv", header = F)

X <- READ["V2"]
Y <- READ["V3"]
hatY <- READ["V4"]

ggplot(READ)+ geom_line(aes(V2, V4, color="reg")) + geom_point(aes(V2, V3, color="data")) + labs(x = "X", y = "Y")
```
To use read.csv in R, the workplace have to be in same space with data file.  
