select * from [dbo].[Sales]


--For each payment method, calculate the total money received from sales
select PaymentMethod, sum(TotalAmount) [Sum of Amount]
from [dbo].[Sales]
group by PaymentMethod


--For each product and payment method, calculate the total sales amount, and show the results sorted by ProductID
select ProductID,PaymentMethod, sum(TotalAmount) [Sum of Amount]
from [dbo].[Sales]
group by PaymentMethod,ProductID
order by ProductID
     

