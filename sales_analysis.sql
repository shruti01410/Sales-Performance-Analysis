-- sales_analysis.sql
-- SQL queries for sales analysis

-- Monthly Revenue
SELECT
    strftime('%Y-%m', field2) AS month,
    SUM(field6) AS monthly_revenue
FROM sales
GROUP BY month
ORDER BY month;

-- Sales by Product Category
SELECT
    "Product Category" AS category,
    SUM("Total Amount") AS total_sales
FROM sales
GROUP BY "Product Category";
