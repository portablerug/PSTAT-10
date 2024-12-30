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

#-----------------------------------------------------------------------------------------------
# Examples FOR NORMAL DISTRIBUTION
#-----------------------------------------------------------------------------------------------
# Flipper lengths of a certain kind of penguin are normally distributed with mean 192.9 mm and 
# standard deviation 7.1mm

# 1) What is the prob that a randomly-selected penguin has a flipper less than 200 mm long? More than?
# Given length, and need prob in normal dist
pnorm(200, 192.9, 7.1)

#longer than
1- pnorm(200, 192.9, 7.1)
# 2) What is the 90th percentile for flippers length in these penguins?
# get back a flipper length (x value)
qnorm(.90, 192.9, 7.1)  #200.2mm

# 3) Simulate 500 random selections from this population and plot the results
flippers <- rnorm(500, 192.9, 7.1)
flippers


library(tidyverse)
qplot(flippers, col = I("black"))
#-----------------------------------------------------------------------------------------------
# Example: User defined functions
#-----------------------------------------------------------------------------------------------
# Will take in a vector and output the mean and median
mean_median <- function(vector){
  mean  <- mean(vector)
  median <- median(vector)
  return(c(mean,median))    # Needed
}
# output
mean_median(c(1,1,1,3,4))

#-----------------------------------------------------------------------------------------------
# Apply()
#-----------------------------------------------------------------------------------------------
# Standard 3x3 matrix
mtrx <- matrix((1:12), nrow=3)
# We want to find the maximum value for each row of our matrix.
apply(mtrx, 1, max)  # '1' identifies all rows


# Create a function
add1 <- function(x){
  x+1
}

# create a VECTOR and apply function 
vec <- c(1,2,3)
lapply(vec, add1)
# Output will be each number in a new row

# Create a LIST and apply function
lst <- list(TRUE, c(1,2,3), 10)
lst

lapply(lst, add1)   # Add 1 to each value in the list

# Create a DATAFRAME and apply function
df <- data.frame(a=1:3, b=4:6, c=7:9, d=10:12)
df

lapply(df, add1)
#$a
#[1] 2 3 4

#$b
#[1] 5 6 7

#$c
#[1]  8  9 10

#$d
#[1] 11 12 13



#-----------------------------------------------------------------------------------------------
# list()
#-----------------------------------------------------------------------------------------------
# Change value of a specific item
this <- list("apple", "nanna", "minion")
this[1]
this[1] <- "Gru"
this
length(this)

# Check if an item is in a list 
"Gru" %in% this

# Add item to list
append(this, "purple minion")

# Loopin through
this
for (i in this){
  print(i)
}





