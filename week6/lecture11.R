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








