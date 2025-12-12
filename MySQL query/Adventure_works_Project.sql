create database adventureworks;
use adventureworks;

#0. Union of Fact Internet sales and Fact internet sales new
create table Sales as
select * from factinternetsales
union 
select * from fact_internet_sales_new;

select * from Sales;
select * from factinternetsales;
select * from fact_internet_sales_new;

#1.Lookup the productname from the Product sheet to Sales sheet.

select * from dimproduct;
select * from Sales;

select P.EnglishProductName,S.* from
dimproduct as P join Sales as S
on P.ProductKey=S.ProductKey;

#2.Lookup the Customerfullname from the Customer and Unit Price from Product sheet to Sales sheet.

select * from dimcustomer;
select * from Sales;
select * from dimproduct;

select concat(c.FirstName," ",c.MiddleName," ",c.LastName) as Fullname,
p.`Unit price`,s.* from
Sales as s Left join dimcustomer as c on s.CustomerKey=c.CustomerKey
left join dimproduct as p on s.ProductKey=p.ProductKey;
/*#3.calcuate the following fields from the Orderdatekey field ( First Create a Date Field from Orderdatekey)
   A.Year
   B.Monthno
   C.Monthfullname
   D.Quarter(Q1,Q2,Q3,Q4)
   E. YearMonth ( YYYY-MMM)
   F. Weekdayno
   G.Weekdayname
   H.FinancialMOnth
   I. Financial Quarter */
   
   select str_to_date(OrderDateKey,'%y%m%d') as OrderDate,
   year(str_to_date(OrderDateKey,'%y%m%d')) as year,
   month(str_to_date(OrderDateKey,'%y%m%d')) as month,
   monthname(str_to_date(OrderDateKey,'%y%m%d')) as monthfullname,
   concat('Q',"-",quarter(str_to_date(OrderDateKey,'%y%m%d'))) as Quarter,
   date_format(str_to_date(OrderDateKey,'%y%m%d'),'%y-%b') as yearmonth,
   dayofweek(str_to_date(OrderDateKey,'%y%m%d')) as weekdayno,
   date_format(str_to_date(OrderDateKey,'%y%m%d'),'%W') as weekdayname,
   case
   when month(str_to_date(OrderDateKey,'%y%m%d'))>=4
   then month(str_to_date(OrderDateKey,'%y%m%d'))-3
   else
   month(str_to_date(OrderDateKey,'%y%m%d'))+9 end as financialmonth,
   case
   when month(str_to_date(OrderDateKey,'%y%m%d')) between 4 and 6 then 'Q1'
   when month(str_to_date(OrderDateKey,'%y%m%d')) between 7 and 9 then 'Q2'
   when month(str_to_date(OrderDateKey,'%y%m%d')) between 10 and 12 then 'Q3'
   when month(str_to_date(OrderDateKey,'%y%m%d')) between 1 and 3 then 'Q4'
   end as financialquarter
   from Sales;
select * from Sales;
#4.Calculate the Sales amount uning the columns(unit price,order quantity,unit discount)

select UnitPrice,OrderQuantity,UnitPriceDiscountPct,
 (UnitPrice*OrderQuantity)*(1-UnitPriceDiscountPct) as salesamont from Sales;
 
 #5.Calculate the Productioncost uning the columns(unit cost ,order quantity)
 
 select ProductStandardCost,OrderQuantity,
 (ProductStandardCost*OrderQuantity) as Productioncost from Sales;
 
 #6.Calculate the profit.
 
 select 
 (UnitPrice*OrderQuantity)*(1-UnitPriceDiscountPct) -
 (ProductStandardCost*OrderQuantity) as Profit  from Sales;
 
 #7.Create  table for month and sales 
 
 select 
 month(str_to_date(OrderDateKey,'%Y%m%d')) monthno,
 date_format(str_to_date(OrderDateKey,'%Y%m%d'),'%b') as monthname,
 sum(SalesAmount) as totalSales from Sales
 group by monthno,monthname
 order by monthno;
 
 #8. Create table for year wise sales
 select 
 year(OrderDateKey) as SalesYear,
 sum(SalesAmount) as totalsales from Sales
 group by SalesYear
 order by SalesYear;
 
 #9.Quarter wise sales
 
 select
 concat('Q-',quarter(OrderDateKey)) as Quarter,
 sum(SalesAmount) as totalsales from Sales
 group by Quarter
 order by Quarter;
 
 
# 10.Comparision of Sales amount with Production cost 
 select P.EnglishProductName,(S.UnitPrice*S.OrderQuantity)*(1-S.UnitPriceDiscountPct) as salesamont,
 (S.ProductStandardCost*S.OrderQuantity) as Productioncost from
 dimproduct as P join Sales as S
 on P.ProductKey=S.ProductKey;
 
 