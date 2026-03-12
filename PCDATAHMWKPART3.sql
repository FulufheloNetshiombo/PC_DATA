-- 21. Calculate profit per Shop Name.
select shop_name, (sum(sale_price) - sum(cost_price)) as shopprofit from [PCDATA].[dbo].[pcdatainfo] group by Shop_Name
select * from [PCDATA].[dbo].[pcdatainfo]
-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
select * , ((sale_price - cost_price) *1.0 / sale_price) as profitmargin from [PCDATA].[dbo].[pcdatainfo]

-- 23. Determine which Continent has the highest total revenue.
select top 1 continent,sum(sale_price) as totalrevenue from [PCDATA].[dbo].[pcdatainfo] group by continent order by totalrevenue desc

-- 24. Calculate average Sale Price per RAM size.
select ram,avg(sale_price) as avgramsale from [PCDATA].[dbo].[pcdatainfo] group by ram

-- 25. Find the PC Model with the highest Sale Price.
select top 1 pc_model, sum(sale_price) as highsaleprice from [PCDATA].[dbo].[pcdatainfo] group by pc_model order by highsaleprice desc

-- 26. Calculate the average number of days between Purchase Date and Ship Date.
select avg(datediff(day,try_convert(date,purchase_date),try_convert(date,ship_date))) as avgshipdays from [PCDATA].[dbo].[pcdatainfo]

-- 27. Determine which Sales Person Department generates the highest revenue.
select top 1 sales_person_department, sum(sale_price) as revenue from [PCDATA].[dbo].[pcdatainfo] group by sales_person_department order by revenue desc

-- 28. Calculate total revenue per Storage Capacity.
select storage_capacity, sum(sale_price) as overallrevenue from [PCDATA].[dbo].[pcdatainfo] group by Storage_Capacity

-- 29. Identify sales where Sale Price is lower than PC Market Price.
select * from [PCDATA].[dbo].[pcdatainfo] where sale_price<PC_Market_Price

-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.
select sales_person_name, total_sales_per_employee, rank () over(order by total_sales_per_employee desc) as salesrank from [PCDATA].[dbo].[pcdatainfo] group by total_sales_per_employee,sales_person_name