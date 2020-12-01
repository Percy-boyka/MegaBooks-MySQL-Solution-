Use Master
Go

Create Database MegaBooks
Go

Create Table Title
(Title_ID int identity (1,1) primary key,
Title_Description varchar(35) not null)

Create Table Customer
(Customer_ID int primary key,
Customer_FirstName varchar(35) not null,
Customer_MiddleName varchar(35) null,
Customer_LastName varchar(35) not null,
Customer_Email varchar(35) not null,
Title int references Title(Title_ID))

Create Table Employee
(Employee_ID int primary key,
Employee_FirstName varchar(35) not null,
Employee_MiddleName varchar(35) null,
Employee_LastName varchar(35) not null,
Title int references Title(Title_Id))

Create Table Orders
(Order_ID int identity (1,1) primary key,
Order_Number int identity not null,
Order_Date date not null,
Customer_ID int,
Constraint FK_CustomerOrder foreign key (Customer_ID)
References Customer(Customer_ID))

Create Table Orderline
(Orderline_ID int identity (1,1) primary key,
Order_ID int references Orders(Order_ID),
Quantity varchar(35) not null)

Create Table Product
(Product_ID char(13) primary key,
Product_Name varchar(35) not null Constraint IXProduct_Name Unique,
Quantity_On_Hand varchar(35) null)

Create Table Product_Type
(Product_Type_ID char(13) primary key,
Product_Type_Description varchar(35) null)

Create Table Product_Price
(Product_Price_ID int identity(1,1) primary key,
Product_Price_Amount decimal(35) not null)

Create Table Report
(Report_ID char(13) primary key,
Report_Date Date not null)

