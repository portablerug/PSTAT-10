# Lecture 15
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
dbWriteTable(PSTAT10db, "PRODUCT", PRODUCT)
dbWriteTable(PSTAT10db, "STOCK TOTAL", STOCK_TOTAL)
dbWriteTable(PSTAT10db, "SALES_ORDER", SALES_ORDER)
dbWriteTable(PSTAT10db, "SALES_ORDER_LINE", SALES_ORDER_LINE)
dbWriteTable(PSTAT10db, "EMPLOYEE_PHONE", EMPLOYEE_PHONE)

#-----------------------------------------------------------------------------------------
# Demo 1: Group By
# How many items are there in each order? Use INVOICES
dbGetQuery(PSTATdb, 'SELECT *FROM INVOICES')

# How many items are in each order?
dbGetQuery(PSTAT10db, 'SELECT ORDER_NO, SUM(QUANTITY) FROM INVOICES
           GROUP BY ORDER_NO')


