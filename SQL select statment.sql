create database employee_details

-- create table--

create table employee (  
     EmployeeId int primary key,
	 FirstName varchar(50),
	 LastName varchar(50),
	 Department varchar(50),
	 Salary decimal (10 ,2),
	 HireDate date

);


-- insreting data--

insert into employee(EmployeeId,FirstName,LastName,Department,Salary,HireDate)
values
(1 , 'John','Deo', 'HR' ,50000.00, '2020-01-15'),
(2 , 'Jane','smith', 'Finance' ,60000.00, '2019-03-23'),
(3 , 'Alice','Johnson', 'IT' ,75000.00, '2021-07-10'),
(4 , 'Bob','Brown' ,'Marketing' ,5500.00, '2018-09-30'),
(5, 'Charli','Davis', 'IT' ,70000.00, '2022-02-02')



--Select--

select * from employee

select FirstName from employee

select FirstName , Salary from employee

select FirstName , LastName from employee

-- geting employee id and concat to firstname and lastname
select EmployeeId, concat(FirstName , '' , LastName) from employee

--add to column name for concat column
select EmployeeId, concat(FirstName , '' , LastName) [FullName] from employee

--or--
select EmployeeId, concat(FirstName , '' , LastName) as [FullName]from employee
 
