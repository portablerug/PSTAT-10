# Lecture 14
# DBI, RSQLite and sqldf should be installed
# load libraries
library(DBI)
library(RSQLite)
library(sqldf)

# Connect to database
PSTAT10db <- dbConnect(RSQLite::SQLite(), "PSTAT10-db.sqlite")
dbListTables(PSTAT10db)

# change directory
getwd()
setwd("~/Documents/PSTAT10/PSTAT-10/week8/tinyclothes")

INVOICES <- read.csv("~/Documents/PSTAT10/PSTAT-10/week8/tinyclothes/INVOICES.txt")
PRODUCT <- read.csv("~/Documents/PSTAT10/PSTAT-10/week8/tinyclothes/PRODUCT.txt")
STOCK_TOTAL <- read.csv("~/Documents/PSTAT10/PSTAT-10/week8/tinyclothes/STOCK_TOTAL.txt")
SALES_ORDER <- read.csv("~/Documents/PSTAT10/PSTAT-10/week8/tinyclothes/SALES_ORDER.txt")
SALES_ORDER_LINE <- read.csv("~/Documents/PSTAT10/PSTAT-10/week8/tinyclothes/SALES_ORDER_LINE.txt")
EMPLOYEE_PHONE <- read.csv("~/Documents/PSTAT10/PSTAT-10/week8/tinyclothes/EMPLOYEE_PHONE.txt")
# blah blah blah

dbWriteTable(PSTAT10db, "INVOICES", INVOICES, overwrite=TRUE)
dbWriteTable(PSTAT10db, "PRODUCT", PRODUCT)
dbWriteTable(PSTAT10db, "STOCK TOTAL", STOCK_TOTAL)
dbWriteTable(PSTAT10db, "SALES_ORDER", SALES_ORDER)
dbWriteTable(PSTAT10db, "SALES_ORDER_LINE", SALES_ORDER_LINE)
dbWriteTable(PSTAT10db, "EMPLOYEE_PHONE", EMPLOYEE_PHONE)

dbGetQuery(PSTAT10db, 'SELECT *FROM DEPARTMENT')

# Does Tiny Clothes have any orders for products p1, p2 or p3? 
# Start by looking at SALES_ORDER_LINE
dbGetQuery(PSTAT10db, 'SELECT *FROM SALES_ORDER_LINE')

# Write a suitable WHERE condition
dbGetQuery(PSTAT10db, 'SELECT *FROM SALES_ORDER_LINE WHERE PROD_NO IN("p1", "p2", "p3")')

# If we decide not to include quantities, the code is: 
dbGetQuery(PSTAT10db, 'SELECT ORDER_NO, PROD_NO FROM SALES_ORDER_LINE
           WHERE PROD_NO IN ("p1", "p2", "p3")')

# Does Tiny Clothes have any orders for products OTHER THAN p1, p2, or p3????????
dbGetQuery(PSTAT10db, 'SELECT *FROM SALES_ORDER_LINE WHERE PROD_NO NOT IN ("p1", "p2", "p3")')

# Which orders are for product p1?
# Look at SALES_ORDER_LINE again (NEED TO KNOW YOUR DATABASE RELATIONS)
dbGetQuery(PSTAT10db, 'SELECT ORDER_NO FROM SALES_ORDER_LINE WHERE PROD_NO IN ("p1", "p2", "p3")
           AND (PROD_NO IS "p1")')

# Order number 1, 2, 9, and 10 are all of product 1

#----------------------------------------------------------------------------------------------------------
# Demo 2
# Which department is assigned to manager E3
# use = for 'IS'. Use the IS operator
dbGetQuery(PSTAT10db, 'SELECT *FROM DEPARTMENT WHERE MANAGER IS "E3"')

# USE OF QUOTES. be consistent and look out for ambiguity
# use double quotes for strings
# These two are acceptable
dbGetQuery(PSTAT10db, 'SELECT *FROM DEPARTMENT WHERE MANAGER IS "E3"')
dbGetQuery(PSTAT10db, "SELECT *FROM DEPARTMENT WHERE MANAGER IS 'E3'")

#These are not



