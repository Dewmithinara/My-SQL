select * from  [dbo].[Sales]

-- Show the minimum quantity value from all sales records.

select min(Quantity) [Minimum Quantity] from [dbo].[Sales]

-- Show the oldest (minimum) sale date recorded in the Sales table.

select min (SaleDate) [Minimum Sales Date] from [dbo].[Sales]

-- Show the payment method that comes first in alphabetical order in the Sales table.

select min(Paymentmethod) [Minimum pay method] from [dbo].[Sales]


--Show minimum totalamount for each storeid

select StoreID,min(TotalAmount) [Minimum Total Amount] from [dbo].[Sales]
group by StoreID
