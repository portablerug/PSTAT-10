# Self Study for Midterm 2

# For loops
# Count the even numbers in a vector
x <- c(6,5,3,9,8,11,6)
count <- 0    # Initialize count
for(moistcriticalcounter in x){        # 'moistcriticalcounter' denotes each element
  if(moistcriticalcounter %% 2 ==0)
    count <- count+1
}
print(count)  # Prints count after exiting the loop

# Code will return the sum of the odd elements in an array when tested
# Midterm Question something
arr <- c(1,2,3,4,5,6,7,8,9,10,11) # 'THISISTHECOUNTER' will go through each of these
                                  #  elements, 1 by 1 and test the condition 'HERE'

MyFunction <- function(arr) {
  sum <- 0
  for (THISISTHECOUNTER in arr) {
    if (THISISTHECOUNTER %% 2 != 0) {     # HERE (test condition checks if it divides by 2)
                                          # If not it will be added to 'sum' and added when finished
      sum <- sum + element
    }
  }
  return(sum)
}
# Create variable to hold the result. Will not be able to see the result without this
result <- MyFunction(arr)
print(result)

#----------------------------------------------------------------------------------------------------------
# APPLY FUNCTION
# SYNTAX: apply(X, MARGIN, FUN)
mtrx <- matrix((1:12), nrow=3)
print(mtrx)

# Say we want to find the MAX value for each row in the matrix
# set MARGIN to 1 and pass the max function
print(apply(mtrx, 1, max))

# Now by sum of the values by MARGIN 2!!!!!
print(apply(mtrx, 2, sum))

# Calculating the cumulative sum by column:
print(apply(mtrx, 2, cumsum))

mat <- matrix(1:9, nrow=3)
mat
apply(mat, 1, sum)        # sum across the rows
apply(mat, 2, sum)        # sum across the columns
#----------------------------------------------------------------------------------------------------------
# Binomial
#----------------------------------------------------------------------------------------------------------
# flip coin 8 times, want to know the prob of getting 6 heads
dbinom(6, size=8, prob=.5)

# Flip coin three times, want to know PROB of two tails
dbinom(2, size=3, prob =.5)

# COMPARING CUMULATIVE TO EXACTY PROBABILITY
dbinom(3, size=10, prob=.5)
pbinom(3, siz=10, prob=.5)

#----------------------------------------------------------------------------------------------------------
# Flip a coin 10 times, what is the prob of getting heads(successes) 3 times?
pbinom(3, size = 10, prob = 0.5)

# More than 3
pbinom(3, size = 10, prob = 0.5, lower.tail = FALSE)

# Generate 100 random values from a normal distribution with mean=0 and sd=1
random_values <- rnorm(100, mean = 0, sd = 1)
print(random_values)


# Find the value corresponding to the 95th percentile
q <- qnorm(0.95, mean = 0, sd = 1)
print(q)  # Output: Quantile

#----------------------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------------
rvariates <- rnorm(n=2000, mean=0, sd=1)
rvariates

# 4)
s <-  list(a = 4, b = 9, c = 16, d = 25)
lapply(s, sqrt)     # will output a list not a vector (2 3 4 5)

# 5) The numebr of cisits on a web page is knwon to follow a Poisson distribution with mean 15 visits per hour
# Which will not give the prob of getting 10 or fewer visits in an hour?
sum(ppois(0:10, lambda=15))

# these will
sum(dpois(0:10, lambda=15))
ppois(10, lambda=15)
1 - ppois(10, lambda = 15, lower.tail=FALSE)


#----------------------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------------
deck <- rep(c("Spades", "Hearts", "Diamonds", "Clubs"), each  =13)
deck_amount <- length(deck)

deck_amount



# For loop
for (i in 1:9){
  i = i+1
  print(i)
}
# same thing
for (i in 1:10){
  print(i)
}

