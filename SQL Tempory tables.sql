
--create tempory table--

select * into  #temp1
from [dbo].[employee]

select * from #temp1 

select * from dbo.employee

 select * into ##temp2
 from[dbo].[EmployeeRecords]

 select * from ##temp2

 select * from EmployeeRecords


 select * from #temp1
 select * from ##temp2

