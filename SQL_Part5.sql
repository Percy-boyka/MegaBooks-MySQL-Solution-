Use Master 
Go


Create Table Title
(Title_ID int identity (1,1) primary key,
Title_Description varchar(35) not null)

INSERT INTO Title VALUES ('Miss'),('Ms'),('Mr')

Create Table Customer
(Customer_ID int primary key,
Customer_FirstName varchar(35) not null,
Customer_MiddleName varchar(35) null,
Customer_LastName varchar(35) not null,
Customer_Email varchar(35) not null,
Title int references Title(Title_ID))

INSERT INTO Customer VALUES ('1211040065085', 'Percy',' ','Mahlaola','percymahlaola@gmail.com',3)

Create Table Employee
(Employee_ID int primary key,
Employee_FirstName varchar(35) not null,
Employee_Start_Date date not null,
Employee_LastName varchar(35) not null,
Title int references Title(Title_Id))

INSERT INTO Employee VALUES ('9230458956605', 'Cailin','05-01-2020 ','Smith',2)

Create Table Orders
(Order_ID int identity (1,1) primary key,
Order_Number char(13) not null,
Order_Date date not null,
Customer_ID int,
Constraint FK_CustomerOrder foreign key (Customer_ID)
References Customer(Customer_ID))

INSERT INTO Orders VALUES ('065085', '24','30-11-2020','1211040065085')

Create Table Orderline
(Orderline_ID int identity (1,1) primary key,
Order_ID int references Orders(Order_ID)
)

INSERT INTO Orderline VALUES ('016','065085')

Create Table Product
(Product_ID char(13) primary key,
Product_Name varchar(35) not null Constraint IXProduct_Name Unique,
Quantity_On_Hand varchar(35) null)

INSERT INTO Product VALUES ('123458','Monalisa','30')


Create Table Product_Type
(Product_Type_ID char(13) primary key,
Product_Type_Description varchar(35) null)

INSERT INTO Product_Type VALUES ('Notebook','Fifth edition')

Create Table Product_Price
(Product_Price_ID int identity(1,1) primary key,
Product_Price_Amount decimal(35) not null)

INSERT INTO Product_Price VALUES('4934','300.00')

Create Table Report
(Report_ID int identity primary key,
Report_Date Date not null)

INSERT INTO Report VALUES ('122','30-11-2020','Percy mahlaola','Notebook','Fifth edition','Monalisa','Cailin Smith','30-11-2020')
