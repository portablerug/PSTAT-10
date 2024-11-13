#Worksheet 11

# 1) For loop that iterates over the numbers 1 through 7 and prints the cube
#    of each number 
for(i in 1:7){
  print(i^3)
  #print(i**3)
}
#-------------------------------------------------------------------------------------------
# 2) Repeat loop: write a repeat() loop that breaks off the increment of i after 6 loops
#    and prints the vecotr x at every increment
x <- c("PSTAT")
i <- 1

repeat{
  print(x)
  print(i)
  i <- i+1
  if(i>6){
    break
  }
}
#-------------------------------------------------------------------------------------------
# 3) Write a Function that returns the cube of a number
cube <- function(a){
  i <- a^3
  return(i)
}
# test functions
cube(2)
cube(3)

#-------------------------------------------------------------------------------------------
# 4) WHILE LOOP: that prints the square of the odd numbers from 13 through 17
i <- 13
while(i <= 17){
  if(i%%2 != 0){
    print(i^2)
  }
  i <- i+1
}

#remainder
17 %% 5
17 %/% 5   
floor(17/5)  # The largest integer that is smaller than 17/5
ceiling(17/5) # The smallest ineger that is larger than 17/5







