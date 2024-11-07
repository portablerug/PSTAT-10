# Lecture 10
# Uniform Distribution
# syntax: dunif(x, min=, max=)
# x = vector of values
# min and max = the upper and lower bounds of distribution

#dunif returns the density
bus <- dunif(x=0:10, min=0, max=10)
bus

hist(bus, freq =FALSE, xlab='x', col='orange')

# punif gives the (Cumulative Distribution Function)
# punif(q, min=0, max=10, lower.tail=TRUE)
# probability of waiting 5 minutes or less
punif(q=5, min=0, max=10, lower.tail=TRUE)

# between 5 and 7 minutes?
# prob of waiting 7 minutes or less MINUS prob of waiting 5 mintes
punif(q=7, min=0, max=10, lower.tail=TRUE) - 
  punif(q=5, min=0, max=10, lower.tail=TRUE)

#prob of waiting time, X, is more than 6 minutes
punif(q=6, min=0, max=10, lower.tail=FALSE)


#-------------------------------------------------------------------------------------------------------
# Demo 2: Normal Distribution
# plotting the standard normal distribution
x <- seq(-4,4, length=200)
y <- 1/sqrt(2*pi)*exp(-x^2/2)
z <- plot(x,y,type='l', lwd=2,col='yellowgreen') #letter l

# in plot(), type l =lines, lwd = line width

# plotting SND using dnorm
# syntax: dnorm(x, mean, sd)
x <- seq(-4,4, length=200)
y <- dnorm(x, mean=0, sd=1)
z <- plot(x,y, type='l',lwd=2, col='cyan')

# The standard deviation-a measures of spread
y2 <- dnorm(x, mean=0, sd=2)
lines(x,y2, type='l', lwd=2, col = 'black')

# lines() is sued to add lines to an existing plot
x <- seq(-8,8, length=500)
y3 <- dnorm(x,mean=0, sd=0.5)
plot(x,y3, type='l', lwd=2, col='darkgreen')

y2 <- dnorm(x,mean=0, sd=2)
lines(x,y2, type='l', lwd=2, col='blue')

y1 <- dnorm(x,mean=0, sd=1)
lines(x,y1, type='l', lwd=2, col='red')

legend('topright', c('sigma=1/2', "sigma=2","sigma=1"),
       lty=c(1,1,1), col=c('darkgreen', 'blue', 'red'))


#standard normal distribution again.
xx <-  seq(-3,3, length=400)
yy <- dnorm(xx, mean=0, sd=1)
zz <- plot(xx,yy, type='l', lwd=2, col='black')


# Find the area under the standard normal curve below the mean
# use pnorm which returns P(X <= q)
# syntax: pnorm(q, mean, sd)
pnorm(0,mean=0, sd=1)

# Find the area between x=-1 and x=1
pnorm(1, mean=0, sd=1)-pnorm(-1, mean=0, sd=1)

# find the area between x=-3 and x=3
pnorm(3, mean=0, sd=1)-pnorm(-3, mean=0, sd=1)

# finding probabilities for the normal distribution in gernal
x <-  seq(70, 130, length=200)
y <- dnorm(x, mean=100, sd=10)
plot(x,y, type='l', lwd=3, col='red')

x <- seq(70,90)
y <- dnorm(x, mean=100, sd=10)
polygon(c(70,x,90), c(0,y,0), col='yellow')

#the polygon is closed by joining the last point to the first point
# ploygon() function plots a polygon between specified points in an existing plot

# Find the AREA of the yellow area
# syntax: pnorm(1, mean, sd)
pnorm(90, mean=100, sd=10)

x <- seq(90,100, length=200)
y <- dnorm(x,mean=100, sd=10)
polygon(c(90,x,100), c(0,y,0), col='pink')

pnorm(100, mean=100, sd=10) - pnorm(90, mean=100, sd=10)

# The pink area=0.3413447. The yellow area=0.1586553
# pink arae + yellow area = 0.5 (HALF AREA)

#-------------------------------------------------------------------------------------------------------
# Demo 4
# iris dataset
data('iris')
hist(iris$Sepal.Width)    #looks approximately normal
qqnorm(iris$Sepal.Width)   #Create a QQ plot
qqline(iris$Sepal.Width, col='red')

#-------------------------------------------------------------------------------------------------------
#Demo 5
# Generate 1000 random variates of a normal distribution
# with mean 0 and standard deviation 1
# syntax: rnom(n,mean=0, sd=1)

rvariates <- rnorm(n=1000, mean=0, sd=1)
hist(rvariates)
qqnorm(rvariates)
qqline(rvariates, col='red')

#-------------------------------------------------------------------------------------------------------
# Demo 6
# Sup