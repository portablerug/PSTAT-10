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
PSTAT10db <- dbConnect(RSQLite::SQLite(), "PSTAT10-db.sqlite")
dbListTables(PSTAT10db)
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

dbIsValid(PSTAT10db)
#-----------------------------------------------------------------------------------------
# Demo 1: Group By
# How many items are there in each order? Use INVOICES
dbGetQuery(PSTAT10db, 'SELECT *FROM INVOICES') # Retrieves all rows and columns (*) in INVOICES

# How many items are in each order?
dbGetQuery(PSTAT10db, 'SELECT ORDER_NO, SUM(QUANTITY) FROM INVOICES
           GROUP BY ORDER_NO')

# Which ORDERS are invoiced for a quantity of 20 000 or more items?
dbGetQuery(PSTAT10db, 'SELECT ORDER_NO, SUM(QUANTITY) FROM INVOICES
           GROUP BY ORDER_NO
           HAVING SUM(QUANTITY)>20000')

#-----------------------------------------------------------------------------------------
# Demo 2: Ordering
# Select all from product and order by NAME
dbGetQuery(PSTAT10db, 'SELECT *FROM PRODUCT')
dbGetQuery(PSTAT10db, 'SELECT *FROM PRODUCT
           ORDER BY NAME')

# Attributes are referred to by their numerical position
dbGetQuery(PSTAT10db, 'select *from product')
dbGetQuery(PSTAT10db, 'select *from product order by prod_no desc')
dbGetQuery(PSTAT10db, 'select *from product order by 1 desc')

# Change the order in which the attributes are returned
# Ordering by first attribute
dbGetQuery(PSTAT10db, 'select *from product')
dbGetQuery(PSTAT10db, 'select name, prod_no, color from product order by
           1 desc')
#-----------------------------------------------------------------------------------------
# Demo 3
#-----------------------------------------------------------------------------------------
dbListTables(PSTAT10db)
# ORDER BY attribute that has the same value twice
dbGetQuery(PSTAT10db, 'select age, dept_no from EMPLOYEE')

# NOTICE: D1 occurs twice
# order by (COLUMN 2) descending. dept_no
dbGetQuery(PSTAT10db, 'select age, dept_no from employee order by 2 desc')

# Order both attributes
dbGetQuery(PSTAT10db, 'select age, dept_no from employee order by 2 desc, 1 desc')
#-----------------------------------------------------------------------------------------
# Demo 4 JOIN or INNER JOIN
#-----------------------------------------------------------------------------------------
# BOTH RELATIONS HAVE CUST_NO
dbGetQuery(PSTAT10db, 'select *from CUSTOMER')
dbGetQuery(PSTAT10db, 'select *from SALES_ORDER')

# Case 1: JOIN or INNER JOIN without conditions return a Cartesian product
dbGetQuery(PSTAT10db, 'select *from CUSTOMER join SALES_ORDER')
dbGetQuery(PSTAT10db, 'select *from CUSTOMER inner join SALES_ORDER')

# Case 2: WITH conditions
dbGetQuery(PSTAT10db, 'select *from CUSTOMER inner join SALES_ORDER
           where CUSTOMER.CUST_NO = SALES_ORDER.CUST_NO')
dbGetQuery(PSTAT10db, 'select *from CUSTOMER join SALES_ORDER
           where CUSTOMER.CUST_NO=SALES_ORDER.CUST_NO')

#-----------------------------------------------------------------------------------------
# Demo 5: Left Joins
#-----------------------------------------------------------------------------------------
dbGetQuery(PSTAT10db, 'select *from SALES_ORDER_LINE')
dbGetQuery(PSTAT10db, 'select *from PRODUCT')
dbGetQuery(PSTAT10db, 'select *from SALES_ORDER_LINE
           left join PRODUCT')
dbGetQuery(PSTAT10db, 'select *from SALES_ORDER_LINE
           left join PRODUCT where SALES_ORDER_LINE.PROD_NO = PRODUCT.PROD_NO')

# Order of relations matters
dbGetQuery(PSTAT10db, 'select *from PRODUCT left join SALES_ORDER_LINE 
           where SALES_ORDER_LINE.PROD_NO = PRODUCT.PROD_NO')
#-----------------------------------------------------------------------------------------
# Demo 5: Right Joins
#-----------------------------------------------------------------------------------------
dbGetQuery(PSTAT10db, 'select *from SALES_ORDER_LINE right join PRODUCT')
dbGetQuery(PSTAT10db, 'select *from SALES_ORDER_LINE right join PRODUCT
           where SALES_ORDER_LINE.PROD_NO = PRODUCT.PROD_NO')

dbGetQuery(PSTAT10db, 'select *from SALES_ORDER')
dbGetQuery(PSTAT10db, 'select *from INVOICES')
dbGetQuery(PSTAT10db, 'select INVOICES.QUANTITY,INVOICES.ORDER_NO, SALES_ORDER.DATE
           from INVOICES right join SALES_ORDER on SALES_ORDER.ORDER_NO = INVOICES.ORDER_NO')



