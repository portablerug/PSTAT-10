#Find the dataset
data('CO2')

#dataset?
data
type
PlantGrowth

# Simple Pie Chart
slices <- c(738, 538,158, 103, 93, 682, 2,312)
lbls <- c("Heart diseases", "Cancer", "Stroke", "Pulmonary diseases", 
          "Accidents", "Others", "All causes")
pie(slices, labels = lbls, main="Deaths in 1995 and the cause of 
    death (in thousands)")


#Question 1
view(CO2)
hist(CO2$uptake, main ="Carbon Dioxide Uptake Rates", col = "orange", 
     xlab = "Uptake Rate")

#bimodal dist.


#-----------------------------------------------------------------
#Question 3
#(a)
?stem()

#--------------------------------------------------------------
#(b)
stem_data <- c(9,9,22,32,33,39,39,42,29,52,58,70)
stem(stem_data)

#change the scale 
stem(stem_data, scale = 2)
stem(stem_data, scale = 4)

#--------------------------------------------------------------
#(e)
#Stemplots allow to retriev our original data, but histograms
#only has counts/density in each bin and not actual data


#--------------------------------------------------------------
#Question 4
state.area

#Find area of smallest and largest state
min(state.area)
max(state.area)

#Find mean area of all states
mean(state.area)

#Median area
median(state.area)

#Difference between largest and smallest state
max(state.area) - min(state.area)

#or 
range(state.area) #gives smallest and largest
diff(range(state.area))

#--------------------------------------------------------------
#Question 5

vec <- c(2,3,3,3,4,2,5, NA, 10)
vec

#Find mean
mean(vec) #cannot give to you because of the character value
mean(vec, na.rm=TRUE) #removes the mean value
#--------------------------------------------------------------
vec2 <- c(2,3,3,3,4,2,5, 10)

table(vec2)

#Table length
table(vec2)[1:2]

#Second method
library(statip)
mfv(vec2)

library(dplyr)
unique(vec2)
distinct(vec2)
distinct(as.numeric(vec2))
