SELECT 
    COUNT([Order_ID]) AS total_orders,
    ROUND(SUM(Amount), 2) AS total_revenue,
    ROUND(AVG(Amount), 2) AS avg_order_value
FROM amazon_cleaned;


SELECT Category, ROUND(SUM(Amount), 2) AS revenue
FROM amazon_cleaned
GROUP BY Category
ORDER BY revenue DESC;

SELECT TOP 10 ship_state, ROUND(SUM(Amount), 2) AS revenue
FROM amazon_cleaned
GROUP BY ship_state
ORDER BY revenue DESC;


SELECT 
    MONTH(Date) AS month_number,
    DATENAME(MONTH, Date) AS month_name,
    ROUND(SUM(Amount), 2) AS monthly_revenue
FROM amazon_cleaned
GROUP BY MONTH(Date), DATENAME(MONTH, Date)
ORDER BY month_number;


SELECT 
    MONTH(Date) AS month_number,
    DATENAME(MONTH, Date) AS month_name,
    ROUND(SUM(Amount), 2) AS monthly_revenue
FROM amazon_cleaned
GROUP BY MONTH(Date), DATENAME(MONTH, Date)
ORDER BY month_number;

SELECT 
    Status,
    COUNT(*) AS order_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM amazon_cleaned
GROUP BY Status
ORDER BY order_count DESC;

