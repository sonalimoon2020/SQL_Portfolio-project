CREATE DATABASE Properties;
USE PROPERTIES;

SELECT * FROM apartments_mumbai;

-- Q1. Retrieve the total number of apartments available ?

SELECT COUNT(ID) AS TOTAl_Flat FROM apartments_mumbai;

-- Q2 How many unique price of apartment we have ?

SELECT COUNT(distinct Price) AS Total_Flat from apartments_mumbai;

-- Q3 HOW many total developer we have ?

SELECT COUNT(distinct Developer) AS TOTAL_Developer from apartments_mumbai;

-- Q4 write a SQL query to retrieve all columns for Prcice is 6000000

SELECT * 
FROM apartments_mumbai 
WHERE PRICE = '6000000';

-- Q5 Write a SQL query to retrieve all 'price' where the Developer is 'Godrej Properties'.
SELECT Developer,
(PRICE) FROM apartments_mumbai 
WHERE Developer  = "Godrej Properties";

--  Q6 Write a SQL query to retrieve all 'price' where total count of 'Godrej Properties'.

SELECT Developer,
count(PRICE) FROM apartments_mumbai 
WHERE Developer  = "Godrej Properties";

-- Q7 Write Sql query to find total numbers of Project made by each Developer ?

SELECT Developer,
`Project Name`,
COUNT(*) AS Total_Project
FROM apartments_mumbai 
GROUP BY
Developer, 
`Project Name`
ORDER BY 1;

--  Q8 Write sql Query to find top 10 Project in Mumbai based on the higest price Project.

SELECT `Project Name`,
SUM(Price) AS Total_Price FROM apartments_mumbai
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10










