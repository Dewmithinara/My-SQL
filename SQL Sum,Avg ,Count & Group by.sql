select * from [dbo].[Sales]

--SUM--

--Add up all the values in the Quantity column of the Sales table.
select sum(Quantity) [Total Quantity] from [dbo].[Sales]

--Calculate the total number of items sold by adding up the Quantity from all rows in the Sales table
select sum (Quantity) [Total Qunatity],sum (TotalAmount) [Sum of Amount] 
from [dbo].[Sales]



--Average (AVG)--

--Find the average number of items sold per sale.
select avg(Quantity) [Average Quantity] from [dbo].[Sales]

--What is the average number of items sold and the average Totalamount?
select avg(Quantity) [Average Quantity] , avg(TotalAmount) [Average Total]
from [dbo].[Sales]


--Sum of Quantity, sum of totalamount, avg of quantity, avg of total amount for each distinct product
select ProductID,
sum(Quantity) [Total Qunatity],
sum(TotalAmount) [Sum of Amount],
avg(Quantity) [Average Quantity],
avg(TotalAmount) [Average Amount]
from [dbo].[Sales]
group by ProductID


----Sum of Quantity, sum of totalamount, avg of quantity, avg of total amount for each distinct product
select ProductID,StoreID,
sum(Quantity) [Total Qunatity],
sum(TotalAmount) [Sum of Amount],
avg(Quantity) [Average Quantity],
avg(TotalAmount) [Average Amount]
from [dbo].[Sales]
group by ProductID , StoreID



--COUNT---

select * from dbo.Sales

--Counts how many rows (records) are in the Sales table.
select count(*) [Number of rows] from [dbo].[Sales]


--Counts how many rows have a value in PaymentMethod
select count(PaymentMethod)[No of Recodes] from [dbo].[Sales]
--answer is 8 bcz 10 recodes 2 recodes are null values...


--Counts how many different products were sold. (Same ProductID repeated many times is counted once.)
--COUNT(DISTINCT column) → count unique values
select count(distinct ProductID) [Distinct ProductID] from [dbo].[Sales]


--For each payment method, show how many unique payment methods exist — basically 1 per method

select PaymentMethod, count(distinct PaymentMethod) [Distinct PayMode]
from [dbo].[Sales]
group by PaymentMethod


--Count how many sales were made using each payment method
select PaymentMethod , count(PaymentMethod) [Pay Mode] 
from [dbo].[Sales]
group by Paymentmethod


--For each payment method, count how many sales were made using it.
select PaymentMethod , count(*) [Pay Mode] 
from [dbo].[Sales]
group by Paymentmethod