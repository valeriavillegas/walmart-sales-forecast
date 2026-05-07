SELECT *
FROM walmart_sales
LIMIT 10;

SELECT COUNT(*)
FROM walmart_sales;

SELECT ROUND(SUM(weekly_sales),2) AS total_sales
FROM walmart_sales;

SELECT store,
       ROUND(SUM(weekly_sales),2) AS total_sales
FROM walmart_sales
GROUP BY store
ORDER BY total_sales DESC
LIMIT 10;

SELECT holiday_flag,
       ROUND(AVG(weekly_sales),2) AS avg_sales
FROM walmart_sales
GROUP BY holiday_flag;

SELECT date,
       ROUND(SUM(weekly_sales),2) AS total_sales
FROM walmart_sales
GROUP BY date
ORDER BY date;

SELECT ROUND(AVG(unemployment),2) AS avg_unemployment,
       ROUND(AVG(weekly_sales),2) AS avg_sales
FROM walmart_sales;

SELECT fuel_price,
       weekly_sales
FROM walmart_sales;