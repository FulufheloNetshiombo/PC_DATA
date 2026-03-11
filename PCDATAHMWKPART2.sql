
     -- BASIC QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).
select sum(sale_price) as total_revenue from [PCDATA].[dbo].[pcdatainfo]

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).
select (sum(sale_price) - sum(cost_price)) as total_profit from [PCDATA].[dbo].[pcdatainfo]

-- 13. Find the average Discount Amount.
select avg (discount_amount) as avgdiscount from [PCDATA].[dbo].[pcdatainfo]

-- 14. Calculate total Finance Amount issued.
select sum(convert(bigint,Finance_Amount)) as totalfinance from [PCDATA].[dbo].[pcdatainfo]

-- 15. Find total revenue per PC Make.
select pc_make, sum(sale_price) from [PCDATA].[dbo].[pcdatainfo] group by pc_make

-- 16. Find average Sale Price per Storage Type.
select storage_type, avg(sale_price) as avgsales from [PCDATA].[dbo].[pcdatainfo] group by Storage_Type

-- 17. Calculate total revenue per Shop Name.
select shop_name, sum(sale_price) as totalrevenue from [PCDATA].[dbo].[pcdatainfo] group by shop_name

-- 18. Calculate total revenue per Sales Person Name.
select Sales_Person_Name, sum(sale_price) from [PCDATA].[dbo].[pcdatainfo] group by Sales_Person_Name

-- 19. Find average Credit Score per Payment Method.
select payment_method, avg(credit_score) as avgcreditscore from [PCDATA].[dbo].[pcdatainfo] group by payment_method

-- 20. Calculate total Cost of Repairs per Sales Person Department.
select sales_person_department, sum(convert(int,cost_of_repairs)) as totalcosts from [PCDATA].[dbo].[pcdatainfo] group by Sales_Person_Department

