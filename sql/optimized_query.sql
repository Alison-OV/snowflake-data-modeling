SELECT
    d.year,
    p.category,
    SUM(f.total_amount) AS revenue
FROM fact_sales f
JOIN dim_date d ON f.date_key = d.date_key
JOIN dim_product p ON f.product_key = p.product_key
GROUP BY d.year, p.category
ORDER BY revenue DESC;
-- This query retrieves total revenue grouped by year and product category for optimized analytics.