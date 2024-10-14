#Lecture 4
#Install statip
x <- c(10,20,30,20,20,25,29,26)
mfv(x) #most frequent value

#-----------------------------------------------------------
#Boxplot for a grouped data is a model formula given
#by y~x where y is a numeric vector which is grouped
#according to the value of x.
# ~ used to separate the left and right ahnd sieds in a
#model formula
#Demo 6 
mtcars #find in 'datasets'
boxplot(wt~cyl, data=mtcars,
        main=toupper("compare vehicle weight to number
                     of cylinders"), 
        xlab = "Number of Cylinders", ylab= "Weight",
        col = "orange")

#-----------------------------------------------------------
#DEMO 7
#charting qualitative data: Bar Chart
dogs <- c(1,4,6,10)
breed_name <- c("Alsatian", "Collie", "Pug", "Beagle")
barplot(dogs, names.arg=breed_name, xlab="BREED",
        ylab="Number of Dogs", col="purple",
        main="DOG CHART", boarder="BLACK")

#-----------------------------------------------------------
#Demo 8
?pie()
#charting qualitataive data; Pie Chart
x <- c(4,5,6,1,4)
labels <- c("Comedy", "Action", "Romance", "Drama", "SciFi")
pie(x, labels, radius=0.8, main="Movies",
    col = rainbow(length(x)), clockwise = TRUE)

#-----------------------------------------------------------
#Demo 9:Missign Values
#Missing values are denoted by NA. 
Test_Results <- c("Bob" = 8, "Alice" = 7, "Alex" = 8,
                  "Juan" = 10, "Amy" = 5)
mean(Test_Results)

#Add student Jim, who was excused during the test
Test_Results1 <- c("Bob" = 8, "Alice" = 7, "Alex" = 8,
                  "Juan" = 10, "Amy" = 5, "Jim" = NA)
mean(Test_Results1)

#ignore missing values from the mean
mean(Test_Results1, na.rm=TRUE)

#-----------------------------------------------------------
#Demo 10: Common Elements
#The intersect() function
x <- c(10, 20, 30, 20, 20, 25, 29, 26)
y <- c(10, 50, 30, 20, 20, 35, 19, 56)
z <- c(10, 40, 30, 20, 20, 25, 49, 26)

# Print Common elements from above vectors)
result <- intersect(x,y)
result

#Deliberate error
result2 <- intersect(x,y,z)
result3 <- intersect(intersect(x,y),z))
print(result)





