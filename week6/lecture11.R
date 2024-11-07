# Lecture 11
#-------------------------------------------------------------------------------------------------------
# Demo 1: if, if...else

# Using 'if'. THe logical operator == tests a condition
# Returns TRUE or FALSE
x <-  3
x == 2

# ex
if(x==3){
  print("This is true", quote=FALSE)
}

if(x==2){
  print("This is true")  # does nothing
}

# '%in%' is a logical operator, used to determine if an element belongs
# to an R object
x <- c('hello')
if('hello'%in% x){
  print("goodbye")
}else{
  print("see you later")
}

# More examples. if and if...else
x <- 5

if(x >0){
  print("Positive number")
}else{
  print("Negative number")
}

y <-  -5
if(y>0){
  print("Positive number")
}else{
  print("Negative number")
}

#-------------------------------------------------------------------------------------------------------
# Demo 2
# ifelse(test expression, yes, no)
# test expression is an R obj that can be coerced to type logical
# yes returns values for TRUE elements
# no returns values for FALSE elements
x <- 1:10
ifelse(x<5 | x>8, x, 0) # Return 0 for elements of x that do not meet the condition

ifelse(x<3 | x>9, x, "MISSING")

x <- c(10:2)
ifelse(x==5 | x>8, x, "PSTAT")

#-------------------------------------------------------------------------------------------------------
# Demo 3
# Repeat loop
# Executres the same code repreatedly until stop condition
# == is logical operator used to compare if two things are exactly equal
# Returns TRUE or FALSE
x <-  1
repeat{
  print(x)
  x = x+1
  if(x ==8){
    break
  }
}
#-------------------------------------------------------------------------------------------------------
# Demo 4
# While Loop
# test expreession is evaulated. The loop is executed if the result is TRUE
# Write a while loop to print the numbers 1-5
i <- 1
while(i<6){
  print(i)
  i =i+1. # INCREMENT (i++)
}

# Write a while loop to cpmpute the squares of the numbers 1-6
i <- 1
while(i <=6){
  print(i*i)
  i = i+1
  
}

# Write a while loop to compute the squares of the numbers 2-4
i <- 2
while(i<=4){
  print(i*i)
  i = i+1
}
#-------------------------------------------------------------------------------------------------------
# Demo 5
# FOR LOOP: Count the even numbers in a vector
# USe the operator %% which returns the remainder or MODULUS
# Ex
y <- 10
y %% 3

# Count the even numbers in a vector
x <- c(6,5,3,9,8,11,6)
count <- 0    # Initialize count
for(i in x){        # 'i' denotes each element
  if(i %% 2 ==0)
    count <- count+1
}
print(count)  # Prints count after exiting the loop

# How many elements of x are even and odd
x <- c(6,5,3,9,8,11,6)
count1 <- 0
count2 <- 0
for(i in x){
  if(i %% 2 ==0)
    count1 <- count1+1
  else count2 <- count2 +1
}
print(count1)      # Prints after exiting the loop
print(count2)

#-------------------------------------------------------------------------------------------------------
# Demo 6
# Write a for loop that increases x by 2 and decerases y by 1, for each i
x <- 1
y <- 10
i <- c(1:5)
for(j in i){
  x <- x+2
  y <- y-1
}
x
y
#-------------------------------------------------------------------------------------------------------
# Demo 7
# Write a function to convert fahrenheit to centigrade

fahrenheit_2_cent <- function(temp_F){
  temp_C <- ((temp_F-32) * (5/9))
  return(temp_C)
}

# Invoke the function with 83 as the argument
fahrenheit_2_cent(82)
fahrenheit_2_cent(61)  
fahrenheit_2_cent(-20)  
fahrenheit_2_cent(456)
#-------------------------------------------------------------------------------------------------------
# Demo 8
# Create a function to print squares of numbers in sequence

myfnct <- function(a){
  for(i in 1:a){
    b <- i^2
    print(b)
  }
}
myfnct(4)
myfnct(-2)

#-------------------------------------------------------------------------------------------------------
# Demo 9
# Example: nested FOR LOOPS YAYYAYAYAYAYAYAYAYAYAYAYAYAYAYAYA
x <-  matrix(1:6, 2,3)

for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

# Example: using BREAK to exit a loop
for(i in 1:100){
  print(i)
 if(i>25){
  # STOP loop after 25 iterations
  break
 }
}  

# Example: Using BREAK to exit a loop
# applying the mean() function to all elements of a list
x <-  list(a=1:5, b=rnorm(10))
lapply(x,mean)

# Example: using R functions is a user-defined function
mean_median <- function(vector){
  mean <- mean(vector)
  median <- median(vector)
  return(c(mean, median))
}
print(mean_median(c(1,1,1,2,3)))

#-------------------------------------------------------------------------------------------------------








