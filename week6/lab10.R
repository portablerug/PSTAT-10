#lab10
#------------------------------------------------------------------------------------------------
#Problem 1
# X is uniform random variable as follows:
#        X ~ UNIF(1, 5)
#a) Write code to determine the pdf of X.
x <- dunif(1:5, min=1, max=5)
x
# another way
a <- 1
b <- 5
pdf <- 1/(b-a)
pdf
#b) Write code to determine the probability that X takes a value between 2.0 and 3.5

# 2.0 <= X <= 3.5
punif(3.5, min=1, max=5) - punif(2, min=1, max=5)

(3.5-2)/(b-a)
#------------------------------------------------------------------------------------------------
# Problem 2
#The random variable X is normally distributed with mean 80 and standard deviation 12.
# X ~ N(80, 12^2)
# a) What is the probability that a value of X chosen at random
#    will be between 65 and 95?
# P(65 ≤ X ≤ 95)
pnorm(95, mean=80, sd=12) - pnorm(65, mean=80, sd=12)

# b) What is the probability that a value of X chosen at random will be less than 74?
pnorm(74, mean=80, sd=12)

#------------------------------------------------------------------------------------------------
# Problem 3
# Assume that the Intelligence Quotient (IQ) of a person is normally distributed with mean 100
# and standard deviation 16.
# a) What percentage of the population have an IQ in the interval (84, 116)?
pnorm(116, mean=100,, sd=16) - pnorm(84, mean=100, sd=16)
# P(84 ≤ X ≤ 116)

# b) MENSA is an organization for people with an IQ in the top 2% of the population.
#    What IQ should a person possess to get admitted to MENSA?
qnorm(0.98, mean=100, sd=16)
# qnorm --> P(x ≤ ?) = 1st argument in () =0.98

# another way
qnorm(0.02, mean=100, sd=16, lower.tail = FALSE)  
# output of FALSE in lower.tail 
# --> P(x > ?) = 1st argument in () = 0.02
#------------------------------------------------------------------------------------------------
# Problem 4
# An online lottery is to be established. Each week, 5 numbers will be drawn randomly from 100
# numbers, labelled 1 -100.
# independent draws; with replacement

# a) Set up the lottery in such a way that each week’s results are reproducible and generate
#    the winning numbers for the first week of the lottery.
set.seed(123)
lotto_week1 <- sample(x=1:100, size=5, replace=T)
lotto_week1
#b) Generate the winning numbers for the second week of the lottery
set.seed(123)
lotto_week2 <- sample(x=1:100, size=5, replace=T)
lotto_week2
#------------------------------------------------------------------------------------------------
# Problem 5
# a) Generate 100 random normal variates with mean 75 and standard deviation 10, rounded to
#    the nearest whole number
set.seed(111)
rand_norm <- round(rnorm(100, mean=75, sd=10))
rand_norm

# b) How many of the above normal variates are ±2 standard deviations from the mean?
# ±2 standard deviations from the mean = (75-10*2, 75+10*2)

two_sd <- which(rand_norm >= 55 & rand_norm <= 95)
length(two_sd[two_sd])

# another
(rand_norm >=55 & rand_norm <=95)
sum((rand_norm >=55 & rand_norm <=95))  #Sum values

#------------------------------------------------------------------------------------------------
# Problem 6
# A student writes a dissertation containing 500 pages. The pages are numbered 1 – 500. The
# student is a poor typist, and the dissertation has 750 errors. Using a suitable probability
# distribution find the probability that page 427 contains:
# a) no errors



#b) exactly 4 errors


#------------------------------------------------------------------------------------------------
# Problem 7

# x ~ expon(rate=1/2)

pexp(1, rate=1/2)

1-dpois(0, lambda=1/2)



