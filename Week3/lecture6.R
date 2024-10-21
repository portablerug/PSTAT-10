#Review of apply()
#Syntax: apply (x,margin, fun)
#x: is an array, margin indicatews the rows and/or columns over which
#the function(fun) will be applied
#fun: the function to be appleid across the elements of x

mtrx <- matrix((1:12), nrow=3)
print(apply(mtrx, 1, sum))

print(apply(mtrx, c(1,2), sum)) #applies to cells (rows and columns)
print(apply(mtrx, c(1,2), sqrt))

#--------------------------------------------------------------------------
#Demo 1
#a simple data frame
?data.frame

#construct 3 variables
d <- c(2,3,4,6)
e <- c("red", "white", "orange", "purple")
f<- c(TRUE, TRUE, TRUE, FALSE)

#construct a data frame named using 3 vectors
dtfrm <- data.frame(d,e,f)
is.data.frame(dtfrm)

#define row names
rwnms <- c("one", "two", "three", "four")

#add to data frame
dtfrm2 <- data.frame(d,e,f, row.names = rwnms)
dtfrm2

#select columns d and f only and name object df2
dtfrm2 <- dtfrm[, c("d", "f")]
dtfrm2

#select column e and name object df3
dtfrm3 <- dtfrm[,c(1,2)]
dtfrm3

#select row "one" and name df4
dtfrm4 <- dtfrm[c("one", "two"),]
dtfrm4

#--------------------------------------------------------------------
#Demo 2
#Iris Data set
data("iris")  #data set loaded
View(iris)    #view data set
is.data.frame(iris)
 

dim(iris)     #dimensions of iris
ls(iris)      #shows the names of objects in iris (variables)
names(iris)   #same thing

#--------------------------------------------------------------------
#Demo 3
# syntax subset(z, select=, drop = FALSE, ..)
#print first 5 rows of data
head(iris, n=5)    #first 5 
tail(iris, n=5)    #last 5

#Remove petal Width from iris
irisdta <- subset(iris, select = -Petal.Width)
head(irisdta, n=5)

#keep only PetalLength and Species
irisdta2 <- subset(iris, select= -c(Petal.Length, Species))
head(irisdta2, n=5)

#keep onyl PetalLength and Species
irisdta3 <- subset(iris, select = c(Petal.Length, Species))
head(irisdta3, n=5)

#removing (or keeping) columns 
irisdta4 <- subset(iris, select = -c(Sepal.Width:Species))    #Removes eveyrthing between ":"
head(irisdta4, n=5)

summary(iris)    #numeric summary
names(iris)

#Histogram of petal length. Note the use of $$$$$$$$$$
hist(iris$Petal.Length, col = "yellowgreen")

mean(iris$Petal.Length)
median(iris$Petal.Length)
sd(iris$Petal.Length)

#create side-by-side boxplots comparing
#petal length for each species
boxplot(Petal.Length~Species, data=iris,
        main = toupper("Petal.Length~to Species"), 
        col = "yellowgreen", xlab = "Species", ylab = "Petal.Length")


#--------------------------------------------------------------------
#Demo 4: Combine Example
#Create 3 vectors
fstnm <- c("Ann", "Paul", "Bob")
lstnm <- c("Smith", "Liu","Lopez")
dept <- c("Math", "Physics", "Biology")

# Combine into an R object
fact_prfl <- cbind(fstnm,lstnm,dept)
fact_prfl 

is.matrix(fact_prfl) #a matrix

#Create a data frame with similar columns
#Notice the use of " = " sign
nw_fact_prfl <- data.frame(fstnm = c("John", "Sara", "Jane"),
                           lstnm = c("Wu", "Brown", "Green" ),
                           dept = c("History", "CS", "PSTAT"))
nw_fact_prfl
is.data.frame(nw_fact_prfl) #TRUE


#join fact_prfl and nw_fact_prfl
all_fact_prfl <- cbind(fact_prfl, nw_fact_prfl)
all_fact_prfl
is.data.frame(all_fact_prfl) #data frame

#--------------------------------------------------------------------
#Demo 5
#Export all_fact_prfl to working dir as csv file
write.csv(all_fact_prfl, "All_Factulty_Profile.csv")
getwd()

#Import all_fact_prfl
read.csv("All_Factulty_Profile.csv")

#--------------------------------------------------------------------
#Demo 6
#Missing Values in data frame
miss_vl <- data.frame(x=c("PSTAT", 2, TRUE), y=c(5, NA, 8))
miss_vl

is.data.frame(miss_vl)
na.omit(miss_vl)

#--------------------------------------------------------------------
#Demo 7
#Old faithful Geyser Data
data("faithful")
is.data.frame(faithful)
head(faithful, n=10)

#two diff ways of producing the histogram
duration <- faithful$eruptions
hist(duration, col = 'yellowgreen')
hist(faithful$eruptions, col = 'yellowgreen')

#Improve the histogram 
#define color palette
color <- c("red", "orange", "purple", "blue", "green",
           "red", "orange", "purple")
hist(duration, col=color)

#Generate a stem and lef plot of the eruption durations
duration <- faithful$eruptions
stem(duration, scale=2)

#summary stats
summary(duration)
boxplot(duration, col = 'yellowgreen')

#--------------------------------------------------------------------
#Demo 8
#simple scatter-plot of petal length vs.petal width
#petal length is column 3, petal width is column 4
plot(iris[,3], iris[,4])

#better
plot(iris$Petal.Length, iris$Petal.Width,
     main = "edgar Anderson's iris Data")
#Choose 3 cols for 3 diff species, use pch, which means 'plot character'
#pch = 21 for filled circles, pch=22 for filled squares
plot(iris$Petal.Length, iris$Petal.Width,
     pch=21, bg=c("red", "yellowgreen", "orange"),
     main="Edgar Anderson's Iris Data")

#--------------------------------------------------------------------
#Demo 9
head(iris, n=10) #will shpw a few rows of the data set
cor(iris$Petal.Length, iris$Petal.Width) 
?cor()
cor(iris$Petal.Length, iris$Petal.Width)
#As petal length increases, petal width increases

#alternative way of producing a scatter-plot. data looks linear. positive slope
#next check for outliers no outliers

#fit a simple linear regression model using iris$Petal.Length as explanatory variable
#and score as the iris$Petal.Width
bstft<- lm(iris$Petal.Width~iris$Petal.Length, data=iris)
bstft









