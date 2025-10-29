create database Sangeetha_mobiles;
Use Sangeetha_mobiles;

Create Table Products(
Product_id Int Primary Key,
Product_Name Varchar(100),
Amount decimal(10,2));

Insert into Products values
(1001, 'iPhone 15 Pro', 14899.00),
(1002, 'Samsung Galaxy S24', 17899.00),
(1003, 'OnePlus 12', 11899.00),
(1004, 'MacBook Air M3', 22299.00),
(1005, 'iPad Pro', 56999.00),
(1006, 'Apple Watch Ultra', 58799.00);

select  Product_id, Product_Name, Amount from Products
order by Amount desc
Limit 4;

Create Table Sale(
Sale_Date date,
Sale_id Int Primary Key,
Product_id Int,
Amount decimal(10,2));

insert into Sale values
('2025-10-01',1, 1001, 14899.00),
('2025-10-02', 2, 1002, 17899.00),
('2025-10-02', 3, 1003, 11899.00),
('2025-10-03', 4, 1004, 22299.00),
('2025-10-04', 5, 1005, 56999.00);

Select Count(*) AS Total_Sales from Sale;

Select sum(Amount) As Total_Revenue from Sale;

Select Avg(Amount) As Avg_SaleAmt from Sale;

Select MAX(Amount) As Max_saleAmt from Sale;

Select Min(Amount) As Min_SaleAmt From Sale;

Create Table Employees_Details(
Employee_id Int Primary Key,
Employee_Name Varchar(100),
Department_id Int);


Insert Into Employees_Details values
(1, 'Adam Smith', 101),
(2, 'Ralph spencer', 101),
(3, 'Ronaldo', 101),
(4, 'John Cena', 102),
(5, 'Mark Antony', 102),
(6, 'Alena Taylor', 101),
(7, 'Sophia Bell', 103),
(8, 'Ariel cruz', 101),
(9, 'James Camaroon', 101),
(10, 'Alex Clara', 101),
(11, 'Emma Dancy', 101),
(12, 'Ave Maria', 104);
select * from Employees_Details;
Select Department_id, Count(Employee_id) AS Total_employees from Employees_Details
group by Department_id having count(Employee_id)>10;
Select Department_id, Count(Employee_id) AS Total_employees from Employees_details
group by Department_id having count(Employee_id)<10;



