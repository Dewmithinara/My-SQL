select * from [dbo].[employee]

--Create a temporary table named #1 and copy all rows and columns from Employees into it

select * into #1  from dbo.employee    -- #1 is tempory table 

select * from #1

-- Change the Department to HR for all employees who currently have no department.

update #1
set Department = 'HR'
where Department is null


--For the employee with EmployeeID = 7, update the salary to 89,000 and the hire date to 01-01-2023.

update #1
set Salary = 89000.00 , HireDate = '2023-01-01'
where EmployeeId = 7

--Display the record of the employee whose EmployeeID is 7.

select * from #1
where EmployeeId = 7



--Create a temporary table named #2 and copy all rows and columns from the Employees table into it.

select * into #2 from dbo.employee   -- #2 is a tempory table

select * from #2


--Change the Department to Finance for every employee in #2

update #2
set Department = 'Finance'