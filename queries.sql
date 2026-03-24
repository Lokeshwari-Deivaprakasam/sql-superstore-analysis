-- 1. Total sales and total profit
SELECT
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM superstore;

-- 2. Sales by category
SELECT
    Category,
    SUM(Sales) AS total_sales
FROM superstore
GROUP BY Category
ORDER BY total_sales DESC;

-- 3. Profit by category
SELECT
    Category,
    SUM(Profit) AS total_profit
FROM superstore
GROUP BY Category
ORDER BY total_profit DESC;

-- 4. Profit by region
SELECT
    Region,
    SUM(Profit) AS total_profit
FROM superstore
GROUP BY Region
ORDER BY total_profit DESC;

-- 5. Profit by sub-category
SELECT
    "Sub-Category",
    SUM(Profit) AS total_profit
FROM superstore
GROUP BY "Sub-Category"
ORDER BY total_profit DESC;

-- 6. Loss-making sub-categories
SELECT
    "Sub-Category",
    SUM(Profit) AS total_profit
FROM superstore
GROUP BY "Sub-Category"
HAVING total_profit < 0
ORDER BY total_profit ASC;
