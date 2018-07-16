# Single Layer Perceptron (OR Problem)

weights_init <- function(m,n) {
  w <- runif(m,-1,1)
  if(n==1) {
    return(w)
  }
  else {
    for(i in 2:n) {
      w <- cbind(w, runif(m,-1,1))
    }
    return(w)
  }
}

activation <- function(s) if(s > 0) 1 else 0

output <- function(weights, input) {
  s <- input %*% weights
  g <- Vectorize(activation) # activation이라는 함수를 vactorize
  y <- g(s)
  return(y)
}

update <- function(weights, input, answer, eta = 0.25) {
  y <- output(weights, input) # 괄호 안에 input값을 적어서 default값 설정
  w <- weights - eta * (t(x) %*% (y - answer)) # t(x): transpose of x
  return (w)
}

train <- function(weights, input, answer, eta = 0.25, times) {
  w <- weights
  print(w)
  for(i in 1: (times -1)) {
    w <- update(w, input, answer, eta)
    print(w)
  }
  return(output(w, input))
}

w <- weights_init(3,1)

x <- matrix(0, 4, 3)
x[,1] = -1 # Bias column
x[,2] = c(0,1,1,1)
x[,3] = c(0,0,1,1)

t <- c(0,1,1,1)

y <- train(w, x, t, 0.25, 20)

print(y)
