# Lab 13
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

# Naming relations with "NAME U GIVE", from files
dbWriteTable(PSTAT10db, "INVOICES", INVOICES, overwrite=TRUE)
dbWriteTable(PSTAT10db, "PRODUCT", PRODUCT, overwrite=T)
dbWriteTable(PSTAT10db, "STOCK TOTAL", STOCK_TOTAL, overwrite=T)
dbWriteTable(PSTAT10db, "SALES_ORDER", SALES_ORDER, overwrite=T)
dbWriteTable(PSTAT10db, "SALES_ORDER_LINE", SALES_ORDER_LINE, overwrite=T)
dbWriteTable(PSTAT10db, "EMPLOYEE_PHONE", EMPLOYEE_PHONE, overwrite=T)


#----------------------------------------------------------------------------------------------------------
# 1) Write SQL code to list the relations in your database
#----------------------------------------------------------------------------------------------------------
dbListTables(PSTAT10db)

#----------------------------------------------------------------------------------------------------------
# 2) Write SQL code to return all the tuples in the realtion CUSTOMER
#----------------------------------------------------------------------------------------------------------
dbGetQuery(PSTAT10db, 'SELECT *FROM ')







