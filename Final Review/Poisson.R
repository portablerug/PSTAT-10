# Poisson Distribution
# DEF: models the number of itmes a randoomly-occuring event takes place in a specified
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
ppois():3, 6

# qpois(p, lambda) returns the smallest integer x such that ppois(x,lambda) >= p. 
# That is, it computes quantiles in the specified Poisson distribution













