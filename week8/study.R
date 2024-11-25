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

m