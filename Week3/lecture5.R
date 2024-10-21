#Lecture 5 Notes
#outline: apply() function
#logical values
#Factors
#Pre-defined constants

#Intro Demo: 
x <- c(1:9)
y <- c(1:12)
z <- c(1:15)

#Create a list
nw_lst <- list(x,y,z)

#use lapply() used on a list. Returns a list
lapply(nw_lst, sum)

#use sapply() on a list. Returns a vector of the data
sapply(nw_lst, sum)

#------------------------------------------------------------------
#Demo 1: Logical Values
data(state) #load 'state' data set
#Remove unwanted data sets
rm(state.center)
rm(state.division)
rm(state.region)
rm(state.x77)

is.vector(state.area)
state.area #area codes

#How many US states have ana rea less than 10 000 sq miles?
smlst <- state.area < 10000
smlst

sum(smlst) #8 small states
class(smlst)

#US states that have an area greater than 10 000 sq miles
lrgst <- state.area > 100000
lrgst
sum(lrgst) #8 large states

#------------------------------------------------------------------
#Demo 3: Logical Values
#How many US states have an area less than 10 000 square miles OR
# greater than 100 000 square miles?
smlst | lrgst #Using the OR operator
sum(smlst | lrgst)

#AND
sum(smlst & lrgst) #an impossibility
?sum()

#------------------------------------------------------------------
#Demo 3: which() returns index positions
state.name
which(state.name =="Alaska") #2nd in the list

x <- sort(state.area)
x
which (x>= 158693) # position in the vector
is.vector(state.area)

which(state.area==5009) #state.area, not sorted states in 'x'
#------------------------------------------------------------------
#Demo 4: FACTORS, tells R that there is a nominal
?factor()
#create a factor with elements
gndr <- factor(c("male", "female", "female", "male"))
gndr

#what are the levels?
levels(gndr)
#how many levels are there
nlevels(gndr)
#table returns a frequency table\
table(gndr)
#plot returns a bar chart
plot(gndr, col = "yellowgreen")

#------------------------------------------------------------------
#Demo 5: Ordinal Data
cls_grds <- factor(c("A", "B"))
cls_grds

nlevels(cls_grds)
is.factor(cls_grds)

cls_grds1 <- factor(c("B", "A"))
cls_grds1

#using ordered() to create a factor
cls_grds2 <- ordered(c("A", "B"))
cls_grds2
is.factor(cls_grds2)

cls_grds3 <- ordered(c("B", "A"))
cls_grds3
is.ordered(cls_grds3)

cls_grds4 <- ordered(c("B", "3", "A"))
cls_grds4
is.factor(cls_grds4)
#------------------------------------------------------------------
#Demo 6
#using sub() to replace the first match only in a string
#syntax sub(old,new,string)

y <- c("Hello, PSTAT 10")
y
sub("PSTAT 10", "MATH 8", y) #replace PASTAT 10 with MATH 8

#another ex
z <- c("Goodbye, goodbye and farewell, goodbye")
sub("goodbye", "so long", z) #replaces first one only
gsub("goodbye", "so long", z) #global substitution 

#Pre-defined constants in R
letters #lower-case letters
LETTERS #upper-case letters

month.abb #3-letter abbreviations
month.name #names in full
is.vector(letters)

#EX.
letters[1:4]
month.name[1:4]
month.abb[10:12]
which(LETTERS == "X") #X is position 24 in the alphabet
which(LETTERS >= "X") #greater than this position
#------------------------------------------------------------------
#Demo 7: A few extras
#Assignmnet operator: logical and global
x = 5 #assigns value 5 to x logically
x <- 5 #assings the value 5 to x globally
x == 5 # is x = 5?

#which()
z <- c(7,3,9,8)
which(z > 3)
which(z > 8)

#Assignment operator(local)
#delete x
rm(x)
mean(x = 1:10)
sum(x)
x #no longer here

#(global)
#delete x
rm(x)
mean(x<1:10)
sum(x)
x

#mode again. install statip
x <- c(10, 20, 30, 20, 20, 25, 29, 26)
mfv(x)

#install DescTools
Mode(x)

#note: mode() in lower-case
mode(x)




