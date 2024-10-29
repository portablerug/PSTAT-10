#example of prop table
mtx <- matrix(c(1,3,1,7,3,5), 
              ncol=3, nrow=2, byrow=TRUE)
sum(mtx)
proportions(mtx)

#implementing the prop.table() function
prop.table(mtx)
prop.table(mtx, margin=NULL)

rowSums(mtx)
prop.table(mtx, margin=1)   #divided each cell value by the row sum
#------------------------------------------------------------------------
#Sample Data
dta <- data.frame(A=c("a1", "a1", "a1", "a2", "a2", "a2"),
                  B=c("b1", "b1", "b2", "b1", "b2", "b2"))

#create a contingency table (Usually shows frequencies.)
contble <- table(dta$A, dta$B)
contble

#Calculate the conditional probability table P(B|A)
#margin =1 indicates rows
contprobtble <- prop.table(contble, margin=1)

#alt
contprobtble <- proportions(contble, margin=1)
print(contprobtble)

#------------------------------------------------------------------------
#Demo 3

prob_b1_given_a2 <- contprobtble["a2", "b1"]
prob_b1_given_a2

prob_b2_given_a2 <- contprobtble["a2", "b2"]
prob_b2_given_a2

#------------------------------------------------------------------------
#Demo 4
# cumulative probability distribution using SmallTown Data
outcomes <- c(0,1,2,3,4)

probs <- c(0.07, 0.20, 0.38,0.22, 0.13)
probs
barplot(probs, ylim = c(0, 0.38), names.arg = outcomes,
        space = 0.5, xlab = "Number of Children per Household",
        ylab = "Probability")

# produce the cumulative sums of the probabilities
# using cumsum()
smltwn_cum <- cumsum(probs)
smltwn_cum

#plot cumulative distribution
barplot(smltwn_cum, names.arg = outcomes, 
        space=0.3, xlab="Number of Children per Household",
        ylab= "Cumulative Propability", col= "yellowgreen")

#------------------------------------------------------------------------
#Demo 5
#Missing data
sum(c(0.07, 0.20, 0.38, NA, 0.13))   #does not give the answer we require
prob2 <- c(0.07, 0.20, 0.38, NA, 0.13)

#the argument na.rm is the sum()
#allows us to decide whether or not ot remove missing values
sum(prob2, na.rm=TRUE) #returns sum
1-sum(prob2, na.rm=TRUE) #returns the missing value

#mean of distribution is the sum of (the x values*respective probabilities)
outcomes <- c(0,1,2,3,4)
probs <- c(0.07, 0.20, 0.38, 0.22, 0.13)
mean_smltwn <- sum(outcomes * probs)
mean_smltwn

#------------------------------------------------------------------------
#Demo 6: Simulation
?sample()
#Syntax : sample(x, size, replace=FALSE, prob=NULL)
#prob= is a vector of probability weights
#Simulate random variable SmallTown

smltwn_probs <- c(0.07,0.20, 0.38, 0.22, 0.13)
sample(x=0:4, 10, replace=TRUE, prob=smltwn_probs)
smltwn_probs

#simulate a large number of samples
smltwn_smpls <- sample(0:4, 100000, replace=TRUE, prob=smltwn_probs)
smltwn_smpls

#find mean for several values
mean(smltwn_smpls>0)   #gives proportion of times the vector is TRUE
mean(smltwn_smpls>=0)

#create the pmf
table(smltwn_smpls)/100000

#------------------------------------------------------------------------
#Demo 7
#simulate 10 flips of a fair coin
sample(x=c("H", "T"),  #possible values of the coin
       size =10, replace =TRUE) #10 flips and sampling with replacement

#simualte 10 flips of a biased coin
#make the coin baised for heads
sample(x=c("H", "T"), 
       prob = c(0.8, 0.2), size =10,
       replace=TRUE)

#------------------------------------------------------------------------
#Demo8
#an urn contains 20 red, 30 blue, and 50 green counters
#Simualting the unr and use replicate function
?rep()
urn <- c(rep("red", 20), rep("blue", 30), rep("green", 50))
length(urn)

#ranbomly select 10 counters from the urn
sample(x=urn, size=10)

#------------------------------------------------------------------------
#Demo 9
#probability of getting heads when flipping a fair coin
outcomes <- c("Heads", "Tails")
ttl_otcms <- length(outcomes)   #total possible outcomes
fav_otcms <- length(outcomes[outcomes == "Heads"]) #favorable

ttl_otcms
fav_otcms

#classical probability
clsc_prob <- fav_otcms/ttl_otcms
clsc_prob

#calculating the probability of drawin a spade from a standard deck of 52 cards
deck <- rep(c("Spades", "Hearts", "Diamons", "Clubs"), each =13)
ttl_crds <- length(deck)
spades <- length(deck[deck =="Spades"])

clsc_prob_spade <- spades/ttl_crds
clsc_prob_spade

