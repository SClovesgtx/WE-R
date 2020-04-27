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


