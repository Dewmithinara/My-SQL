-- Create a temporary table named #3 and copy all rows and columns from the Employees table into it

select * into #3 from [dbo].[employee] -- #3 is tempory table

select * from #3  

-- Delete employees who don’t have a last name or whose department is 0

delete #3
where LastName = '' or Department = '0'


-- Create a temporary table named #4 and copy all rows and columns from the Employees table into it

select * into  #4 from [dbo].[employee]

select  * from #4

-- Remove every record from the temp table #4, but keep the table itself.

delete from #4

select * from #3

--delete all the records from the table but the structure of the table remains intact

truncate table #3


--all the records will be deleted plus table structure will also be removed

drop table #3



-- DELETE - delete certain records from the table

-- if we will use delete without where condition, all records from the table will be deleted, but the table structure remains intact

-- TRUNCATE - delete all the records from the table but the structure of the table remains intact

-- DROP - all the records will be deleted plus table structure will also be removed