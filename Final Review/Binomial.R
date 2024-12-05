# Binomial Distribution
#-----------------------------------------------------------------------------------------------
# DEF: binomial distribution describes the number of successes in a fixed number of independent
#      trials of a binary experiment where: 
#          - Each trial only has two possible outcomes: SUCCESS or FAILURE
#          - The probability of success(prob) is constant across trials
#          - The number of trials (size) is fixed
# 4 basic functions in R for calculating in the binomial distribution
#-----------------------------------------------------------------------------------------------
# rbinom(n, size, prob) generates n random values from b(size, prob) following a binomial distribution
rbinom(10, 2, .5)

# dbinom(x, size, prob) gives the probability of EXACTLY x successes
# prob of success of getting 0-4 successes with prob of success .5
dbinom(0:4, 4, .5)

# pbinom(x, size, prob) returns P(X ≤ x) in b(size, prob) (AT MOST) (CUM)
# returns prob of getting AT MOST 0-4 successes of size 4, and prob of .5
pbinom(0:4, 4, .5)

# qbinom(p, size, prob) returns the smallest value x (which the cumulative prob) such that pbinom(x, size, prob)=q.
#                       That is, it computes quantiles in b(size, prob)
qbinom(c(.25, .5, .75), 10, .5)
# check the answers with (cum prob of 3-7 successes)
pbinom(3:7, 10, .5)

#-----------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------
# rbinom(n, size, prob)
#-----------------------------------------------------------------------------------------------
# Simulate 20 experiments of flipping a coin 10 times
rbinom(20, 10, .5)

# Simulate 10 experiments of rolling a dice 5 times and getting an even number
rbinom(10, 1, 3/6) 

#-----------------------------------------------------------------------------------------------
# dbinom(x, size, prob)
#-----------------------------------------------------------------------------------------------
# A six-sided die is rolled 12 times, what is the prob of a 4, 5 times
dbinom(5, 12, 1/6)

# Test contains 20 questions w answers A,B,C and D. Only one is correct for each question. 
# Find the probability that a student will answer EXACTLY 6 questions correct is he makes random guesses on all 20.
dbinom(6, 20, 1/4)
#-----------------------------------------------------------------------------------------------
# pbinom(x, size, prob)
#-----------------------------------------------------------------------------------------------
# CUMULATIVE 
# Probability of getting 6 or fewer heads in 10 coin flips
pbinom(6, 10, 1/2)

#-----------------------------------------------------------------------------------------------
# qbinom(x, size, prob)
#-----------------------------------------------------------------------------------------------
# Suppose a fair 6-sided die is rolled 10 times. HWat is the min # of times a 4
# must appear to ensure the cumulative probability is at least 90%
n <- 10    # Number of trails 
p <- 1/6   # Success prob of a 4
prob <- 0.9 #Desired cumulative prob

min_succ <- qbinom(prob, n, p)
min_succ
# Check with cum prob using pbinom
pbinom(min_succ, n, p)      # at quantile (greater than or equal to 90%)
1 - pbinom(min_succ, n, p)  # below quantile (less than 90%)



