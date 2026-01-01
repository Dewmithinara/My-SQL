-- grtting all employees, sorted by salary from lowest to highest.

select * from [dbo].[employee]
order by Salary

-- getting all employees, sorted by salary from highest to lowest

select * from [dbo].[employee]
order by Salary desc


--getting all employees ordered alphabetically by first name, and for people with the same first name, show the higher salary first

select * from [dbo].[employee]
order by FirstName asc , Salary desc


--getting all employees ordered alphabetically by department , and for people with the same first name, show the higher salary first

select * from [dbo].[employee]
order by Department asc , Salary desc
