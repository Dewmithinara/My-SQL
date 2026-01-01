 select * from [dbo].[EmployeeRecords]


 ----NOT----

-- getting all employees who are not named John and who do not earn 60,000

select * from [dbo].[EmployeeRecords]
where not FirstName = 'John' and not Salary = 60000


--getting employees whose last name is not Miller or whose department is not HR

select * from [dbo].[EmployeeRecords]
where not LastName = 'Miller' or not Department = 'HR'



----BETWEEN----

--getting all employees whose salary is between 75,000 and 85,000, including both 75,000 and 85,000
 

select * from [dbo].[EmployeeRecords]
where Salary between 75000.00 and 85000.00

--or

select * from [dbo].[EmployeeRecords]
where Salary >= 75000.00 and Salary <= 85000.00



--all employees whose salary is less than 75,000 or greater than 85,000
    --WHERE Salary NOT BETWEEN 75000 AND 85000 → salary is outside this range

select * from [dbo].[EmployeeRecords]
where Salary not between 75000.000 and 85000.00

--or

select * from [dbo].[EmployeeRecords]
where not Salary between 75000.00 and 85000.00


--getting all employees who work in the HR department or the IT department

select * from [dbo].[EmployeeRecords]
where Department = 'HR' or Department = 'IT'



----IN----


-- getting all employees whose department is either HR or IT

select * from [dbo].[EmployeeRecords]
where Department in ('HR' , 'IT')

--getting all employees whose department is NOT HR and NOT IT.

select * from [dbo].[EmployeeRecords]
where Department not in ('HR' , 'IT')

