#Lecture 9: Binomial probabilites

# dbinom() 
# sytax: dbinom(x = , size = , prob= )
# x = number of successes
# size = n the number of trials
# prob = the probability of a success

#Flip a fair coin twice. Find the probabiluty of getting two tails
dbinom(x= 2, size=2, prob=0.5)

#Flip a fair coin three time. What is the probability?
dbinom(x=3, size=3, prob=0.5)

#-----------------------------------------------------------------
#Demo 2
#Flip coin three times, construct the pmf for 'tails'
#0,1,2 or 3 tails

pmf_tails <- dbinom(0:3, size=3, prob=0.5)
pmf_tails

#-----------------------------------------------------------------
#Demo 3
# Flip coin 10 times, find prob of getting 4 or fewer heads
# Use dbinom()

dbinom(0:4, size=10, prob=0.5)     #Gives the prob for 0-4
sum(dbinom(0:4, size=10, prob=0.5))   #sum the values

#use pbinom()
# syntax: pbinom(q=, size=, prob= )
# q = the number of successes or fewer
# size = the probability of a success
# prob= the probability of a sucess

pbinom(4, size= 10, prob=0.5)     #does the addition for us

#-----------------------------------------------------------------
# Demo 4
# Toss coin 10 times
# prob of getting between 5 & 8 heads inclusive
sum(dbinom(5:8, size=10, prob=0.5))

#prob of getting between 5 & 8 heads inclusive using pbinom
pbinom(8, size=10, prob=0.5)-pbinom(4, size=10, prob=0.5)

# Suppose toss coin 10 times
# Calculate the prob that the num of heads is greater than 7
sum(dbinom(8:10, size=10, prob=0.5))

# Calculate the prob that number of heads is greater than 7
1-pbinom(7, size=10, prob=0.5)

#-----------------------------------------------------------------
#Demo 5
# defective parts example
# syntax: dibinom(x=, size=, prob=)
# x = number of successes
# size = number of trials
# prob = probabilty of a success

dbinom(x=3, size=10, prob=0.034)

#-----------------------------------------------------------------
#Demo 6
# dpois() funds the prob that a certain number of successes occur
# based on an average rate of success

#EX1: 
# 








