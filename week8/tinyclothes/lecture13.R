# Lecture 13
# Have DBI, RSQLite, and sqldf installed
install.packages("DBI")
install.packages("RSQLite")
install.packages("sqldf")
# Create and connect to an new database
# SYNAX: mydb <- dbConnect(RSQLite::SQLite(), "NAMEOF-DB.sqlite")
# load libraries
library(DBI)
library(RSQLite)
library(sqldf)

PSTAT10db <- dbConnect(RSQLite::SQLite(), "PSTAT10-db.sqlite")

# Create a data frame from each item in tinyclothes.csv
getwd()
setwd("/Users/eva-01/Documents/PSTAT10/PSTAT-10/week7/tinyclothes")

CUSTOMER <- read.csv("CUSTOMER.txt")
DEPARTMENT <- read.csv("DEPARTMENT.txt")
EMPLOYEE <- read.csv("EMPLOYEE.txt")

# Write, overwrite or append a dataframe to a database relation
# Syntax: dbWriteTable(conn, dataframe name, realtion name, overwrite, append)
dbWriteTable(PSTAT10db, "DEPARTMENT", DEPARTMENT, overwrite=TRUE)
dbWriteTable(PSTAT10db, "CUSTOMER", CUSTOMER,overwrite=TRUE)
dbWriteTable(PSTAT10db, "EMPLOYEE", EMPLOYEE, overwrite=TRUE)

# Show the relation in the console
dbReadTable(PSTAT10db, "CUSTOMER")
dbReadTable(PSTAT10db, "EMPLOYEE")
dbListTables(PSTAT10db)       #Used to ignore MallocStackLogging

# Do not have to run for otheres
dbRemoveTable(PSTAT10db, "DEPARTMENT")  # just for illustration

#-------------------------------------------------------------------------------------------
# Demo 2
# select all tuples from a relation
dbGetQuery(PSTAT10db, 'SELECT * FROM EMPLOYEE')
dbGetQuery(PSTAT10db, 'SELECT * FROM DEPARTMENT')

# The results of the query is given as a data frame.
is.data.frame(DEPARTMENT)

#-------------------------------------------------------------------------------------------
# Demo 3
# We can add data frames from RStudion packs. to the database directly
dbWriteTable(PSTAT10db, "mtcars", mtcars, overwrite=TRUE)
dbWriteTable(PSTAT10db, "iris", iris, overwrite=TRUE)
dbListTables(PSTAT10db)

# mtcars is a data frame with 32 observations
# Select all attributes from mtcars but return only the first 5 tuples
dbGetQuery(PSTAT10db, 'SELECT * FROM mtcars LIMIT 5')

# Select wt with the condition that mpg > 30
dbGetQuery(PSTAT10db, 'SELECT wt FROM mtcars WHERE mpg >30')

# Select wt and mpg for cars with mpg > 30
dbGetQuery(PSTAT10db, 'SELECT wt, mpg FROM mtcars WHERE mpg >30')

#-------------------------------------------------------------------------------------------
# Demo 4
# cyl ----- refers to the number of cylinderse
dbGetQuery(PSTAT10db, 'SELECT cyl FROM mtcars')

# Find the number of cylinders cars in the survery have
# Do not return DUPES
dbGetQuery(PSTAT10db, 'SELECT DISTINCT cyl FROM mtcars')

# Find number of gears and corresponding # of cylinders
dbGetQuery(PSTAT10db, 'SELECT gear, cyl FROM mtcars')

# Same as top but NO DUPES
dbGetQuery(PSTAT10db, 'SELECT DISTINCT gear, cyl FROM mtcars')

#-------------------------------------------------------------------------------------------
# Demo 5
# WORKING WITH 'DISTINCT'
dbGetQuery(PSTAT10db, 'SELECT * FROM EMPLOYEE')
dbGetQuery(PSTAT10db, 'SELECT DISTINCT NAME FROM EMPLOYEE')
dbGetQuery(PSTAT10db, 'SELECT DISTINCT NAME, AGE, DEPT_NO FROM EMPLOYEE')
dbGetQuery(PSTAT10db, 'SELECT DISTINCT NAME, DEPT_NO FROM EMPLOYEE')

# following code returns an error
dbGetQuery(PSTAT10db, 'SELECT DISTINCT NAME, DISTINCT AGE, DEP_NO FROM EMPLOYEE')

#-------------------------------------------------------------------------------------------
# Demo 6
# A supervisor knows only that an employee is over 60 years of age
# and that his name begins with 'B'
# We are asked to find the employee's details, use will use the logical operator 'LIKE'

dbGetQuery(PSTAT10db, 'SELECT * FROM EMPLOYEE WHERE NAME LIKE "B%"')
dbGetQuery(PSTAT10db, 'SELECT NAME, AGE FROM EMPLOYEE WHERE NAME LIKE "%R%" AND AGE >60')
dbGetQuery(PSTAT10db, 'SELECT NAME, AGE, EMP_NO FROM EMPLOYEE WHERE NAME LIKE "%R%" AND AGE > 60')

# more examples
# '%' stands from any sequence of characters
# '_' stands for any single character

dbGetQuery(PSTAT10db, 'SELECT NAME, AGE FROM EMPLOYEE WHERE NAME LIKE "%R%"')
dbGetQuery(PSTAT10db, 'SELECT NAME, AGE FROM EMPLOYEE WHERE NAME LIKE "%N"')
dbGetQuery(PSTAT10db, 'SELECT NAME, AGE FROM EMPLOYEE WHERE NAME LIKE "_R_E%"')
dbGetQuery(PSTAT10db, 'SELECT NAME, AGE FROM EMPLOYEE WHERE NAME LIKE "_R_E%"')

# order of operations
dbGetQuery(PSTAT10db, 'SELECT * FROM EMPLOYEE')
dbGetQuery(PSTAT10db, 'SELECT * FROM EMPLOYEE WHERE NOT (NAME="SMITH") AND 
           (EMP_NO ="E1" OR EMP_NO ="E5")')

#-------------------------------------------------------------------------------------------
# Demo 7
# Retrieve the dtials of all employees whos age is between 21 and 31
dbGetQuery(PSTAT10db, 'SELECT * FROM EMPLOYEE WHERE (AGE BETWEEN 21 AND 31)')

# Retrieve the details of all employees whos age is not 21. Three equivalent queries.
dbGetQuery(PSTAT10db, 'SELECT * FROM EMPLOYEE WHERE (AGE !=21)')
dbGetQuery(PSTAT10db, "SELECT *FROM EMPLOYEE WHERE AGE !=21")
dbGetQuery(PSTAT10db, 'SELECT *FROM EMPLOYEE WHERE AGE !=21')

#-------------------------------------------------------------------------------------------
# Demo 8








