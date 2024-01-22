use ImagePrintingDB
go

-- 1. We are trying to improve our service speed, please show me the average time it takes for orders to be fulfilled. We need to know the speed it takes with delivery and without delivery separately.
select c.WantsDelivery, DaysToCompleteOrder = avg(datediff(d, c.DateOrdered, c.DateFulfilled))
from Canvas c
group by c.WantsDelivery

-- 2. I need to keep track of how much revenue I make per month of each year. (Not Profit). It should be per month from the date ordered, as that is when we get paid.
select Month = month(c.DateOrdered), Profit = avg(c.TotalPrice)
from Canvas c
group by month(c.DateOrdered)

-- 3. I would like to know which customers were happy. Show me which customers came back more than once.
select c.FirstName, c.LastName
from Canvas c
group by c.FirstName, c.LastName
having count(c.CanvasId) > 1
