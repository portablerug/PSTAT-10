#Worksheet 5
#Given the vector use which() to determine
#the index position of elements greater than 7
x <- c(3,7,7,8,9,10,1)

#which position returns the index position
which(x > 7)

#--------------------------------------------------------------------
#2) use sub() to replace 'B' in the string with A
#syntax sub(old,new,string)
stg <- "PSTAT 10, PSTAT 5LS, PSTAT 120B"

sub('B', 'A', 'PSTAT 120B')
#or
sub('B', 'A', stg)

#--------------------------------------------------------------------
#3) use pre-defined constants to return names of the months
#June, July, August
month.name
month.name[6:8]

#--------------------------------------------------------------------
#4) Factors
#a) Create vector consisting of B,B,D,E
vct <- c('B', 'B', 'D', 'E')
is.vector(vct)

#b)convert vector to a factor 
fct <- factor(vct)
is.factor(fct)

#c)show levels of this factor
levels(fct)

#d) change first level of factor to A 
?levels
levels(fct)[1] <- 'A'
levels(fct)

#change only first element (HAS TO REMAIN A VECTOR NOT A FACTOR)
vct[1] <- "A"
vct

#--------------------------------------------------------------------
#5) construct a pi chart
# Simple Pie Chart
deaths <- c(738, 538,158, 103, 93, 682, 2,312)
causes <- c("Heart diseases", "Cancer", "Stroke", "Pulmonary diseases", 
          "Accidents", "Others", "All causes")
pie(deaths, labels = causes, main="Deaths in 1995 and the cause of 
    death (in thousands)")

