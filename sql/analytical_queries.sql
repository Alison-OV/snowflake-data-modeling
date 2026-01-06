/* Sales by category and channel */
SELECT
    c.channel_name,
    p.category,
    SUM(f.total_amount) AS revenue
FROM fact_sales f
JOIN dim_channel c ON f.channel_key = c.channel_key
JOIN dim_product p ON f.product_key = p.product_key
GROUP BY c.channel_name, p.category
ORDER BY revenue DESC;


/* Performance premium brands */
SELECT
    b.brand_name,
    SUM(f.total_amount) AS revenue
FROM fact_sales f
JOIN dim_brand b ON f.brand_key = b.brand_key
WHERE b.is_premium = TRUE
GROUP BY b.brand_name
ORDER BY revenue DESC;


/* Customer loyalty */
SELECT
    loyalty_tier,
    COUNT(DISTINCT customer_key) AS customers,
    SUM(total_amount) AS revenue
FROM fact_sales f
JOIN dim_customer c ON f.customer_key = c.customer_key
GROUP BY loyalty_tier;
