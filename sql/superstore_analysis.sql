-- 1 : Overall Business Performance
-- Understand total sales, profit, and order volume
SELECT 
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND(SUM(profit)/SUM(sales)*100,2) AS profit_margin
FROM fact_sales;
# Analyzed overall business performance including revenue, profitability, and order volume. 

-- 2 : Top 10 Products by Revenue
-- Identify best-performing products
SELECT 
    dp.product_name,
    ROUND(SUM(fs.sales),2) AS total_sales
FROM fact_sales fs
JOIN dim_product dp ON fs.product_id = dp.product_id
GROUP BY dp.product_name
ORDER BY total_sales DESC
LIMIT 10;
# Identified top-performing products contributing the highest revenue.

-- 3 : Category-wise Profitability
-- To check Which category is most profitable
SELECT 
    dp.category,
    ROUND(SUM(fs.sales),2) AS total_sales,
    ROUND(SUM(fs.profit),2) AS total_profit,
    ROUND(SUM(fs.profit)/SUM(fs.sales)*100,2) AS profit_margin
FROM fact_sales fs
JOIN dim_product dp ON fs.product_id = dp.product_id
GROUP BY dp.category
ORDER BY total_profit DESC;
# Evaluated category-wise profitability to identify high-margin segments.

-- 4 : Monthly Sales Trend (Seasonality)
-- Analyze sales trend over time 
SELECT 
    dc.customer_name,
    ROUND(SUM(fs.sales),2) AS total_sales
FROM fact_sales fs
JOIN dim_customer dc ON fs.customer_id = dc.customer_id
GROUP BY dc.customer_name
ORDER BY total_sales DESC
LIMIT 10;
# Identified seasonal trends and peak sales months.

-- 5 : Top Customers (Revenue Contribution)
-- Find high-value customers
SELECT 
    dc.customer_name,
    ROUND(SUM(fs.sales),2) AS total_sales
FROM fact_sales fs
JOIN dim_customer dc ON fs.customer_id = dc.customer_id
GROUP BY dc.customer_name
ORDER BY total_sales DESC
LIMIT 10;
# Identified top customers contributing significantly to revenue.

-- 6 : Customer Segmentation
-- Segment customers based on spending 
SELECT 
    customer_id,
    ROUND(SUM(sales),2) AS total_sales,
    CASE 
        WHEN SUM(sales) > 10000 THEN 'High Value'
        WHEN SUM(sales) > 5000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS segment
FROM fact_sales
GROUP BY customer_id;
# Segmented customers into high, medium, and low value for targeted strategies

-- 7 : Discount Impact on Profit
-- Check how discount affects profit 
SELECT 
    discount,
    ROUND(SUM(profit),2) AS total_profit
FROM fact_sales
GROUP BY discount
ORDER BY discount;
# Observed that higher discounts may reduce profitability

-- 8 : Delivery Performance
-- Measure delivery efficiency
SELECT 
    AVG(DATEDIFF(ship_date, order_date)) AS avg_delivery_days
FROM fact_sales;
# Measured average delivery time to evaluate operational efficiency

-- 9 : Running Sales Trend
-- Track cumulative growth
SELECT 
    order_date,
    ROUND(SUM(sales),2) AS daily_sales,
    ROUND(SUM(SUM(sales)) OVER (ORDER BY order_date),2) AS running_total
FROM fact_sales
GROUP BY order_date;
# Tracked cumulative revenue growth over time

-- 10 : Top Product per Category
-- Best product in each category
SELECT *
FROM (
    SELECT 
        dp.category,
        dp.product_name,
        ROUND(SUM(fs.sales),2) AS total_sales,
        RANK() OVER (PARTITION BY dp.category ORDER BY SUM(fs.sales) DESC) AS rnk
    FROM fact_sales fs
    JOIN dim_product dp ON fs.product_id = dp.product_id
    GROUP BY dp.category, dp.product_name
) t
WHERE rnk = 1;
# Identified top-performing product in each category. 

-- 11 : Top Customer with Ranking
-- Identify top customer 
WITH customer_sales AS (
    SELECT 
        customer_id,
        ROUND(SUM(sales),2) AS total_sales
    FROM fact_sales
    GROUP BY customer_id
)

SELECT 
    dc.customer_name,
    cs.total_sales,
    RANK() OVER (ORDER BY cs.total_sales DESC) AS rank_position
FROM customer_sales cs
JOIN dim_customer dc ON cs.customer_id = dc.customer_id;
# Identified top-performing customer

-- 12 : Sales By year 
-- dynamic filter of sales by year 
DELIMITER //

CREATE PROCEDURE GetSalesByYear(IN input_year INT)
BEGIN
    SELECT 
        YEAR(order_date) AS year,
        ROUND(SUM(sales),2) AS total_sales
    FROM fact_sales
    WHERE YEAR(order_date) = input_year
    GROUP BY YEAR(order_date);
END //

DELIMITER ;

CALL GetSalesByYear(2020);

# get sales by each year using function.