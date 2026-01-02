select * from [dbo].[employee]

--Insert a new employee with ID 9, named Jay, working in IT, salary 73,000, hired on 04-04-2022

insert into dbo.employee
values (9,'Jay','','IT',73000,'2024-04-04') --LastName → '' (empty string → no last name)


--Insert a new employee with ID 10, named Nitin Shamani, department 0, salary 54,000, hired on 22-02-2021

insert into [dbo].[employee]
values (10,'Nitin','Shamani','0',54000,'2021-02-22') --'0' is a string, not NULL


--Show all employees where the Department value is missing

select * from [dbo].[employee] 
where Department = null -- dose not show any outputs


-- CORRECT CODE

--employees who do not have a department assigned.
select * from [dbo].[employee]
where Department is NULL


--Display employees who have a department assigned.
select * from [dbo].[employee]
where Department is Not null

