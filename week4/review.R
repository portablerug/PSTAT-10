#ULA Review
#What type is this 
x <- c(TRUE, 7)
x
#Numeric type (TRUE = 1, FALSE=0)
is.numeric(x)

#turn it into an integer
x <- c(TRUE, 8L) #add L
is.integer(x)

#consider the follwing code
df <- data.frame(subject = c("English", "Math"),
                 percentage = c(80, 90))
df
#change name
colnames(df) <- c("Course", "Subject")
df
#same method
dimnames(df)[[2]] <- c("Course", "Subject")

HairEyeColor #an array

#method 1
apply(HairEyeColor, 'Eye', sum)[2] #correct

apply(HairEyeColor, 2, sum)

#Table
HairEyeColor[,"Blue",]
#takes away everyone with blue eyes and adds
#them all together
sum(HairEyeColor[,"Blue",]) 

#incorrect
sum(HairEyeColor[,"Blue",])[2]

#-----------------------------------------------------------
x <- c(77,44,78)
y <- c("Hamilton", "Barry", "Jes")
z <- list(x,y)

z
#pull out "Barry"
#single [] to containter
#double [] for element in container
z[[2]][2] 

#jes
z[[2]][3]

#first list
z[1]

#-----------------------------------------------------------
#print the table
a <- data.frame(v1=1:3, v2=LETTERS[1:3])
b <- data.frame(v1=6:8, v2=LETTERS[6:8])
m <- rbind(a,b)
m

#another way
x <- data.frame(v1=c(1:3, 6:8), v2=LETTERS[c(1:3, 6:8)])
x

#another way
k <- data.frame(v1=c(1:3, 6:8))
l <- data.frame(v2=LETTERS[c(1:3, 6:8)])
i <- cbind(k,l)
i
#-----------------------------------------------------------
vec2 <- c(2,3,3,3,4,2,5, 10)
table(vec2)

#Table length
table(vec2)[1:2]


values <- c(5, 10, 15, 20)
barplot(values, 
        names = c("A", "B", "C", "D"),   # Labels for bars
        col = c("red", "blue", "green", "purple"),  # Bar colors
        main = "Sales by Category",         # Title of the plot
        xlab = "Category",                  # X-axis label
        ylab = "Sales")                     # Y-axis label


values <- c(6, 10, 16.3, 20)
bp <- barplot(values, 
              names.arg = c("A", "B", "C", "D"),
              col = "lightgreen")

# Add labels on top of bars
text(bp, values, labels = values, pos = 3)


mat1 <- matrix(1:6, nrow = 2)
mat2 <- matrix(7:12, nrow = 2)

rbind(mat1, mat2)


a <- data.frame(v1=1:3, v2=LETTERS[1:3])
b <- data.frame(v1=6:8, v2=LETTERS[6:8])
m <- rbind(a, b)
m













