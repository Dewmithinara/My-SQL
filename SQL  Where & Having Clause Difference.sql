-- Where & Having Clause Difference 


--Where
select * from [dbo].[Sales]
where TotalAmount >=161

--having

--For each product, calculate the total sales, but show only the products where the total sales is less than 700
select ProductID,
sum(TotalAmount) [Total Sales]
from [dbo].[Sales]
group by ProductID
having sum(TotalAmount)< 700


--Show products with total sales ≥ 250 considering only sales ≥ 161, sorted by ProductID from high to low
select ProductID,
sum(TotalAmount) [Sum of Amount]
from [dbo].[Sales]
where TotalAmount >=161
group by ProductID
having sum(TotalAmount) >= 250
order by ProductID desc



--For each product, add up the sales amounts only for sales that are 161 or more,then show only products whose total sales is 250 or more,and finally sort the result from lowest total sales to highest
select ProductID,
sum (TotalAmount) [Sum of Amount]
from [dbo].[Sales]
where TotalAmount >= 161
group by ProductID
having sum (TotalAmount) > = 250
order by sum (TotalAmount) asc