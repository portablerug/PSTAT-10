#lab6????? not sure

#install MASS package 
library(MASS)

#will use 'painters' data frame
View(painters)
is.data.frame(painters)
ls(painters)
dim(painters)
?painters
#Analyze the 'painters' data frame
hist(painters$Composition, col = "yellowgreen")
head(painters)
summary(painters)
str(painters) #gives sumary of variables as we;
#-------------------------------------------------------------------------------
#find mean composition score of school C
painters$School == "C"
painters$Composition[painters$School == "C"]
mean(painters$Composition[painters$School == "C"])
mean(painters$Composition[17:22])

#-------------------------------------------------------------------------------
#find school with highest composition scores
max(painters$Composition)
hg_comp_scr <-  which(painters$Composition == max(painters$Composition))
painters$School[hg_comp_scr]

#-------------------------------------------------------------------------------
#Find percentage of painters whose color score is equal to or above 14
sum(painters$Colour >= 14)
n <- nrow(painters)
n #number of observations in data
round((sum(painters$Colour >= 14) /n)*100, 2)

#-------------------------------------------------------------------------------
#Construct a pie chart of the painters chools in the data set painters
painters$School
table(painters$School)
pie(table(painters$School), main = "Pie Chart of Painter Schools", 
    col = c("red", "blue", "green", "yellow",
    "white", "purple", "orange", "tan"))

#-------------------------------------------------------------------------------
#Instead of computing the mean composition score manually, for each school, use
#the tapply() function to compute them all at once. 
out <- tapply(painters$Composition, INDEX = painters$School, FUN = mean) 
out
#-------------------------------------------------------------------------------
#construct bar graph of the paintes schools in the data set
table(painters$School)
barplot(table(painters$School), main = "Barplot of Painter Schools", 
    col = c("beige", "cyan", "yellowgreen", "yellow",
    "white", "purple", "orange", "tan"))








