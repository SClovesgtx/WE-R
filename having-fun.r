library(prob)

S <- tosscoin(2, makespace = T)
show(S)
show(S[1:3,])

S <- cards()
show(S)
subset(S, suit == "Heart")
subset(S, rank %in% 7:9)

subset(rolldie(3), X1 + X2 + X3 > 16)

# function %in%
x <- 1:10
y <- 8:12

show(y %in% x)
show(x %in% y)

# function isin
isin(x, y)
x <- 1:3
y <- 1:5
isin(y, x) # x is in y?

x <- 1:10
y <- c(3, 3, 7)
all(y %in% x)
isin(x, y)

isin(x, c(3, 4, 5), ordered = TRUE)
isin(x, c(3, 5, 4), ordered = TRUE)
isin(x, c(3, 5, 4))

S <- rolldie(4)
subset(S, isin(S, c(2, 2, 6), ordered = TRUE))

# Set Union, Intersection, and Difference
S <- cards()
A <- subset(S, suit == "Heart")
B <- subset(S, rank %in% 7:9)
  
union(A, B)
intersect(A, B)
setdiff(A, B)
setdiff(B, A)
setdiff(S, A) # complement of A

outcomes <- rolldie(1)
p <- rep(1/6, times = 6)
probspace(outcomes, probs = p)
# or
probspace(1:6, probs = p)
# or
probspace(1:6)
# or
rolldie(1, makespace = T)
# or
rolldie(1, T)

# An unbalanced coin
probspace(tosscoin(1), probs = c(0.7, 0.3))


x = matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
show(x)

x = matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2, byrow = T)
show(x)

sqrt(x)
x^2


x = rnorm(50)
y = rnorm(50, mean = 50, sd=0.1)
cor(x, y)
plot(x, y)

mean(x)
var(x)
sd(x)


setwd("/home/cloves/Documents/we-r")
jpeg("salvando-plot.jpeg")
plot(x, y, xlab = "Eixo x", ylab = "Eixo y", main = "Título aqui")
dev.off()


y=x
f=outer(x, y, function(x, y)cos(y)/(1+x^2))
contour(x, y, f)
contour(x, y, f, nlevels = 45, add = T)


