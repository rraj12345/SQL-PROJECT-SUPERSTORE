create database superstore;
use superstore;
Select *  from supermarket_sales;

Select count(distinct Invoice_ID) FROM supermarket_sales; -- There are no duplicate values

Select * from supermarket_sales where Invoice_ID IS NULL  AND Branch IS NULL AND TOTAL IS NULL  AND RATING IS NULL ;
-- There are no NULL Values

ALTER TABLE supermarket_sales
ADD COLUMN full_date DATETIME;

SET SQL_SAFE_UPDATES = 0;


UPDATE supermarket_sales
SET full_date = STR_TO_DATE(CONCAT(Date, ' ', Time), '%m/%d/%Y %H:%i:%s');

ALTER TABLE supermarket_sales DROP Column Date;

ALTER TABLE supermarket_sales RENAME COLUMN full_date TO Date;          -- Dat is properly formatted

Select *  from supermarket_sales; 


Select Customer, sum(Total) as TotalPay
from supermarket_sales group by Customer order by TotalPay desc; 
-- -- Major Difference between Premium and Normal Customer in terms of  amount

Select Customer, count(Invoice_ID) as Total_Count 
from supermarket_sales group by Customer order by Total_Count desc; 
-- No Major Difference between Premium and Norma Customer in terms of order count

Select Customer, avg(Total) as AvgPay
from supermarket_sales group by Customer order by AvgPay desc; 
-- -- No Major Difference between Premium and Normal Customer in terms of  Avg amount

CREATE VIEW Date1 AS
SELECT 
    YEAR(Date) AS Year,
    MONTH(Date) AS Month,
    DAY(Date) AS Day,
    HOUR(Date) AS Hour,
    MINUTE(Date) AS Minute,
    Branch, City , Customer, Gender, Product_line, 
    Unit_price,Quantity, Total, Payment, cogs, gross_income, Rating
FROM 
    supermarket_Sales;



Select * from Date1;
Select year, sum(gross_income) from Date1 group by year order by year  desc;

Select month, sum(gross_income) from Date1 group by month order by month  desc;

Select day, sum(gross_income) from Date1 group by day order by sum(gross_income) desc;

Select hour, sum(gross_income) from Date1 group by hour order by sum(gross_income) desc;

Select * from supermarket_sales;

Select Product_line , sum(total) as "Total" , dense_rank() over( order by sum(total) desc) as "Rank" from
supermarket_sales group by Product_line ; 


Select Product_line , Round(avg(Quantity),2) as "Avg Quantity" 
from supermarket_sales group by Product_line order by Round(avg(Quantity),2) desc ;

Select Payment , Round(avg(Total),2) as "Total" 
from supermarket_sales group by Payment order by Round(avg(Total),2) desc ;


Select Payment , Round(avg(Rating),2) as "Total" 
from supermarket_sales group by Payment order by Round(avg(Rating),2) desc ;

Select * from supermarket_sales ; 

Select Branch , City , sum(Total) as "Total Revenue " from supermarket_sales
group by Branch , City order by sum(Total) desc ;

Select Branch , Max(Total) from supermarket_sales  group by Branch order by Max(Total) desc ;

Select Branch , Min(Total) from supermarket_sales  group by Branch order by Min(Total) desc ;

Select Customer, sum(Total) as sumPay
from supermarket_sales group by Customer order by sumPay desc; 

Select  Product_line , ((SUM(total) - SUM(cogs)) / SUM(total)) * 100 AS Profit_Percentage 
from supermarket_Sales group by Product_line order by Profit_Percentage desc ;

Select sum(gross_income) , sum(gross_margin_percentage) from supermarket_sales ; 

Select Product_line, Branch , avg(Rating) from supermarket_sales
group by Product_line , Branch Order by avg(Rating) desc;

Select * from supermarket_sales ;

SELECT
    CASE
        WHEN 	Rating >= 7 THEN 'High'
        WHEN Rating BETWEEN 4 AND 6 THEN 'Medium'
        ELSE 'Low'
    END AS satisfaction_level,
    AVG(Total) AS avg_revenue,
    AVG(Unit_Price) AS avg_unitprice,
    AVG(Quantity) AS avg_Quantity
FROM supermarket_sales
GROUP BY satisfaction_level
ORDER BY satisfaction_level DESC;
