?sample()

#new function set.seed()
#allows to reproduce the exact same sample each time we execute a random
#related function. Sets the string number used to generate a sequence of 
#random numbers

#syntax: set.seed(n), where n is a seed number 
#--------------------------------------------------------------------------
#a) create vector consisting o int elm 5 - 20
vec <- 5:20
vec <- seq(from=5, to=20, by=1)

#b) create a reproducible sample of 5 integers
set.seed(vec)
#TA 
set.seed(1)
sample(vec, size=5, replace=TRUE)

#i) allow sample to have repeated values
repvls <- sample(vec, 5, replace =TRUE)
repvls

#TA
set.seed(2)
sample(vec, size=5, replace=TRUE)

#ii) do not allow repeated values
repvls <- sample(vec, 5, replace=FALSE)
repvls

#--------------------------------------------------------------------------
#probability distribution
#     x     1.  2    3    4    5
# P(X=x). 0.0   A  0.4  0.1  0.03

#a) find the missing value of A
p <- c(0.0, 0.4, 0.1, 0.03)
A <- 1-sum(p)
A       #missing value

#b) P(X < 2)
p[1]

#c) Find the mean of a random variable X
x <- c(1,2,3,4,5)
p <- c(0.0, A, 0.4, 0.1, 0.03)
sum(x*p)

#d) construct cumulative distribution function of X
cumsum(p)
# P(X<= 0) P(X<=1) ....P(X<=5)

cdf_x <- cbind(x, cumsum(p))
colnames(cdf_x) <- c("x", "P(X<=x")
cdf_x


choose(85,10)
#--------------------------------------------------------------------------
#Question 4

outcomes <- c("1", "2", "3", "4", "5", "6")
ttl_out <- length(outcomes)
fav_out <- length(outcomes[outcomes =="4"])
outcomes[outcomes =="4"]
outcomes
ttl_out
fav_out

classical_prob <- fav_out/ttl_out
classical_prob

