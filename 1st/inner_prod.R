# the angle btw u & v

u <- c(1,1)
v <- c(-1,1)

theta <- acos(sum(u*v)/sqrt(sum(u*u) + sum(v*v)))*180/pi
theta

#=======================#

# the outer product 

a <- c(3, -3, 1)
b <- c(4, 9, 2)

cross_product <- crossprod(a,b)
