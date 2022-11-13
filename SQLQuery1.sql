
--Task 1
create database Company

use Company

create table Employees(
	Id int identity primary key,
	Name nvarchar(100) Not Null,
	SurName nvarchar(100) Not Null,
	Position nvarchar(50) Not Null,
	Salary money
)

Select Max(Salary) From Employees

Select Min(Salary) From Employees

Select Avg(Salary) From Employees

Select * From Employees Where Salary >(Select Avg(Salary) from Employees )

----------------------------------------------------------------------------------------------------------------------------------------------------

--Task 2

create database Market

use Market

Create table Products(
	Id int identity primary key,
	Name nvarchar(100) Not Null,
	Price money
)

Alter Table Products Add Brand nvarchar(100) Not Null

Insert Into Products(Name, Price, Brand)
Values
('Drink',1,'Coca-Cola'),
('Drink',2,'Fanta'),
('Chocolate',3,'AlpenGold'),
('Coffee',10,'Jacobs'),
('Beer',4,'Corona'),
('Tea',12,'GreenField'),
('Milk',5,'Atena'),
('Chicken',8,'Meat'),
('Fish',11,'Meat'),
('Sausage',16,'Sab'),
('Cigarette',4,'Sobranie'),
('Energetic',1,'Hell')

Select * From Products Where Price <(Select Avg(Price) from Products )

Select * From Products Where Price >= 10

Select * From Products Where LEN(Brand) > 5 

----------------------------------------------------------------------------------------------------------------------------------------------------

--Task 3

Create database CodeAcademy

use CodeAcademy

Create table Departaments(
	Id int identity primary key,
	Name nvarchar(100) Not Null Check(Name > 2)
)

Create table Employees(
	Id int identity primary key,
	FullName nvarchar(100) Not Null Check(FullName > 3),
	Salary money Check(Salary > 0),
	DepartamentId int Not Null Foreign Key References Departaments(Id),
	Email nvarchar(100) Not Null Unique
)