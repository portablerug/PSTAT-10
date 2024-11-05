#Lab9

# sample() to create simple data
# rbinom() to randomly generate data which follow a binomial distribution
# syntax: rbinom(x = , size=, prob= )

#----------------------------------------------------------------------------------------
# Twenty percent of college students cook at least 4 nights a week. You randomly select 
# 8 college students. What is the probability that exactly 5 of college 
# students cook at least 4 nights a week?

# x = number of students who cook at least 4 nights a week
# success = selected student cooks a least 4 nights a week
# --> prob(success) = 20% = p
#      no.(independent trails) = 8 =n
# --> x ~ binomial(n=8, p=0.2)
# P(x=5) --> probability

dbinom(x=5, size=8, prob=0.2)


#----------------------------------------------------------------------------------------
#A bakery produces 200 donuts each day. Mis-shaped donuts are thrown away. 
# From previous data, we know that there is a 3% rate of mis-shaped donuts. 
# Estimate how many donuts will we need to throw away each day this week.
# (Assume a 7-day week)

# Let Xi = number of mis-shaped donuts on day i(i=7)
# (success = the donut mis-shaped)
# --> prob(success) = 3%
#     no.(independent) = 200
# --> Xi ~ binomial(n=200, p=0.03)
# Target: mean(x1, x2, ..., x7)

rbinom(n=7, size=200, prob=0.03)
#calculate mean
mean(rbinom(n=7, size=200, prob=0.03))     #gives random

set.seed(111)
mean(rbinom(n=7, size=200, prob=0.03))


# another way
set.seed(111)
sum(rbinom(n=7, size=200, prob=0.03))


#----------------------------------------------------------------------------------------
# Simulate rolling a fair six-sided die 5 times, counting the number of 
# 3's you observe.

# let X = the number of 3's observed
# (let success = 3 is observed)
# --> prob(success) = 1/6 = p
#       no.(trials) = 5 = n
# --> X ~ binomial(n=5, p=1/6)

set.seed(111)
rbinom(n=1, size=5, prob=1/6) #output is based on the seed

#----------------------------------------------------------------------------------------
# Plotting the Probability Mass Function (pmf) of a Binomial Distribution

k <- 0:30
plot(k, dbinom(k, size=30, prob=.15), type="h",
     main="pmf of b(30, 0.15)", ylab="density") # l = line, p = point, h = ?

plot(k, dbinom(k, size=30, prob=.4), type="h",
     main="pmf of b(30, 0.4)", ylab="density")

?base::plot

#----------------------------------------------------------------------------------------
k <- 0:25
par(mfrow=c(1,1))
plot(k, dbinom(k, size=25, prob=0.4), type="h",
  main="pmf of b(25, 0,4", ylab="density")

dbinom(6, size=25, pro=0.4)

#----------------------------------------------------------------------------------------
options(scipen=000) # scientific pentaly
data.frame(prob=dbinom(k, size=25, prob=0.4),
           row.names=k)



