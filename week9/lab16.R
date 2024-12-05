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
# a) Add the tuple ‘D4, COMPLAINTS, E3’ to the relation ‘DEPARTMENT’



# b)Create a new department relation, called NEW_DEPARTMENT that includes the tuple added
#   in a)


# c) Check that NEW_DEPARTMENT exists in your database


# d) Delete NEW_DEPARTMENT


# e) Check that NEW_DEPARTMENT has been deleted


#-----------------------------------------------------------------------------------------

