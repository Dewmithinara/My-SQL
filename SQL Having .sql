select * from [dbo].[Sales]

--HAVING--

--For each product, calculate total sales, total quantity, average sale amount, and average quantity, but show only the products where:
--Total sales < 700 AND
--Total quantity = 21

select ProductID,
sum (TotalAmount) [Total Amount],
sum(Quantity)[Total Quantity],
avg (TotalAmount) [Average Amount],
avg (Quantity) [Average Quantity]
from [dbo].[Sales]
group by ProductID
having sum (TotalAmount) < 700 and sum(Quantity) = 21