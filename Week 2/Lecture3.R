#Lecture 3 Descriptive Statistics

#Demo 1
#Load the dataset 'state'
data('state')

#Remove unwanted datasets
rm(state.center)
rm(state.division)
rm(state.region)
rm(state.x77)

#Is state.area a vector? 
is.vector(state.area)

state.name #Character vector of state names
class(state.name)
state.abb #Chatracter vector of 2-letter abbreviations of state names

#print 'state-area'
print(state.area)
class(state.area) #Numeric. Quantitative!!!!!!!!!!
############################################################################
#Demo 2
#Histogram
#Requires grapohics package

?histogram() #There is no function called 'histogram'

#A simple histogram
hist(state.area, col = 'orange') #a default histogram
?hist()

############################################################################
#Lecture 3
#a better lookign histogram
hist(state.area, breaks = "Sturges", col = "orange", 
     xlab = "State Areas (sq.miles)",
     main = paste("Histogram of State Areas"))

options(scipen = 999) #turns scientific notation off
options(scipen = 0) #turns it back on 

#Stemplots (can determine the data from which it was constructed
# can not do that from a histogram)
stem(state.area, scale=2)

# more info
?stem()

x <- c(12,15,24,29,30,31,52,58,60,63)
stem(x, scale=2)

y <- c(10,11,12,13,16,17,66,45,38,52,102,112,123)
y

# find the max and min
max(y)
min(y)

#max=123 and min = 10 so we need a stem that starts with 10 and ends at 120
stem(y, scale=1) #
stem(y, scale=2)
stem(y, stem=3)

############################################################################
#Demo 4
#install packages ("statip")
#library (statip)

y <- c(1,1,1,6,7,4)
#mfv()
range(y)
sd(y) #Standard Deviation

yy <- c(1,1,1,6,7,4,23)
sd(yy) #increases SD by adding 23

# quantiles 
df <- c(12,3,4,56,78,18,46,78,100)
quantile(df)
IQR(df) #Inter quartile range
summary(df) #Gives summary, minimum, max, 1st quartile, median, and the 3rd qrt
#Five number summary
fivenum(df)

#EXAMPLE



############################################################################
#Demo






