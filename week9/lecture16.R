# Lecture 16
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
# Demo 1 Create a new realtion from a query result
ALEX_PREFERENCES <- dbGetQuery(PSTAT10db, 'SELECT C.CUST_NO, C.NAME AS Customer_Name,
              P.NAME AS Product_Name, COLOR AS Required_Color
              FROM CUSTOMER C, SALES_ORDER_LINE O, SALES_ORDER S, PRODUCT P
              WHERE C.CUST_NO = "C1"
              AND C.CUST_NO = S.CUST_NO
              AND S.ORDER_NO = O.ORDER_NO
              AND O.PROD_NO = P.PROD_NO')

# is 
dbListTables(PSTAT10db)
# Is it a dataframe
is.data.frame(ALEX_PREFERENCES)





