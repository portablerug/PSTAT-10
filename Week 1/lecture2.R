#Scalars
options(promt = "R>")
x <- 56
x

y <- "String"
y

#Concatenate function c()
#All the elements if a vector have to be of the same type
#Numeric Vector
a <- c(1,2,5,6,-7)

#Character vector
x <- c("Mother", "Fccccc")

#Length function (tells you how. many elements in a vector)
length(a)

#Lecture 2 Demo 1
#Supose we have test scores for 5 students, their scores are
#represented inthe respective vector
Test_scores <- c(8,7,8,10,5) #Scalars

#print out vector
Test_scores

#Class type
class(Test_scores) #(numeric)

#Finding the mean test score
mean(Test_scores)
#Finding the median test score
median(Test_scores)

#Assing the name of each student to their test score
#Bob, Alice, Alex, Juan and Amy
Test_Results <- c("Bob" = 8, "Alice" = 7, "Alex" = 8,
                  "Juan" = 10, "Amy" = 5) 
#^^^^^^allowed to use "= because it is local
#Call Object
Test_Results

#Check class of test results
class(Test_Results)
#mean of test results
mean(Test_Results)
median(Test_Results)

#How many elements are there in this obejct?
length(Test_Results)
#Help or info on function
? length()
#Clear console with "ctr + L"


#################################################################
#Demo 2
#Tracking mileage each time you fill up.
#LSt 3 fill ups was: 65311, 65624, 65908
#How many times did you drive between each fill up? 

#Create a vector of the mileage
mileage <- c(65311, 65624, 65908)
mileage

#Use the diff function to show the number of miles between fill-ups
a <- diff(mileage)
a

#Next mileage
mileage2 <- c(66200, 66533, 66856)
mileage2

#Combine both mileage
mileage3 <- c(mileage, mileage2)
mileage3

y <- diff(mileage3)
y

#################################################################
#Demo 3
#Combining objects with different types

both <- c("dog", 3, "cat", "mouse", 7, 12, 9, "chicken")
both
#Scalars are coersed (pushed) into being characters
class(both)

#a deliberate error
mean(both)


##################################################################
#Demo 4
#Construct the sequence 1-10 as a vector, using the colon operator
#Creating a Vector using the colon operator
series <- 1:10
series

#Making sure it is a vector
is.vector(series) #new function

##################################################################
#Demo 5
#Create a vector using the seq() function
#Using the sequence function to construct the vector 1 -10 
x <- seq(1,10)
is.vector(x)




#################################################################
#Demo 6 (rep function)
#Repetitions
? rep() #shows the syntax of the repetiton function
help("rep") #another way to access the R documents

#Examples
rep(3, times=5) #Repeat the number 3, 5 times
rep(x=3, times=5)
rep(1:4, 2)
rep(1:4, each = 2)
rep(1:4, each = 2, length = 4)


##################################################################
#Demo 7
#Sorting a vector using the sort function
Test_scores <- c(8,7,8,10,5) #Already created this vector
?sort()                      #Sort function syntax

sort(Test_scores, decreasing=FALSE) #increasing
sort(Test_scores)                   #increasing is default
sort(Test_scores, decreasing=TRUE)  #decreasing

any(Test_scores<7) #the 'any' function. Testing a logical condition
all(Test_scores<7) #the 'all' function. Testing a logical condition

##################################################################
#Demo 8
#Acessing Elements of a vector
x <- c(1,7,3,10,5)  #Construct required vector
x[4]                #Return the 4th element
x[-2]               #Return every element except the 2nd
x[2:4]              #Returns the 2nd, 3rd, and 4th

#The 'objects' command returns a listing of the obkects curently 
#in the Global Environment
objects()
















