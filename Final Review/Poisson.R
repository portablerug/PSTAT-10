# Poisson Distribution
# DEF: models the number of items a randomly-occuring event takes place in a specified
#      interval, for instance calls to a customer-service line or accidents along a busy highway

# Single parameter (Lambda) that represents the mean number of occurences in an interval (AVG)

# 4 basic functions in R for calculating the Poisson Distribution
#----------------------------------------------------------------------------------------------------------
# rpois() generates n random values from the Poisson distribution with mean lambda
rpois(10, 6)

# dpois(x, lambda) returns the probability of exactly x occurrences in a single interval
# As usual in R, x can be a vector
dpois(0:3, 6)

# ppois(x, lambda) returns the probability of at most x occurrences in a single interval.
# In otherwords, its the cumulative distribution function (CDF)
ppois(0:3, 6)

# qpois(p, lambda) returns the smallest integer x such that ppois(x,lambda) >= p. 
# That is, it computes quantiles in the specified Poisson distribution
qpois(.7, 6)

#-----------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------
# dpois(x, lambda)
#-----------------------------------------------------------------------------------------------
# Average of 12 customers per day. What is the prob of receiving EXACTLY 8 customers in 1 day
dpois(8, 12)

# Student receives average 7 texts in a 2 hour period. 
# a) What is the prob that they will receive EXACTLY 9 text messages a 2 hour period? 
dpois(9, 7)

# b) Probability of receiving EXACTLY 24 messages in an 8 hour period? 
# Things to notice: Time interval is different.
lambda <- 7*(8/2)
dpois(24, lambda)

#-----------------------------------------------------------------------------------------------
# ppois(x, lambda)
#-----------------------------------------------------------------------------------------------
# A small business receives on average 8 calls per hour.
# a) What is the probability that the business will receive EXACTLY 7 calls in 1 hour? 
dpois(7, 8)

# b) What is the probability that the business will receive AT MOST, 5 calls in 1 hour?
lambda <- 8 # Mean calls
x <- 5 # AT MOST 5 calls

# Finding the cumulative probability P(X ≤ 5)
ppois(x, lambda)

# c) What is the probability that the business will receive MORE THAN 6 calls in one hour?
lambda <- 8 # Mean number of calls
# We need P(X > 6) to find prob of more than 6 calls
# P(X > 6) = 1 -P(X ≤ 6)
x <- 6 # MORE THAN 6 calls
1 - ppois(x, lambda, lower.tail=T)

# OR
ppois(x, lambda, lower.tail = F)

# lower.tail = T returns the cum prob of 'X' LESS THAN or equal to a specific value of 'x'
# lower.tail = F returns the complementary cum prob that X is GREATER THAN x
#-----------------------------------------------------------------------------------------------
# qpois(x, lambda)
#-----------------------------------------------------------------------------------------------




#-----------------------------------------------------------------------------------------------
# rpois(x, lambda)
#-----------------------------------------------------------------------------------------------






