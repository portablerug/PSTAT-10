# RANDOM EXAMPLES
#-----------------------------------------------------------------------------------------------
# Examples FOR POISSON DISTRIBUTION
#-----------------------------------------------------------------------------------------------
# Calls to a customer-service line come at an everage rate of 6 every 5 minutes
# 1) what is the prob that there are exactly 4 calls in a 5 minute period?
#    That there are at least 4?

# EXACTLY 4 successes
dpois(4, 6)

# AT LEAST 4 successes (at most 3 success)
1-ppois(3, 6)

# 2) Construct a prob hist. for the number of calls to the line in a given 5 minute-period
x <- 0:15
probs <- dpois(x, 6)
probs
library(tidyverse)
qplot(x, weight=probs, geom="histogram", bins= 16,
      color = I("black"))

# 3) Simulate the number of calls in 50 such periods
rpois(50, 6)

#-----------------------------------------------------------------------------------------------
# Examples FOR BINOMIAL DISTRIBUTION
#-----------------------------------------------------------------------------------------------
# Let X represent the number of sixes in 10 rolls of a fair die. Simulate 50 runs of this prob
rbinom(50, 10, 1/6)
table(rbinom(50, 10, 1/6))

# In survey, 72% of Americans prefer dogs to cats. If 8 Americans are chosen at random, what is the
# prob that exactly 6 prefer dogs? That fewer than 6 do?
# x = 6, sample size = 8, prob of success= 72%
dbinom(6, 8, .72)

# P(X < 6)
pbinom(5, 8, .72)

# A weighted coin has a 42% chance of coming up heads. What is the expected number of heads in 5 tosses? 
# The Standard Deviation? Construct a prob hist for X, the number of heads in 5 tosses.
x <- 0:5
p <- dbinom(x, 5, .42)
p
sum(p)


weighted.mean(x, p)
# HIST
library(tidyverse)
qplot(x, weight = p, geom = "histogram", bins = 6, col= I("black"))
