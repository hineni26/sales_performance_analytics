-- Revenue by region
SELECT region,
       SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY region
ORDER BY total_revenue DESC;

-- Revenue by product category
SELECT product_category,
       SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY product_category
ORDER BY total_revenue DESC;

-- Monthly revenue trend
SELECT month,
       SUM(revenue) AS monthly_revenue
FROM sales_data
GROUP BY month
ORDER BY month;

-- Top 10 sales reps
SELECT sales_rep_id,
       SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY sales_rep_id
ORDER BY total_revenue DESC
LIMIT 10;