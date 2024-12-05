# Lab 15
# Connect to Database
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

#------------------------------------------------------------------------------------
# 1) Using a suitable join, write code to join STOCK_TOTAL and INVOICES with the condition that  
#    the product numbers match
#-----------------------------------------------------------------------------------------
dbGetQuery(PSTAT10db, "select *from stock_total")
dbGetQuery(PSTAT10db, "select *from invoices")
dbGetQuery(PSTAT10db, "select * from stock_total st
           inner join invoices inv on st.prod_no = inv.prod_no")

# same thing
dbGetQuery(PSTAT10db, 'SELECT *FROM STOCK_TOTAL JOIN INVOICES 
           WHERE STOCK_TOTAL.PROD_NO = INVOICES.PROD_NO')

#-----------------------------------------------------------------------------------------
# 2) Retrieve the product names and product colors that have been ordered by ALEX or CAROL
#-----------------------------------------------------------------------------------------
dbGetQuery(PSTAT10db, 'SELECT *FROM PRODUCT')
dbGetQuery(PSTAT10db, "select *from customer")
dbGetQuery(PSTAT10db, "select *from sales_order")
dbGetQuery(PSTAT10db, "select *from sales_order_line")

dbGetQuery(PSTAT10db, "select c.name, p.name, p.color
           from customer c
           inner join sales_order so 
           on c.cust_no = so.cust_no
           inner join sales_order_line sol
           on so.order_no = sol.order_no
           inner join product p
           on sol.prod_no = p.prod_no
           where c.name in('ALEX' , 'CAROL')")


#-----------------------------------------------------------------------------------------
# 3) Retrieve the department number of the ACCOUNTS manager.
#-----------------------------------------------------------------------------------------
dbGetQuery(PSTAT10db, "select *from department")
dbGetQuery(PSTAT10db, "select dept_no, name
           from department 
           where name = 'Accounts'")

#-----------------------------------------------------------------------------------------
# 4) Write code to order SALES_ORDER_LINE as follows: 
#      PROD_NO  ORDER_NO  QUANTITY
#           p1        10         5
#           p1         9         5
#           p1         2        10
#      ...........................
#-----------------------------------------------------------------------------------------
dbGetQuery(PSTAT10db, "select *from sales_order_line")
dbGetQuery(PSTAT10db, "select prod_no, order_no, quantity
           from sales_order_line
           order by order_no desc")

dbDisconnect(PSTAT10db)

