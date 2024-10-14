#Week 2 Monday Section

#Creating a vector
x <- c(5,7,3,10,1,7,19,5,2)
 
#Print
x
#Access the 4th Element
x[4]
#5-7 Elements
x[5:7]

#Finding the Median
median(x)
sort(x)
#Find the length
length(x)

#Using rep() to create vectors
rep(6, times=7)

#333444666
rep(c(3,4,6), each=3) #Individual
rep(c(3,4,6), time=3) #Sequentually


#Explain the difference in the results p+q and sum(p+q)
p <- c(2,3,4,6,6) 
q <- c(7,2,4,3,2)

p+q #Sums both vectors with corresponding element
sum(p+q) #Adds all elements of each vector and adds both vectors together

#Matrix
A <- matrix(x(1:9), nrow=3)


#Rewrite using colon operator
x <- c(-50:-54, -53:-50)
x

#Replicate function rep() to generate 1 1 2 2 3
#Use length.out argument
rep(1:2, each=2)
#only want 5 elements to be printed
rep(1:3, each=2, length.out=5)

#Different approach
rep(1:3, times=c(2,2,1))

