# Lab 14
# Connect to Db
library(DBI)
library(RSQLite)
PSTAT10db <- dbConnect(RSQLite::SQLite(), "PSTAT10-db.sqlite")
dbListTables(PSTAT10db)

# Read files
INVOICES <- read.csv("~/Documents/PSTAT10/PSTAT-10/week9/tinyclothes/INVOICES.txt")
PRODUCT <- read.csv("~/Documents/PSTAT10/PSTAT-10/week9/tinyclothes/PRODUCT.txt")
STOCK_TOTAL <- read.csv("~/Documents/PSTAT10/PSTAT-10/week9/tinyclothes/STOCK_TOTAL.txt")
SALES_ORDER <- read.csv("~/Documents/PSTAT10/PSTAT-10/week9/tinyclothes/SALES_ORDER.txt")
SALES_ORDER_LINE <- read.csv("~/Documents/PSTAT10/PSTAT-10/week9/tinyclothes/SALES_ORDER_LINE.txt")
EMPLOYEE_PHONE <- read.csv("~/Documents/PSTAT10/PSTAT-10/week9/tinyclothes/EMPLOYEE_PHONE.txt")

dbWriteTable(PSTAT10db, "INVOICES", INVOICES, overwrite=TRUE)
dbWriteTable(PSTAT10db, "PRODUCT", PRODUCT, overwrite=T)
dbWriteTable(PSTAT10db, "STOCK_TOTAL", STOCK_TOTAL, overwrite=T)
dbWriteTable(PSTAT10db, "SALES_ORDER", SALES_ORDER, overwrite=T)
dbWriteTable(PSTAT10db, "SALES_ORDER_LINE", SALES_ORDER_LINE, overwrite=T)
dbWriteTable(PSTAT10db, "EMPLOYEE_PHONE", EMPLOYEE_PHONE, overwrite=T)
#-----------------------------------------------------------------------------------------
# 1) Retrieve all distinct employee names of employees at 'Tiny Clothes'
#-----------------------------------------------------------------------------------------
dbGetQuery(PSTAT10db, "select distinct name from employee")

#-----------------------------------------------------------------------------------------
# 2) Find the name of all departments that begin with the letter 'S' and
#    contain the letter 'r'. Will the query give the same result if you use
#    'R' instead of 'r'?
#-----------------------------------------------------------------------------------------
dbGetQuery(PSTAT10db, "select *from department")

dbGetQuery(PSTAT10db, "select name from department 
                          where name like 'S%r' ")
dbGetQuery(PSTAT10db, "select name from department 
                          where name like 's%r'")
#-----------------------------------------------------------------------------------------
# 3) Does 'Tiny Clothes' sell white socks?
#-----------------------------------------------------------------------------------------
dbGetQuery(PSTAT10db, "select *from product")
dbGetQuery(PSTAT10db, "select *from product
           where name = 'SOCKS' and color = 'WHITE'")

#-----------------------------------------------------------------------------------------
# 4) How old is the employee named 'BROWN'?
#-----------------------------------------------------------------------------------------
dbGetQuery(PSTAT10db, "select *from employee")
dbGetQuery(PSTAT10db, "select *from employee
           where name = 'BROWN'")
#-----------------------------------------------------------------------------------------
# 5) Find the employee numbers of all employees who's name contains the letter 'R'?
#-----------------------------------------------------------------------------------------
dbGetQuery(PSTAT10db, "select *from employee")
dbGetQuery(PSTAT10db, "select emp_no, name from employee
           where name like '%r%'")
#-----------------------------------------------------------------------------------------
# 6) Find the name, age and employee numbers of all employees except those whose age is 21
#-----------------------------------------------------------------------------------------
dbGetQuery(PSTAT10db, "select *from employee")
dbGetQuery(PSTAT10db, "select emp_no, name from employee
            where age is not 21")
#-----------------------------------------------------------------------------------------
# 7) What are the names of the departments in 'Tiny Clothes'
#-----------------------------------------------------------------------------------------
dbGetQuery(PSTAT10db, "select name from department")

 








