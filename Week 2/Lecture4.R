#Matrices and Vectors
#Demo 1
#Generate a 5 x 4 numeric matrix
y <- matrix(1:20, nrow=5, ncol=4, byrow=FALSE)
y

y[,3]         #3rd column of matrix
y[3,]         #3rd row of matrix
y[2:4,1:3]    #rows 2,3,4 of column 1,2,3
dim(y)        #the dimensions of a matrix. Row by Column

#------------------------------------------------------------
#Demo 2
#Construct a vector of the data to be used in the matrix
hec <- c(32,11,10,3,53,50,25,115,3,30,5,8)

#construct matrix
HairEyeColor <- matrix(hec, nrow=3, ncol=4,
                       byrow=TRUE) #Fill by row

HairEyeColor

#Add appropriate row names and column names
rnames <- c("Black Hair", "Brown Hair", "Blonde Hair")
cnames <- c("Brown Eyes", "Blue Eyes", "Hazel Eyes",
            "Green Eyes")

#Update matrix
HairEyeColor <- matrix(hec, nrow=3, ncol=4,
                       byrow=TRUE, dimnames=list(rnames,cnames))
                       
HairEyeColor
rowSums(HairEyeColor)

#Sum rows, sums columns
HairEyeColor <- addmargins(HairEyeColor)
HairEyeColor

#the apply() function
x <- apply (HairEyeColor, 1, sum) #sum the rows
x

y <- apply(HairEyeColor, c(1,2), sum) #rows and columns
y

#------------------------------------------------------------
#Demo 3: Modifying a Matrix
#Using rbind and cbind functions to create a matrix from three vectors
a<-c(1,2,4,5,6)
b<-c(3,2,4,1,9)
d<-c(7,5,5,6,4)

CC <- cbind(a,b,d) # Combine by column
CC
is.matrix(CC)

CR <- rbind(a,b,d) #Combine by row
CR
is.matrix(CR)

#Removing Matrix Elements
#Remove column 'a' from matrix named 'CC'
CC <- subset(CC, select=-a) #syntax:subset(x, select= )
CC

#Overwriting Matrix Elements
#Replace the first row of 'CC' with the sequence 1:2
CC[1,] <-1:2
CC

#Replace the second column of matrix CR with seq 4:6
CR[,2] <-4:6
CR

#------------------------------------------------------------
#Demo 4
#create an array 
vector <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
result <- array(c(vector, vector2), dim=c(3,3,2))
print(result)

#add names
column.names <- c("COL1", "COL2", "COL3")
row.names <- c("ROW1", "ROW2", "ROW3")
matrix.names <- c("Matrix1", "Matrix2")
result <- array(c(vector, vector2),
                dim = c(3,3,2), 
                dimnames = list(row.names, column.names, matrix.names))
print(result)

#------------------------------------------------------------
#Demo 5
#Calculations Across Arrays
aa <- c(2,3,4,6) #create vector
bb <- c(5,6,10,12,45) #create vector

new.array <- array(c(aa,bb), dim=c(3,3,2))
print(new.array)

#sum the rows
result <- apply(new.array, 1, sum) #Sum the rows in new.array
print(result)

#sum each of the cells
result <- apply(new.array, c(1,2), sum)
print(result)
#------------------------------------------------------------
#Demo 6: few more thoughts on matricies
#Create a vector using c() as usual
v <- c(0:10, 48)
class(v)

w <- as.integer(c(0:10, 48)) #ensure type integer
w
class(w)

#use the vector w to construct a 4x3 matrix 
nw_mtrx <- matrix(w,4) #data is the vector w. number of rows is 4
nw_mtrx

nw_mtrx2 <- matrix(w,4,3) #same result
nw_mtrx2

#change the column names to x,y,z; the row names to a-d
#and print the matrix, suing one line of code
colnames(nw_mtrx) <- c("x", "y", "z")
rownames(nw_mtrx) <- c("a|", "b|", "c|", "d|");
print(nw_mtrx)

#byrow is an option, or argument, in matrix(). the default is FALSE
#change to TRUE
nw_mtrx <- matrix(nw_mtrx, 4, byrow = TRUE)
print(nw_mtrx)
#------------------------------------------------------------
#Demo 7: Lists
?list()
#Create a list of the scalars 7,8,17
nw_lst <- list(7,8,17)

#is the R object nw_lst a list?
is.list(nw_lst)

#Find the length of the list
length(nw_lst)

#Member reference using SINGLE square bracket notation
#return the 2nd element of the list.  

nw_lst[2]
nw_lst[c(2,3)] #returns 2nd and 3rd elements

#Member reference using DOUBLE square brackt notation
#changing list elements
nw_lst[[2]]
nw_lst[[2]]+3

#NOTICE: nw_lst[2]+3 returns an error

#Add to an element in the list
nw_lst[[3]]      #references element 3 of nw_lst
nw_lst[[3]] <- paste(nw_lst[[3]], "MATH") #Adds math to element 3
nw_lst




