-- geting all the details of the employee whose ID is 2

select * from [dbo].[EmployeeRecords]
where EmployeeID = 2

-- geting employee id and first name  of the employee whose ID is 2

select EmployeeID,FirstName from [dbo].[EmployeeRecords]
where EmployeeID = 2

--getting all employee records whose salary is greater than or equal to 75,000

select * from [dbo].[EmployeeRecords]
where Salary>=75000.00

--getting firstname,lastname,department,and salary employee records whose salary is less than or equal to 75,000

select FirstName,LastName, Department,Salary
from [dbo].[EmployeeRecords]
where Salary <75000.00

--same employee details appear more than once in the table, duplicates will be removed.

select distinct FirstName,LastName, Department,Salary
from [dbo].[EmployeeRecords]
where Salary < 75000.00
