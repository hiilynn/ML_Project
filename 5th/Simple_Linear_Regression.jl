A = readcsv("data.csv", header=true)

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
