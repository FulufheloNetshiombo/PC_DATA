
     -- BASIC QUESTIONS

-- 1. Count the total number of sales records.
select count (*) as totalsales from [PCDATA].[dbo].[pcdatainfo]

-- 2. Count the number of sales per Continent.
select continent, count (*) as salescontinet from [PCDATA].[dbo].[pcdatainfo] group by Continent

-- 3. Count the number of sales per Country or State.
select country_or_state,count (*) as salescountryorstate from [PCDATA].[dbo].[pcdatainfo] group by country_or_state

-- 4. List all distinct Shop Name values.
select distinct shop_name from [PCDATA].[dbo].[pcdatainfo]

select * from [PCDATA].[dbo].[pcdatainfo]

-- 5. Find the average Sale Price.
select avg(sale_price) as avgsaleprice from [PCDATA].[dbo].[pcdatainfo]

-- 6. Find the highest and lowest Sale Price.
select max(sale_price) as highsaleprice, min(sale_price) as lowsaleprice from [PCDATA].[dbo].[pcdatainfo]

-- 7. Count the number of sales by Payment Method.+
select payment_method,count(*) asno_salesperpay from [PCDATA].[dbo].[pcdatainfo] group by Payment_Method

-- 8. Count the number of sales by Channel (Online vs Offline).
select channel,count(*) as salesbychannel from [PCDATA].[dbo].[pcdatainfo] group by Channel

-- 9. Count the number of sales by Priority level.
select priority,count (*) as salesbypriority from [PCDATA].[dbo].[pcdatainfo] group by Priority

-- 10. Count the number of distinct PC Make values.
select count(distinct pc_make ) as numberofpcmake from [PCDATA].[dbo].[pcdatainfo]
