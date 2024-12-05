# Lab 16
# Connect to database
library(DBI)
library(RSQLite)
library(sqldf)
PSTAT10db <- dbConnect(RSQLite::SQLite(), "PSTAT10-db.sqlite")
dbListTables(PSTAT10db)

# Change directory
getwd()
setwd("/Users/eva-01/Documents/PSTAT10/PSTAT-10/week9/tinyclothes")

# Read files
INVOICES <- read.csv("~/Documents/PSTAT10/PSTAT-10/week9/tinyclothes/INVOICES.txt")
PRODUCT <- read.csv("~/Documents/PSTAT10/PSTAT-10/week9/tinyclothes/PRODUCT.txt")
STOCK_TOTAL <- read.csv("~/Documents/PSTAT10/PSTAT-10/week9/tinyclothes/STOCK_TOTAL.txt")
SALES_ORDER <- read.csv("~/Documents/PSTAT10/PSTAT-10/week9/tinyclothes/SALES_ORDER.txt")
SALES_ORDER_LINE <- read.csv("~/Documents/PSTAT10/PSTAT-10/week9/tinyclothes/SALES_ORDER_LINE.txt")
EMPLOYEE_PHONE <- read.csv("~/Documents/PSTAT10/PSTAT-10/week9/tinyclothes/EMPLOYEE_PHONE.txt")
# blah blah blah

dbWriteTable(PSTAT10db, "INVOICES", INVOICES, overwrite=TRUE)
dbWriteTable(PSTAT10db, "PRODUCT", PRODUCT, overwrite=T)
dbWriteTable(PSTAT10db, "STOCK TOTAL", STOCK_TOTAL, overwrite=T)
dbWriteTable(PSTAT10db, "SALES_ORDER", SALES_ORDER, overwrite=T)
dbWriteTable(PSTAT10db, "SALES_ORDER_LINE", SALES_ORDER_LINE, overwrite=T)
dbWriteTable(PSTAT10db, "EMPLOYEE_PHONE", EMPLOYEE_PHONE, overwrite=T)
#-----------------------------------------------------------------------------------------
# 1) 
PSTAT10db <- dbConnect(RSQLite::SQLite(), "PSTAT10-db.sqlite")
#-----------------------------------------------------------------------------------------
# a) Add the tuple ‘D4, COMPLAINTS, E3’ to the relation ‘DEPARTMENT’
dbSendStatement(PSTAT10db, "INSERT INTO DEPARTMENT
                VALUES ('D4', 'COMPLAINTS', 'E3')")
dbGetQuery(PSTAT10db, 'select *from department')

# b)Create a new department relation, called NEW_DEPARTMENT that includes the tuple added
#   in a)
NEW_DEPARTMENT <- dbGetQuery(PSTAT10db, 'select *from department')
NEW_DEPARTMENT
dbWriteTable(PSTAT10db, "NEW_DEPARTMENT", NEW_DEPARTMENT)

# c) Check that NEW_DEPARTMENT exists in your database
dbListTables(PSTAT10db)

# d) Delete NEW_DEPARTMENT
dbRemoveTable(PSTAT10db, "NEW_DEPARTMENT")

# e) Check that NEW_DEPARTMENT has been deleted
dbListTables(PSTAT10db)

#-----------------------------------------------------------------------------------------
# 2) Add the data set air quality to your database (find it in the datasets package)
library(airqualityES)
dbWriteTable(PSTAT10db,"airquality", airquality, overwrite=TRUE)
#-----------------------------------------------------------------------------------------
# a) Write SQL to return ozone in batches of 10
ozone_batches <- dbSendQuery(PSTAT10db, 'select Ozone from airquality')
# First 10 rows
dbFetch(ozone_batches, n=10)

# b) Run your code and check, by writing an SQL statement, that successive batches of 10 are being
#    returned.

# for the next 10 rows
dbFetch(ozone_batches, n =10)
# keeps track of how many batches of 10 I have RAN
dbGetRowCount(ozone_batches)

# c) Close database connection
dbListResults(PSTAT10db)    # Shows results from previous code
dbClearResult(ozone_batches) # When using dbSendQueries and store to R object
dbRemoveTable(PSTAT10db, 'airquality')
dbDisconnect(PSTAT10db)

#-----------------------------------------------------------------------------------------
# 3) Suppose a relation in a database named HealthCARE has been created with the following schema:
# DOCTOR (DOCTOR_ID, DOCTOR_NAME, HOSPITAL )

# Each Doctor may be employed by only one hospital.
# Attribute domains are:
#   DOCTOR_ID {1, 2, 3, ... , 1000}
# DOCTOR_NAME {a valid name for each doctor employed by one of the hospitals}
# HOSPITAL (SAVIOUR, LocalCare, SAINTS}
#-----------------------------------------------------------------------------------------
# a) A new doctor, Dr. Jones, has accepted an offer to join SAINTS hospital. Dr. Jones has been
#   assigned DOCTOR_ID 500. Write SQL code, on paper, that correctly adds Dr. Jones to the
#   DOCTOR relation.
#-----------------------------------------------------------------------------------------
# ON PAPER SHOULD EXPECT TO SEE SOMETHING LIKE THIS:::::::::::::;
dbSendStatement(db_name, "INSERT INTO DOCTOR
                VALUES ('500', 'Jones', 'SAINTS')")
# NOTE: cal also use dbExecute() to add tuples to a realtion
#-----------------------------------------------------------------------------------------


# b) The administration at SAVIOUR hospital reports to you that a new doctor, Dr. Liu, has accepted
#    an offer to join the hospital team and asks you to add Dr. Liu’s details to the HealthCARE
#    database. Explain why you cannot complete this task


