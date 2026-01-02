--INSERT INTO--

select * from [dbo].[employee]

--Insert a new employee with these details into the database

insert into [dbo].[employee] (EmployeeId,FirstName,LastName,Department,Salary,HireDate)
values(6,'Raj','Ambani','IT',67000,'2023-04-20')

INSERT INTO DBO.Employee (EmployeeId,FirstName,LastName)
VALUES(7,'Rohit','Mahera')

insert into [dbo].[employee]
values(8,'Mahesh','Narang','HR',73000,'2024-01-21')

SELECT * FROM DBO.Employee

--Display all column details of the Employees table.

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Employee'