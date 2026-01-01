--getting full record of the employee whose last name is Miller and whose EmployeeID is 3

select * from [dbo].[EmployeeRecords]
where LastName = 'Miller' and EmployeeID = 3

-- the employee whose last name is Miller and whose employee ID is 3
--Numbers → no quotes
--Text (string) → use quotes

select * from [dbo].[EmployeeRecords]
where LastName = 'Miller' and EmployeeID = '3'


-- getting all employees who work in the HR department or the Finance

select * from [dbo].[EmployeeRecords]
where Department = 'HR' or Department = 'Finance' 


--getting employees who work in HR or Finance and whose salary is 60,000

select * from [dbo].[EmployeeRecords]
where (Department = 'HR' or Department = 'Fnance') and Salary = 60000.00