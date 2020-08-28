Create table DimCustomer
(
CustomerID int not null auto_increment,
CustomerAltID varchar(10) not null,
CustomerName varchar(50),
Gender varchar(20),
primary key (CustomerID)
);

Create table DimProduct
(
ProductKey int ,
ProductAltKey varchar(10)not null,
ProductName varchar(100),
ProductActualCost decimal unsigned,
ProductSalesCost decimal unsigned,
primary key (ProductKey)

);

Create table DimStores
(
StoreID int not null auto_increment,
StoreAltID varchar(10)not null,
StoreName varchar(100),
StoreLocation varchar(100),
City varchar(100),
State varchar(100),
Country varchar(100),
primary key(StoreID)
);

Create table DimSalesPerson
(
SalesPersonID int not null auto_increment,
SalesPersonAltID varchar(10)not null,
SalesPersonName varchar(100),
StoreID int,
City varchar(100),
State varchar(100),
Country varchar(100),
primary key(SalesPersonID)
);

Insert into DimCustomer(CustomerAltID,CustomerName,Gender)values
('IMI-001','Henry Ford','M'),
('IMI-002','Bill Gates','M'),
('IMI-003','Muskan Shaikh','F'),
('IMI-004','Richard Thrubin','M'),
('IMI-005','Emma Wattson','F');

Insert into DimProduct
(ProductKey,ProductAltKey,ProductName, ProductActualCost, ProductSalesCost)values
(111,'ITM-001','Wheat Floor 1kg',5.50,6.50),
(222,'ITM-002','Rice Grains 1kg',22.50,24),
(333,'ITM-003','SunFlower Oil 1 ltr',42,43.5),
(444,'ITM-004','Nirma Soap',18,20),
(555,'ITM-005','Arial Washing Powder 1kg',135,139);

Insert into DimStores(StoreAltID,StoreName,StoreLocation,City,State,Country )values
('LOC-A1','X-Mart','S.P. RingRoad','Ahmedabad','Guj','India'),
('LOC-A2','X-Mart','Maninagar','Ahmedabad','Guj','India'),
('LOC-A3','X-Mart','Sivranjani','Ahmedabad','Guj','India');

Insert into DimSalesPerson(SalesPersonAltID,SalesPersonName,StoreID,City,State,Country )values
('SP-DMSPR1','Ashish',1,'Ahmedabad','Guj','India'),
('SP-DMSPR2','Ketan',1,'Ahmedabad','Guj','India'),
('SP-DMNGR1','Srinivas',2,'Ahmedabad','Guj','India'),
('SP-DMNGR2','Saad',2,'Ahmedabad','Guj','India'),
('SP-DMSVR1','Jasmin',3,'Ahmedabad','Guj','India'),
('SP-DMSVR2','Jacob',3,'Ahmedabad','Guj','India');
