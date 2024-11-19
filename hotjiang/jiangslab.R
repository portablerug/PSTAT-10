#######################################

#  Lab 7 

#######################################

# clear environment 
rm(list=ls())

# load packages
library(tidyverse)

# change working directory 
getwd()
setwd("/Users/eva-01/Documents/PSTAT10/PSTAT-10/hotjiang")


# load data as a "tibble"

tibble = data("tidyverse")

read.csv("rugratrace.csv")

# create a tibble that is restricted to fathers, between age 25 and 34
# who have at least 1 child, using pipes and the filter function. 
# the variable father2 is equal to 1 for fathers.
# Additionally select the variables age, childtot, childeduc, childtravel, dataset, and college

# Add a variable named collegeprep = childeduc + childtravel to your dataset 

# By year, compute the average of total childcare hours 
# spent by fathers. Save the result in your environment 

# By year, compute the average of childcare hours in education
# spent by fathers. Save the result in your environment 


# Now compute the average of total hours spent on child care
# by fathers for each value of the variable college over time
# Save the result in your environment


# Discussion: Write a few sentences about trends 
# in the amount of time fathers spend with children, both
# in total and on college prep activities. Compare this with the 
# results we discussed in class concerning mothers

# Write your answer here: 

## In future classes, we are going to go into depth
# into the types of graphics that are available in R. 
# Go here (https://www.r-graph-gallery.com/line-chart-ggplot2.html)
# and try to figure out how we can use our saved object
# for average childcare by father over time to create a line chart
# that displays the results.

## Line plot
ggplot(XX, aes(x=XX, y=XX)) +
  geom_line() +
  ylab("Hours per Week on Childcare") + 
  xlab("Year")

###############
## Bonus if time: Make line plots for (1) child education over time
# and (2) child care by college education over time
##############










