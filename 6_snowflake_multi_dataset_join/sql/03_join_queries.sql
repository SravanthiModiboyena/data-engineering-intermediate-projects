
USE DATABASE ECOMMERCE_DB;

SELECT 
    o.order_id,
    c.customer_name,
    c.city,
    p.product_name,
    p.category,
    o.order_amount,
    o.order_date
FROM RAW.orders o
JOIN RAW.customers c
    ON o.customer_id = c.customer_id
JOIN RAW.products p
    ON o.product_id = p.product_id;

